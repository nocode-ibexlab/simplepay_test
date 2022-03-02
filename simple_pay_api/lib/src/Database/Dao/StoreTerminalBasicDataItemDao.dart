import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/StoreTerminalBasicDataItem.dart';

import 'AbstractDao.dart';

@dao
abstract class StoreTerminalBasicDataItemDao
    extends AbstractDao<StoreTerminalBasicDataItem> {
  @Query(
      'SELECT * FROM BA1_STR_TRM_BAS_DAT_ITM WHERE STR_TRM_BAS_DAT_ITM_ID = :id')
  Future<StoreTerminalBasicDataItem?> findById(String id);

  @Query(
      'SELECT * FROM BA1_STR_TRM_BAS_DAT_ITM AS ITEM JOIN BA1_STR_TRM_BAS_DAT AS DATA ON ITEM.STR_TRM_BAS_DAT_ID = DATA.STR_TRM_BAS_DAT_ID WHERE DATA.STR_TRM_BAS_DAT_CD_NM  =:storeTerminalBasicDataCodeName AND ITEM.STR_TRM_BAS_DAT_ITM_CD_NM = :storeTerminalBasicDataItemCodeName')
  Future<StoreTerminalBasicDataItem?>
      findByStoreTerminalBasicDataCodeNameAndStoreTerminalBasicDataItemCodeName(
          String storeTerminalBasicDataCodeName,
          String storeTerminalBasicDataItemCodeName);

  @Query(
      'SELECT * FROM BA1_STR_TRM_BAS_DAT_ITM ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<StoreTerminalBasicDataItem?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM BA1_STR_TRM_BAS_DAT_ITM')
  Future<List<StoreTerminalBasicDataItem>> findAll();

  @Query(
      'SELECT * FROM BA1_STR_TRM_BAS_DAT_ITM AS ITEM JOIN BA1_STR_TRM_BAS_DAT AS DATA ON ITEM.STR_TRM_BAS_DAT_ID = DATA.STR_TRM_BAS_DAT_ID WHERE DATA.STR_TRM_BAS_DAT_CD_NM  =:storeTerminalBasicDataCodeName ORDER BY STR_TRM_BAS_DAT_ITM_SNO ASC')
  Future<List<StoreTerminalBasicDataItem>>
      findAllByStoreTerminalBasicDataCodeName(
          String storeTerminalBasicDataCodeName);

  @Query('SELECT * FROM BA1_STR_TRM_BAS_DAT_ITM WHERE SYNCD_YN = 0')
  Future<List<StoreTerminalBasicDataItem>> findNotSynced();
}
