import 'dart:ui';

import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/BasBL.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/OperationBL.dart';
import 'package:simple_pay_api/src/Database/db.dart';
import 'package:simple_pay_api/src/Util/Format/NumberFormatUtil.dart';

import 'CommonUtil.dart';
import 'Log.dart';
import 'MonetaryCalculator.dart';
import 'StringUtils.dart';

class CultureManager {
  static const String TAG = "CultureManager";

  static final CultureManager _singleton = CultureManager._internal();

  factory CultureManager() => _singleton;

  CultureManager._internal() {
    _basBL = BasBL();
    _operationBL = OperationBL();
  }

  Locale? _locale;
  late String _language;
  late DateFormat _dateFormat;

  String? currencySymbol;

  late BasBL _basBL;
  late OperationBL _operationBL;

  /// Culture Info 초기화
  Future<void> initCulture() async {
    int currencyFractionDigits;
    int numberFractionDigits;
    int percentFractionDigits;
    int currencyRoundingMode = MonetaryCalculator.ROUND_HALF_UP;
    String? symbol;

    _language = await _operationBL.getLanguage();
    String currency = await _operationBL.getCurrency();
    BasicDataItem? cultureInfo = await _basBL.getCultureInfo();

    // 문화권 설정
    if (cultureInfo != null) {
      symbol = cultureInfo.getData4();
      numberFractionDigits = int.tryParse(cultureInfo.getData5() ?? '') ?? 0;
      percentFractionDigits = int.tryParse(cultureInfo.getData6() ?? '') ?? 0;
      currencyRoundingMode = int.tryParse(cultureInfo.getData9() ?? '') ??
          MonetaryCalculator.ROUND_HALF_UP;
    } else {
      symbol = "#";
      numberFractionDigits = 0;
      percentFractionDigits = 0;
      currencyRoundingMode = MonetaryCalculator.ROUND_HALF_UP;
    }

    switch (currency) {
      case 'KR':
        currencyFractionDigits = 0;
        break;
      case 'US':
      case 'RU':
      case 'KZ':
      default:
        currencyFractionDigits = 2;
        break;
    }

    MonetaryCalculator.scale = currencyFractionDigits;
    MonetaryCalculator.roundingMode = currencyRoundingMode;

    // Locale
    await initLocale();

    try {
      _dateFormat = DateFormat('"yy. M. d.', _locale!.languageCode);
    } on Exception {
      await initializeDateFormatting();
      _dateFormat = DateFormat('"yy. M. d.', _locale!.languageCode);
    }

    currencySymbol = symbol;

    Log.d(TAG, "locale_country ::: " + _language);
    Log.d(TAG, "locale_language ::: " + currency);
    Log.d(TAG, "language ::: " + _language);

    // 조회된 language 설정에 저장
    _operationBL.setCurrencySymbol(currencySymbol!);
  }

  /// Language Data Map 형태로 반환
  ///
  /// @return Language
  Future<Map<int?, String?>> getLangMapList() async {
    // language 설정 업데이트
    bool? showCode = await _operationBL.isShowCode();
    _language = await _operationBL.getLanguage();
    Map<int?, String?> langMap = Map<int?, String?>();

    for (I18NTerm item in await _basBL.getI18NTermList()) {
      String id = item.getI18nTermId()!;
      try {
        int? index = int.tryParse(id);
        if (index == null) {
          continue;
        }
        String? str;

        switch (_language) {
          case "ENG":
            str = StringUtils.defaultString(item.getEnglish());
            break;

          case "KAZ":
            str = StringUtils.defaultString(item.getKazakhstan());
            break;

          case "JPN":
            str = StringUtils.defaultString(item.getJapanese());
            break;

          case "CHI":
            str = StringUtils.defaultString(item.getChinese());
            break;

          case "GER":
            str = StringUtils.defaultString(item.getGerman());
            break;

          case "SPA":
            str = StringUtils.defaultString(item.getSpanish());
            break;

          case "POR":
            str = StringUtils.defaultString(item.getPortuguese());
            break;

          case "VIE":
            str = StringUtils.defaultString(item.getVietnameInDbse());
            break;

          case "FRA":
            str = StringUtils.defaultString(item.getFrench());
            break;

          case "RUS":
            str = StringUtils.defaultString(item.getRussian());
            break;

          case "ARA":
            str = StringUtils.defaultString(item.getArabic());
            break;

          case "THA":
            str = StringUtils.defaultString(item.getThai());
            break;

          case "KOR":
          default:
            str = StringUtils.defaultString(item.getKorean());
            break;
        }

        if (showCode!) {
          str = "[$id]$str";
        }

        langMap[index] = str;
      } catch (e) {}
    }

    return langMap;
  }

