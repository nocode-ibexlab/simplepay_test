import 'package:floor/floor.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "BA1_I18N_TER")
class I18NTerm {
  @primaryKey
  @ColumnInfo(name: "I18N_TER_ID")
  String? i18nTermId;

  @ColumnInfo(name: "USR_INPT")
  String? userInput;

  @ColumnInfo(name: "ENG")
  String? english;

  @ColumnInfo(name: "KOR")
  String? korean;

  @ColumnInfo(name: "JAP")
  String? japanese;

  @ColumnInfo(name: "CHI")
  String? chinese;

  @ColumnInfo(name: "GER")
  String? german;

  @ColumnInfo(name: "SPA")
  String? spanish;

  @ColumnInfo(name: "POR")
  String? portuguese;

  @ColumnInfo(name: "VIE")
  String? vietnamese;

  @ColumnInfo(name: "FRE")
  String? french;

  @ColumnInfo(name: "RUS")
  String? russian;

  @ColumnInfo(name: "ARA")
  String? arabic;

  @ColumnInfo(name: "THI")
  String? thai;

  @ColumnInfo(name: "KAZ")
  String? kazakhstan;

  @ColumnInfo(name: "FRST_REGST_ID")
  String? firstRegistrantId;

  @ColumnInfo(name: "FRST_REG_DTTM")
  String? firstRegistrationDatetime;

  @ColumnInfo(name: "LAST_REVSR_ID")
  String? lastReviserId;

  @ColumnInfo(name: "LAST_REV_DTTM")
  String? lastRevisionDatetime;

  @ColumnInfo(name: "STAT_CD")
  String? stateCode;

  //todo @Generated(hash = 152324021)
  // I18NTerm() {
  // }

  //todo @Generated(hash = 1349799677)
  I18NTerm(
      {String? i18nTermId,
      String? userInput,
      String? english,
      String? korean,
      String? japanese,
      String? chinese,
      String? german,
      String? spanish,
      String? portuguese,
      String? vietnamese,
      String? french,
      String? russian,
      String? arabic,
      String? thai,
      String? kazakhstan,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.i18nTermId = i18nTermId;
    this.userInput = userInput;
    this.english = english;
    this.korean = korean;
    this.japanese = japanese;
    this.chinese = chinese;
    this.german = german;
    this.spanish = spanish;
    this.portuguese = portuguese;
    this.vietnamese = vietnamese;
    this.french = french;
    this.russian = russian;
    this.arabic = arabic;
    this.thai = thai;
    this.kazakhstan = kazakhstan;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

  String? getI18nTermId() {
    return i18nTermId;
  }

  void setI18nTermId(String langId) {
    this.i18nTermId = langId;
  }

  String? getUserInput() {
    return userInput;
  }

  void setUserInput(String userInput) {
    this.userInput = userInput;
  }

  String? getEnglish() {
    return english;
  }

  void setEnglish(String english) {
    this.english = english;
  }

  String? getKorean() {
    return korean;
  }

  void setKorean(String korean) {
    this.korean = korean;
  }

  String? getJapanese() {
    return japanese;
  }

  void setJapanese(String japanese) {
    this.japanese = japanese;
  }

  String? getChinese() {
    return chinese;
  }

  void setChinese(String chinese) {
    this.chinese = chinese;
  }

  String? getGerman() {
    return german;
  }

  void setGerman(String german) {
    this.german = german;
  }

  String? getSpanish() {
    return spanish;
  }

  void setSpanish(String spanish) {
    this.spanish = spanish;
  }

  String? getPortuguese() {
    return portuguese;
  }

  void setPortuguese(String portuguese) {
    this.portuguese = portuguese;
  }

  String? getVietnameInDbse() {
    return vietnamese;
  }

  void setVietnameInDbse(String vietnameInDbse) {
    this.vietnamese = vietnameInDbse;
  }

  String? getFrench() {
    return french;
  }

  void setFrench(String french) {
    this.french = french;
  }

  String? getRussian() {
    return russian;
  }

  void setRussian(String russian) {
    this.russian = russian;
  }

  String? getArabic() {
    return arabic;
  }

  void setArabic(String arabic) {
    this.arabic = arabic;
  }

  String? getThai() {
    return thai;
  }

  void setThai(String thai) {
    this.thai = thai;
  }

  String? getKazakhstan() {
    return kazakhstan;
  }

  void setKazakhstan(String kazakhstan) {
    this.kazakhstan = kazakhstan;
  }

  String? getFirstRegistrantId() {
    return firstRegistrantId;
  }

  void setFirstRegistrantId(String firstRegistrantId) {
    this.firstRegistrantId = firstRegistrantId;
  }

  String? getFirstRegistrationDatetime() {
    return firstRegistrationDatetime;
  }

  void setFirstRegistrationDatetime(String firstRegistrationDatetime) {
    this.firstRegistrationDatetime = firstRegistrationDatetime;
  }

  String? getLastReviserId() {
    return lastReviserId;
  }

  void setLastReviserId(String lastReviserId) {
    this.lastReviserId = lastReviserId;
  }

  String? getLastRevisionDatetime() {
    return lastRevisionDatetime;
  }

  void setLastRevisionDatetime(String lastRevisionDatetime) {
    this.lastRevisionDatetime = lastRevisionDatetime;
  }

  String? getStateCode() {
    return stateCode;
  }

  void setStateCode(String stateCode) {
    this.stateCode = stateCode;
  }
}
