///  Do not remove this unless you get business authorization.
///  AntdPageList
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/antdpagelist.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class AntdPageListColumns{

  /// pagination  
  static ColumnConfig pagination = ColumnConfig(
    key: 'pagination',
    title: 'pagination',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: AntdPageList<dynamic>, index: number) =>{
    //  return pagination.renderColumn(record, null, text, index, pagination);
    //},
  );

  /// list  
  static ColumnConfig list = ColumnConfig(
    key: 'list',
    title: 'list',
    // renderColumn: UIColumns.InputRender,
    isArray: true,
    //render: (text: any, record: AntdPageList<dynamic>, index: number) =>{
    //  return list.renderColumn(record, null, text, index, list);
    //},
  );

}