import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/BasicDataItem.dart';

import 'AbstractDao.dart';

@dao
abstract class BasicDataItemDao extends AbstractDao<BasicDataItem> {
  @Query('SELECT * FROM BA1_BAS_DAT_ITM WHERE BAS_DAT_ITM_ID = :id')
  Future<BasicDataItem?> findById(String id);

  @Query(
      'SELECT * FROM BA1_BAS_DAT_ITM WHERE BAS_DAT_ITM_CD_NM = :basicDataItemCodeName')
  Future<BasicDataItem?> findByBasicDataItemCodeName(
      String basicDataItemCodeName);

  @Query(
      'SELECT * FROM BA1_BAS_DAT_ITM AS ITEM JOIN BA1_BAS_DAT AS DATA ON ITEM.BAS_DAT_ID = DATA.BAS_DAT_ID WHERE DATA.BAS_DAT_CD_NM  =:basicDataCodeName AND ITEM.BAS_DAT_ITM_CD_NM = :basicDataItemCodeName')
  Future<BasicDataItem?> findByBasicDataItemCodeNameAndBasicDataCodeName(
      String basicDataCodeName, String basicDataItemCodeName);

  @Query('SELECT * FROM BA1_BAS_DAT_ITM ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<BasicDataItem?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM BA1_BAS_DAT_ITM')
  Future<List<BasicDataItem>> findAll();

  @Query(
      'SELECT * FROM BA1_BAS_DAT_ITM AS ITEM JOIN BA1_BAS_DAT AS DATA ON ITEM.BAS_DAT_ID = DATA.BAS_DAT_ID '
      'WHERE DATA.BAS_DAT_CD_NM  =:basicDataCodeName ORDER BY BAS_DAT_ITM_SNO ASC')
  Future<List<BasicDataItem>> findAllByBasicDataCodeName(
      String basicDataCodeName);

  @Query('SELECT * FROM BA1_BAS_DAT_ITM '
      'WHERE DATA.BAS_DAT_ITM_CD_NM  like "CU%" AND DAT_1 IS NOT NULL AND (HIDE_YN IS NULL OR HIDE_YN <> 1) ORDER BY BAS_DAT_ITM_SNO DESC')
  Future<List<BasicDataItem>> findAllByBasicDataCodeNameLikeAndData1NotNull();

  @Query('SELECT * FROM BA1_BAS_DAT_ITM WHERE BAS_DAT_ITM_CD_NM like "CB%"')
  Future<List<BasicDataItem>> findAllByBasicDataCodeNameLike();

  @Query('SELECT * FROM BA1_BAS_DAT_ITM WHERE SYNCD_YN = 0')
  Future<List<BasicDataItem>> findNotSynced();
}