  Future<Map<int, String?>> getReceiptLangMapList() async {
    // language 설정 업데이트
    String receiptLang = await _operationBL.getReceiptLanguage();
    return await _basBL.getI18NTermSparseArrayForApp(receiptLang);
  }

  /// 입력된 값을 해당 문화권의 Currency Format String 으로 변환
  ///
  /// @param value data value
  /// @return CurrencyFormat String
  String currencyFormat(double? value) {
    if (value == null) {
      value = 0;
    }
    if (value < 0) {
      return "-" + CurrencyFormatter.simpleCurrency.format(value.abs());
    } else {
      return CurrencyFormatter.simpleCurrency.format(value);
    }
  }

  /// Currency Format String 을 double 로 변환 (사용주의: _currencyFormat 으로 생성된 String Argument 여야 함, 즉 패턴이 맞아야 함)
  /// @param value
  /// @return
  double currencyFormatToDouble(String value) {
    Log.d(TAG, "currencyFormatToDouble ; " + value);
    try {
      if (CommonUtil.isNullEmpty(value)) return 0;

      return CurrencyFormatter.simpleCurrency.parse(value).toDouble();
    } catch (e) {
      print(e.toString());
      try {
        return double.parse(value);
      } catch (e) {
        print(e.toString());
        return 0;
      }
    }
  }

  /// 입력된 날짜 데이터를 문화권에 맞는 날짜 형식문자열로 반환
  ///
  /// @param date date value
  /// @return Locale DateFormat String
  String dateToLocaleFormatString(DateTime date) {
    return _dateFormat.format(date);
  }

  /// 입력된 날짜 데이터를 문화권에 맞는 날짜 형식문자열로 반환
  ///
  /// @param date           date value
  /// @param dateFormatType 날짜 기본정의포맷
  /// @param timeFormatType 시간 기본정의포맷
  /// @return Locale DateFormat String
  String datetimeToLocaleFormatString(
      DateTime date, int dateFormatType, int timeFormatType) {
    // use (1,2) (2,2)
    DateFormat dateFormat;
    if (dateFormatType == 1 && timeFormatType == 2) {
      dateFormat = DateFormat('yyyy/MM/dd HH:mm:ss aaa', _locale!.languageCode);
    } else if (dateFormatType == 2 && timeFormatType == 2) {
      dateFormat = DateFormat('yy/MM/dd HH:mm:ss aaa', _locale!.languageCode);
    } else {
      dateFormat = DateFormat('yy/MM/dd HH:mm:ss', _locale!.languageCode);
    }
    return dateFormat.format(date);
  }

  Future<void> initLocale() async {
    String country = await _operationBL.getCurrency();
    String language;
    switch (country) {
      case "US": //미국
        language = "ENG";
        break;
      case "KR": //한국
        language = "KOR";
        break;
      case "JP": //일본
        language = "JPN";
        break;
      case "CN": //중국
        language = "CHI";
        break;
      case "DE": //독일
        language = "GER";
        break;
      case "ES": //스페인
        language = "SPA";
        break;
      case "PT": //포루투갈
        language = "POR";
        break;
      case "VN": //베트남
        language = "VIE";
        break;
      case "FR": //프랑스
        language = "FRA";
        break;
      case "RU": //러시아
        language = "RUS";
        break;
      case "AE": //아랍에미리트
        language = "ARA";
        break;
      case "TH": //타이
        language = "THA";
        break;
      case "KZ": //카자흐스탄
        language = "KAZ";
        break;
      default:
        language = "KOR";
        break;
    }

    _locale = Locale(language, country);
    Log.i(TAG, "Locale Language = " + language + ", Country = " + country);
    Log.i(TAG, "Locale = " + _locale.toString());
  }

  Locale? getLocale() {
    return _locale;
  }

  void saveSetting() {
    //nothing
  }

  //Format 17.07.17.09:45:17
  String convertDateForm(DateTime dateString) {
    if (dateString == null) return "";
    // SimpleDateFormat timeFormat = SimpleDateFormat("HH:mm:ss", Locale.US);
    return dateToLocaleFormatString(dateString) +
        " " +
        DateFormat("HH:mm:ss").format(dateString);
  }
}
