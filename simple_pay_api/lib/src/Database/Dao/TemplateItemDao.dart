import 'package:floor/floor.dart';
import 'package:simple_pay_api/src/Database/Entity/TemplateItem.dart';

import 'AbstractDao.dart';

@dao
abstract class TemplateItemDao extends AbstractDao<TemplateItem> {
  @Query('SELECT * FROM BA1_TEMPLATE_ITEM WHERE TEMPLATE_ITEM_ID = :id')
  Future<TemplateItem?> findById(String id);

  @Query('SELECT * FROM BA1_TEMPLATE_ITEM ORDER BY LAST_REV_DTTM DESC LIMIT 1')
  Future<TemplateItem?> findOrderByLastRevisionDatetime();

  @Query('SELECT * FROM BA1_TEMPLATE_ITEM')
  Future<List<TemplateItem>> findAll();

  @Query(
      'SELECT * FROM BA1_TEMPLATE_ITEM WHERE TEMPLATE_ITEM_ID = :templateItemId AND STAT_CD != :stateCode')
  Future<List<TemplateItem>> findAllByTemplateItemIdAndStateCode(
      String templateItemId, String stateCode);

  @Query(
      'SELECT * FROM BA1_TEMPLATE_ITEM WHERE NAME = :name AND STAT_CD != :stateCode')
  Future<List<TemplateItem>> findAllByNameAndStateCode(
      String name, String stateCode);

  @Query('SELECT * FROM BA1_TEMPLATE_ITEM WHERE SYNCD_YN = 0')
  Future<List<TemplateItem>> findNotSynced();
}
