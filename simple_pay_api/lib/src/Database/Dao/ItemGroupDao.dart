import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/ItemGroup.dart';

import 'AbstractDao.dart';

@dao
abstract class ItemGroupDao extends AbstractDao<ItemGroup> {
  @Query('SELECT * FROM IT1_ITM_GRP WHERE ITM_GRP_ID = :id')
  Future<ItemGroup?> findById(String id);

  @Query('SELECT * FROM IT1_ITM_GRP ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<ItemGroup?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM IT1_ITM_GRP')
  Future<List<ItemGroup>> findAll();

  @Query(
      'SELECT * FROM IT1_ITM_GRP WHERE STAT_CD != :stateCode and OPR_TP_CD =  :oprTpCode and ITM_GRP_TP_CD =  :type and HIDE_YN = 0 and ITM_GRP_NM like :itemGroupName ')
  Future<List<ItemGroup>>
      findAllByStateCodeAndOperationTypeCodeAndItemGroupTypeCodeAndItemGroupName(
          String stateCode,
          String oprTpCode,
          String type,
          String itemGroupName);

  @Query(
      'SELECT DISTINCT * FROM IT1_ITM_GRP as A JOIN IT1_ITM as B ON A.ITM_GRP_ID = B.ITM_GRP_ID WHERE A.STAT_CD != :stateCode and A.OPR_TP_CD = :oprTpCode and A.ITM_GRP_TP_CD = :type and A.HIDE_YN = 0 and A.ITM_GRP_NM like :itemGroupName and B.RECMND_ITM_YN = :isRecommended')
  Future<List<ItemGroup>>
      findAllByStateCodeAndOperationTypeCodeAndItemGroupTypeCodeAndItemGroupNameAndRecommended(
          String stateCode,
          String oprTpCode,
          String type,
          String itemGroupName,
          bool isRecommended);

  @Query(
      'SELECT * FROM IT1_ITM_GRP WHERE STAT_CD != :stateCode and OPR_TP_CD =  :oprTpCode and ITM_GRP_TP_CD =  :type and HIDE_YN = 1')
  Future<List<ItemGroup>>
      findAllByStateCodeAndOperationTypeCodeAndItemGroupTypeCodeAndHidingYn(
          String stateCode, String oprTpCode, String type);

  @Query('SELECT * FROM IT1_ITM_GRP')
  Stream<List<ItemGroup>> findAllAsStream();
}
