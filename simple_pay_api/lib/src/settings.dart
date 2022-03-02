import 'Database/BusinessLogic/bl.dart';
import 'Database/Util/CultureManager.dart';
import 'device.dart';
import 'exception.dart';
import 'simple.dart';
import 'tender.dart';
import 'utils.dart';

class Settings with Utils {
  static final Settings _singleton = Settings._internal();

  static const _storeGroup = [
    'store.name',
    'store.businessRegistrationNumber',
    'store.primaryAddress',
    'store.detailAddress',
    'store.zipCode',
    'store.telNumber',
    'store.ceoName',
    'store.isTaxFree',
    'store.taxPercent',
    'webKassa.use',
    'webKassa.autoRegistration',
    'system.debug',
    'store.aspServerUrl',
    'store.loginId',
    'device.barcodeScannerMode',
    'device.barcodeScannerType',
    'pos.storeTerminalName',
    'pos.registerNo',
    'pos.posType',
    'locale.language',
    'locale.receiptLanguage',
    'locale.currency',
    'pos.defaultWareHouse',
  ];

  static const _printerGroup = [
    'printer.isOrderPrintingPoint',
    'printer.isPrintOrderChangedItem',
    'printer.isPrintOrder',
    'printer.IsPrintBillChangedItem',
    'printer.isPrintBill',
    'printer.isPrintCardReceiptToStore',
    'printer.isPrintCardReceiptToCompany',
    'printer.isPrintCardReceiptToCustomer',
    'printer.receipt.model',
    'printer.receipt.type',
    'printer.receipt.typeCode',
    'printer.receipt.printerBTAddress',
    'printer.receipt.paperSize',
    'printer.kitchen.model',
    'printer.kitchen.type',
    'printer.kitchen.typeCode',
    'printer.kitchen.printerBTAddress',
    'printer.kitchen.paperSize',
  ];

  static const _receiptPrinterGroup = [
    'printer.receipt.model',
    'printer.receipt.type',
    'printer.receipt.typeCode',
    'printer.receipt.printerBTAddress',
    'printer.receipt.paperSize',
  ];

  static const _kitchenPrinterGroup = [
    'printer.kitchen.model',
    'printer.kitchen.type',
    'printer.kitchen.typeCode',
    'printer.kitchen.printerBTAddress',
    'printer.kitchen.paperSize',
  ];

  static const _paymentGroup = [
    'payments',
  ];

  static const _applicationGroup = [
    'app.showItemImage',
    'app.syncLastTime',
    'system.storage-dir',
  ];

  factory Settings() => _singleton;

  Settings._internal();

  Future invoke(String method, dynamic data) async {
    switch (method) {
      case 'get':
        return get(data?['group'], data?['keys'], data?['key']);
      case 'set':
        return set(data);
    }

    throw ApiException(501, 'Not implemented');
  }

  Future<Map> get(String? group, List<String>? keys, String? key) async {
    keys ??= <String>[];

    if (key != null) {
      keys.add(key);
    }

    if (group != null) {
      switch (group) {
        case 'store':
          keys.addAll(_storeGroup);
          break;
        case 'printer':
          keys.addAll(_printerGroup);
          break;
        case 'receiptPrinter':
          keys.addAll(_receiptPrinterGroup);
          break;
        case 'kitchenPrinter':
          keys.addAll(_kitchenPrinterGroup);
          break;
        case 'payment':
          keys.addAll(_paymentGroup);
          break;
        case 'application':
          keys.addAll(_applicationGroup);
          break;
        case 'all':
          keys.addAll(_storeGroup);
          keys.addAll(_printerGroup);
          keys.addAll(_paymentGroup);
          keys.addAll(_applicationGroup);
          break;
        default:
          throw ApiException(404, 'group ($group) not found');
      }
    }

    Map settings = {};

    for (String key in keys) {
      settings[key] = await _get(key);
    }

    return bizResponse(200, 'success', settings);
  }

