///  Do not remove this unless you get business authorization.
///  PageList
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/pagelist.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class PageListColumns{

  /// pageSize  
  static ColumnConfig pageSize = ColumnConfig(
    key: 'pageSize',
    title: 'pageSize',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: PageList<dynamic>, index: number) =>{
    //  return pageSize.renderColumn(record, null, text, index, pageSize);
    //},
  );

  /// pageNum  
  static ColumnConfig pageNum = ColumnConfig(
    key: 'pageNum',
    title: 'pageNum',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: PageList<dynamic>, index: number) =>{
    //  return pageNum.renderColumn(record, null, text, index, pageNum);
    //},
  );

  /// totalCount  
  static ColumnConfig totalCount = ColumnConfig(
    key: 'totalCount',
    title: 'totalCount',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: PageList<dynamic>, index: number) =>{
    //  return totalCount.renderColumn(record, null, text, index, totalCount);
    //},
  );

  /// totalPages  
  static ColumnConfig totalPages = ColumnConfig(
    key: 'totalPages',
    title: 'totalPages',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: PageList<dynamic>, index: number) =>{
    //  return totalPages.renderColumn(record, null, text, index, totalPages);
    //},
  );

  /// items  
  static ColumnConfig items = ColumnConfig(
    key: 'items',
    title: 'items',
    // renderColumn: UIColumns.InputRender,
    isArray: true,
    //render: (text: any, record: PageList<dynamic>, index: number) =>{
    //  return items.renderColumn(record, null, text, index, items);
    //},
  );

  /// pagination  
  static ColumnConfig pagination = ColumnConfig(
    key: 'pagination',
    title: 'pagination',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: PageList<dynamic>, index: number) =>{
    //  return pagination.renderColumn(record, null, text, index, pagination);
    //},
  );

}