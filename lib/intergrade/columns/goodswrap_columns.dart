///  Do not remove this unless you get business authorization.
///  GoodsWrap
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/goodswrap.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class GoodsWrapColumns{

  /// goodInfo  
  static ColumnConfig goodInfo = ColumnConfig(
    key: 'goodInfo',
    title: 'goodInfo',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: GoodsWrap, index: number) =>{
    //  return goodInfo.renderColumn(record, null, text, index, goodInfo);
    //},
  );

  /// goodComments  
  static ColumnConfig goodComments = ColumnConfig(
    key: 'goodComments',
    title: 'goodComments',
    // renderColumn: UIColumns.InputRender,
    isArray: true,
    //render: (text: any, record: GoodsWrap, index: number) =>{
    //  return goodComments.renderColumn(record, null, text, index, goodComments);
    //},
  );

  /// advertesPicture  
  static ColumnConfig advertesPicture = ColumnConfig(
    key: 'advertesPicture',
    title: 'advertesPicture',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: GoodsWrap, index: number) =>{
    //  return advertesPicture.renderColumn(record, null, text, index, advertesPicture);
    //},
  );

}