  Future _get(String key) async {
    final basBL = BasBL();
    final opBL = OperationBL();
    final traceBL = TraceBL();

    switch (key) {
      case 'store.name':
        return (await basBL.getStore())?.getStoreName();
      case 'store.businessRegistrationNumber':
        return (await basBL.getStore())?.getBusinessRegistrationNumber();
      case 'store.primaryAddress':
        return (await basBL.getStore())?.getPrimaryAddress();
      case 'store.detailAddress':
        return (await basBL.getStore())?.getDetailAddress();
      case 'store.zipCode':
        return (await basBL.getStore())?.getZipcode();
      case 'store.telNumber':
        return (await basBL.getStore())?.getTelNumber();
      case 'store.ceoName':
        return (await basBL.getStore())?.getCeoName();
      case 'store.isTaxFree':
        return await opBL.getIsTaxFree();
      case 'store.taxPercent':
        return double.tryParse(
            (await basBL.getBasicDataItemById('CF101'))?.getData2() ?? '0');
      case 'webKassa.use':
        return await opBL.getUseWebKassa();
      case 'webKassa.autoRegistration':
        return await opBL.getUseWebKassaAutoRegistration();
      case 'system.debug':
        return await traceBL.use();
      case 'store.aspServerUrl':
        return await opBL.getAspServerUrl();
      case 'store.loginId':
        return await opBL.getLoginId();
      case 'device.barcodeScannerMode':
        return await opBL.getBarcodeScannerMode();
      case 'device.barcodeScannerType':
        return await opBL.getBarcodeScannerType();
      case 'pos.storeTerminalName':
        return (await basBL.getStoreTerminalById(BaseBL.storeTerminalId))
            ?.getStoreTerminalName();
      case 'pos.registerNo':
        return await opBL.getRegisterNo();
      case 'pos.posType':
        return await opBL.getPosType(); // 01: 선불(소매업) , 02: 후불(요식업)
      case 'locale.language':
        return await opBL.getLanguage();
      case 'locale.receiptLanguage':
        return await opBL.getReceiptLanguage();
      case 'locale.currency':
        return await opBL.getCurrencyCode();
      case 'pos.defaultWareHouse':
        return await opBL.getDefaultWareHouse();
      case 'printer.isOrderPrintingPoint':
        return await opBL.isOrderPrintingPoint(); //0 : 결제전(기본값), 1: 결제후
      case 'printer.isPrintOrderChangedItem':
        return await opBL.printOrderChangedItem(); //0 : 변경내역출력, 1: 전체내역출력(기본값)
      case 'printer.isPrintOrder':
        return await opBL.isPrintOrder();
      case 'printer.IsPrintBillChangedItem':
        return await opBL.printBillChangedItem(); //0 : 변경내역출력, 1: 전체내역출력(기본값)
      case 'printer.isPrintBill':
        return await opBL.isPrintBill();
      case 'printer.isPrintCardReceiptToStore':
        return await opBL.isPrintCardReceiptToStore();
      case 'printer.isPrintCardReceiptToCustomer':
        return opBL.isPrintCardReceiptToCustomer();
      case 'printer.isPrintCardReceiptToCompany':
        return await opBL.isPrintCardReceiptToCompany();
      case 'printer.receipt.model':
        return await opBL.getReceiptPrinterModel();
      case 'printer.receipt.type':
        return await basBL.getBasicDataItemNameByCode(
            'PRNTR_TP_CD', await opBL.getReceiptPrinterType());
      case 'printer.receipt.typeCode':
        return await opBL.getReceiptPrinterType();
      case 'printer.receipt.printerBTAddress':
        return await opBL.getReceiptPrinterMacAddress();
      case 'printer.receipt.paperSize':
        return await opBL.getReceiptPrinterMaxChar();
      case 'printer.kitchen.model':
        return await opBL.getKitchenPrinterModel();
      case 'printer.kitchen.type':
        return await basBL.getBasicDataItemNameByCode(
            'PRNTR_TP_CD', await opBL.getKitchenPrinterType());
      case 'printer.kitchen.typeCode':
        return await opBL.getKitchenPrinterType();
      case 'printer.kitchen.printerBTAddress':
        return await opBL.getKitchenPrinterMacAddress();
      case 'printer.kitchen.paperSize':
        return await opBL.getKitchenPrinterMaxChar();
      case 'payments':
        return await Tender().getPaymentMethods();
      case 'app.showItemImage':
        return await opBL.isShowItemImage();
      case 'app.syncLastTime':
        return ''; // TODO
      case 'system.storage-dir':
        return Simple.result(await Device().getDevicePath(), 'external');
      default:
        throw ApiException(400, 'No key: $key');
    }
  }

