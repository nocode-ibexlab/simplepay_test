import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/Item.dart';

import 'AbstractDao.dart';

@dao
abstract class ItemDao extends AbstractDao<Item> {
  @Query('SELECT * FROM IT1_ITM WHERE ITM_ID = :id')
  Future<Item?> findById(String id);

  @Query('SELECT * FROM IT1_ITM ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<Item?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM IT1_ITM')
  Future<List<Item>> findAll();

  @Query(
      'SELECT * FROM IT1_ITM WHERE BARCD Like :barcode AND RECMND_ITM_YN = :recommended AND STAT_CD != :stateCode AND HIDE_YN = :hidingYn ORDER BY BARCD ASC LIMIT :limit OFFSET :__offset')
  Future<List<Item>> findAllByBarcodeLikeAndStateCodeAndHidingYnLimitOffset(
      String barcode,
      bool recommended,
      String stateCode,
      bool hidingYn,
      int limit,
      int __offset);

  @Query(
      'SELECT * FROM IT1_ITM WHERE SLS_TP_CD IN (:saleTypeCodes) AND  STAT_CD != :stateCode AND HIDE_YN = :hidingYn')
  Future<List<Item>> findAllBySaleTypeCodeInAndStateCodeAndHidingYn(
      List<String> saleTypeCodes, String stateCode, bool hidingYn);

  @Query(
      'SELECT * FROM IT1_ITM WHERE SLS_TP_CD IN (:saleTypeCodes) AND  STAT_CD != :stateCode AND ITM_GRP_ID = :itemGroupId AND HIDE_YN = :hidingYn ')
  Future<List<Item>>
      findAllBySaleTypeCodeInAndStateCodeAndItemGroupIdAndHidingYn(
          List<String> saleTypeCodes,
          String stateCode,
          String itemGroupId,
          bool hidingYn);

  @Query(
      'SELECT * FROM IT1_ITM WHERE SLS_TP_CD IN (:saleTypeCodes) AND  STAT_CD != :stateCode AND HIDE_YN = :hidingYn AND ITM_NM like :itemName ORDER BY ITM_NM ASC LIMIT :limit OFFSET :_offset')
  Future<List<Item>>
      findAllBySaleTypeCodeInAndStateCodeAndHidingYnAndItemNameLikeLimitOffset(
          List<String> saleTypeCodes,
          String stateCode,
          bool hidingYn,
          String itemName,
          int limit,
          int _offset);

  @Query(
      'SELECT * FROM IT1_ITM WHERE SLS_TP_CD IN (:saleTypeCodes) AND STAT_CD != :stateCode AND ITM_GRP_ID = :itemGroupId AND HIDE_YN = :hidingYn AND ITM_NM like :itemName ORDER BY ITM_NM ASC LIMIT :limit OFFSET :_offset')
  Future<List<Item>>
      findAllBySaleTypeCodeInAndStateCodeAndItemGroupIdAndHidingYnAndItemNameLikeLimitOffset(
          List<String> saleTypeCodes,
          String stateCode,
          String itemGroupId,
          bool hidingYn,
          String itemName,
          int limit,
          int _offset);

  @Query(
      'SELECT * FROM IT1_ITM WHERE SLS_TP_CD IN (:saleTypeCodes) AND  STAT_CD != :stateCode AND ITM_GRP_ID = :itemGroupId AND HIDE_YN = :hidingYn AND ITM_NM like :itemName AND RECMND_ITM_YN = :recommended ORDER BY ITM_NM ASC LIMIT :limit OFFSET :_offset')
  Future<List<Item>>
  findAllBySaleTypeCodeInAndStateCodeAndItemGroupIdAndHidingYnAndItemNameLikeAndRecommendedLimitOffset(
      List<String> saleTypeCodes,
      String stateCode,
      String itemGroupId,
      bool hidingYn,
      String itemName,
      bool recommended,
      int limit,
      int _offset);

  @Query(
      'SELECT * FROM IT1_ITM AS ITEM JOIN IT1_ITM_GRP AS GRP ON ITEM.ITM_GRP_ID = GRP.ITM_GRP_ID '
      ' WHERE ITEM.SLS_TP_CD  =:saleTypeCode AND ITEM.STAT_CD !=:stateCode '
      ' and GRP.OPR_TP_CD  =:operationTypeCode AND GRP.ITM_GRP_TP_CD =:itemGroupTypeCode')
  Future<List<Item>> findAllBySaleTypeCodeAndStateCodeJoinItemGroup(
      String saleTypeCode,
      String stateCode,
      String operationTypeCode,
      String itemGroupTypeCode);

  @Query('SELECT * FROM'
      '    (SELECT  *,  MAX (LAST_REV_DTTM) AS MAX FROM'
      '       (SELECT  ITM_ID, ITM_GRP_ID, ITM_CD, ITM_NM,  OPR_TP_CD,  SLS_TP_CD,  PRICE_TP_CD,COST,  SELL_PRICE, BARCD, APLY_TAX_0_YN, APLY_TAX_1_YN,  APLY_TAX_2_YN,  '
      '       APLY_DC_YN, HIDE_YN, INV_QTY, KTCHN_PRNTR_OUTPUT_YN, OPT_USE_TP_CD, RECMND_ITM_YN, PACK_PSBL_YN, ONLINE_SLS_YN, SOLD_OUT_YN, IMG_URL, LNK_CODE, '
      '       SYNCD_YN, FRST_REGST_ID, FRST_REG_DTTM, LAST_REVSR_ID, LAST_REV_DTTM, STAT_CD '
      '       FROM IT1_ITM WHERE SLS_TP_CD = "X" AND STAT_CD !="99"'
      '       UNION'
      '       SELECT  I.ITM_ID, I.ITM_GRP_ID, I.ITM_CD,  I.ITM_NM,  I.OPR_TP_CD,  I.SLS_TP_CD,  I.PRICE_TP_CD,I.COST,  SI.PRICE as SELL_PRICE,I.BARCD,  I.APLY_TAX_0_YN,   I.APLY_TAX_1_YN,  I.APLY_TAX_2_YN, '
      '       I.APLY_DC_YN, I.HIDE_YN, I.INV_QTY, I.KTCHN_PRNTR_OUTPUT_YN, I.OPT_USE_TP_CD, I.RECMND_ITM_YN, I.PACK_PSBL_YN, I.ONLINE_SLS_YN, I.SOLD_OUT_YN, I.IMG_URL, I.LNK_CODE,  '
      '       I.SYNCD_YN, I.FRST_REGST_ID, I.FRST_REG_DTTM, I.LAST_REVSR_ID, SI.LAST_REV_DTTM, I.STAT_CD '
      '       FROM SL1_SLS_HIS_ITM AS SI'
      '       JOIN IT1_ITM AS I WHERE SI.ITM_ID = I.ITM_ID AND SI.QTY>0 ORDER BY LAST_REV_DTTM DESC)'
      '    GROUP BY ITM_ID ) '
      ' ORDER BY MAX DESC limit 5')
  Future<List<Item>> findAllByRecentlyUsedList();

  @Query('SELECT * FROM IT1_ITM')
  Stream<List<Item>> findAllAsStream();
}
