import 'package:floor/floor.dart';

//todo @SuppressWarnings("unused")
@Entity(tableName: "BA1_TEMPLATE_ITEM")
class TemplateItem {
  @primaryKey
  @ColumnInfo(name: "TEMPLATE_ITEM_ID")
  String? templateItemId;

  String? getTemplateItemId() {
    return templateItemId;
  }

  void setTemplateItemId(String templateItemId) {
    this.templateItemId = templateItemId;
  }

  @ColumnInfo(name: "NAME")
  String? name;

  String? getName() {
    return name;
  }

  void setName(String name) {
    this.name = name;
  }

  @ColumnInfo(name: "TEMPLATE")
  String? template;

  String? getTemplate() {
    return template;
  }

  void setTemplate(String template) {
    this.template = template;
  }

  @ColumnInfo(name: "CUT")
  String? cut;

  String? getCut() {
    return cut;
  }

  void setCut(String cut) {
    this.cut = cut;
  }

  @ColumnInfo(name: "IS_LIST_TYPE")
  String? isListType;

  String? getIsListType() {
    return this.isListType;
  }

  void setIsListType(String isListType) {
    this.isListType = isListType;
  }

  @ColumnInfo(name: "SYNCD_YN")
  bool? synchronizedYn;

  bool? getSynchronizedYn() {
    return synchronizedYn;
  }

  void setSynchronizedYn(bool synchronizedYn) {
    this.synchronizedYn = synchronizedYn;
  }

  @ColumnInfo(name: "FRST_REGST_ID")
  String? firstRegistrantId;

  String? getFirstRegistrantId() {
    return firstRegistrantId;
  }

  void setFirstRegistrantId(String firstRegistrantId) {
    this.firstRegistrantId = firstRegistrantId;
  }

  @ColumnInfo(name: "FRST_REG_DTTM")
  String? firstRegistrationDatetime;

  String? getFirstRegistrationDatetime() {
    return firstRegistrationDatetime;
  }

  void setFirstRegistrationDatetime(String firstRegistrationDatetime) {
    this.firstRegistrationDatetime = firstRegistrationDatetime;
  }

  @ColumnInfo(name: "LAST_REVSR_ID")
  String? lastReviserId;

  String? getLastReviserId() {
    return lastReviserId;
  }

  void setLastReviserId(String lastReviserId) {
    this.lastReviserId = lastReviserId;
  }

  @ColumnInfo(name: "LAST_REV_DTTM")
  String? lastRevisionDatetime;

  String? getLastRevisionDatetime() {
    return lastRevisionDatetime;
  }

  void setLastRevisionDatetime(String lastRevisionDatetime) {
    this.lastRevisionDatetime = lastRevisionDatetime;
  }

  String? getStateCode() {
    return this.stateCode;
  }

  void setStateCode(String stateCode) {
    this.stateCode = stateCode;
  }

  @ColumnInfo(name: "STAT_CD")
  String? stateCode;

  //todo @Generated(hash = 918540015)
  TemplateItem(
      {String? templateItemId,
      String? name,
      String? template,
      String? cut,
      String? isListType,
      bool? synchronizedYn,
      String? firstRegistrantId,
      String? firstRegistrationDatetime,
      String? lastReviserId,
      String? lastRevisionDatetime,
      String? stateCode}) {
    this.templateItemId = templateItemId;
    this.name = name;
    this.template = template;
    this.cut = cut;
    this.isListType = isListType;
    this.synchronizedYn = synchronizedYn;
    this.firstRegistrantId = firstRegistrantId;
    this.firstRegistrationDatetime = firstRegistrationDatetime;
    this.lastReviserId = lastReviserId;
    this.lastRevisionDatetime = lastRevisionDatetime;
    this.stateCode = stateCode;
  }

//todo @Generated(hash = 1896476923)
// TemplateItem() {
// }

}