  Future<Map> set(Map settings) async {
    for (String key in settings.keys) {
      await _set(key, settings[key]);
    }

    return bizResponse(200, 'success');
  }

  Future<void> _set(String key, dynamic value) async {
    final opBL = OperationBL();
    final traceBL = TraceBL();

    switch (key) {
      case 'store.businessRegistrationNumber':
        await opBL.setBusinessRegistrationNumber(value);
        break;
      case 'store.primaryAddress':
        await opBL.setStorePrimaryAddress(value);
        break;
      case 'store.detailAddress':
        await opBL.setStoreDetailAddress(value);
        break;
      case 'store.zipCode':
        await opBL.setStoreZipCode(value);
        break;
      case 'store.telNumber':
        await opBL.setStoreTelNumber(value);
        break;
      case 'store.ceoName':
        await opBL.setStoreCeoName(value);
        break;
      case 'locale.language':
        await opBL.setLanguage(value);
        await CultureManager().initCulture();
        break;
      case 'locale.receiptLanguage':
        await opBL.setReceiptLanguage(value);
        await CultureManager().initCulture();
        break;
      case 'pos.defaultWareHouse':
        await opBL.setDefaultWareHouse(value);
        break;
      case 'printer.cardReceiptToCustomer':
        opBL.setPrintCardReceiptToCustomer(value);
        break;
      case 'printer.cardReceiptToStore':
        await opBL.setPrintCardReceiptToStore(value);
        break;
      case 'printer.cardReceiptToCompany':
        await opBL.setPrintCardReceiptToCompany(value);
        break;
      case 'printer.receipt.model':
        await opBL.setReceiptPrinterModel(value);
        break;
      case 'printer.receipt.printerBTAddress':
        await opBL.setReceiptPrinterMacAddress(value);
        break;
      case 'printer.kitchen.model':
        await opBL.setKitchenPrinterModel(value);
        break;
      case 'printer.kitchen.printerBTAddress':
        await opBL.setKitchenPrinterMacAddress(value);
        break;
      case 'webKassa.use':
        opBL.setUseWebKassa(value);
        break;
      case 'webKassa.autoRegistration':
        opBL.setWebKassaAutoRegistration(value);
        break;
      case 'system.debug':
        await traceBL.use(useLog: value);
        break;
      case 'device.barcodeScannerMode':
        opBL.setBarcodeScannerMode(value);
        break;
      case 'device.barcodeScannerType':
        opBL.setBarcodeScannerType(value);
        break;
      case 'printer.isOrderPrintingPoint':
        await opBL.setOrderPrintingPoint(value);
        break;
      case 'pos.posType':
        await opBL.setPosType(value);
        break;
      case 'app.showItemImage':
        await opBL.setShowItemImage(value);
        break;
      case 'printer.isPrintCardReceiptToStore':
        await opBL.setPrintCardReceiptToStore(value);
        break;
      case 'printer.isPrintCardReceiptToCompany':
        await opBL.setPrintCardReceiptToCompany(value);
        break;
      default:
        throw ApiException(400, 'No key: $key');
    }
  }
}
