import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/BaseBL.dart';
import 'package:simple_pay_api/src/Database/Util/CommonUtil.dart';

@Entity(tableName: 'OD1_ODR_HIS_DEL')
class OrderHistoryDeletion {
  @primaryKey
  @ColumnInfo(name: 'ID')
  late String id;

  @ColumnInfo(name: 'FINALIZED_YN')
  bool finalizedYn;

  @ColumnInfo(name: 'SYNCD_YN')
  bool synchronizedYn;

  @ColumnInfo(name: 'FRST_REGST_ID')
  String? firstRegistrantId;

  @ColumnInfo(name: 'FRST_REG_DTTM')
  String? firstRegistrationDatetime;

  @ColumnInfo(name: 'LAST_REVSR_ID')
  String? lastReviserId;

  @ColumnInfo(name: 'LAST_REV_DTTM')
  String? lastRevisionDatetime;

  @ColumnInfo(name: 'STAT_CD')
  String stateCode;

  OrderHistoryDeletion({
    required this.id,
    this.finalizedYn = false,
    this.synchronizedYn = false,
    this.firstRegistrantId,
    this.firstRegistrationDatetime,
    this.lastReviserId,
    this.lastRevisionDatetime,
    this.stateCode = '00',
  });

  void updateTime() {
    String now = CommonUtil.convertDateForm1(DateTime.now());
    synchronizedYn = false;

    if (firstRegistrantId == null) {
      firstRegistrantId = BaseBL.employeeId;
    }

    if (firstRegistrationDatetime == null) {
      firstRegistrationDatetime = now;
    }

    lastReviserId = BaseBL.employeeId;
    lastRevisionDatetime = now;
    stateCode = '00';
  }
}
