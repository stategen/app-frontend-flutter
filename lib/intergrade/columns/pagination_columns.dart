///  Do not remove this unless you get business authorization.
///  Pagination
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/pagination.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class PaginationColumns{

  /// page  
  static ColumnConfig page = ColumnConfig(
    key: 'page',
    title: 'page',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Pagination, index: number) =>{
    //  return page.renderColumn(record, null, text, index, page);
    //},
  );

  /// pageSize  
  static ColumnConfig pageSize = ColumnConfig(
    key: 'pageSize',
    title: 'pageSize',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Pagination, index: number) =>{
    //  return pageSize.renderColumn(record, null, text, index, pageSize);
    //},
  );

  /// total  
  static ColumnConfig total = ColumnConfig(
    key: 'total',
    title: 'total',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Pagination, index: number) =>{
    //  return total.renderColumn(record, null, text, index, total);
    //},
  );

  /// pageNum  
  static ColumnConfig pageNum = ColumnConfig(
    key: 'pageNum',
    title: 'pageNum',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Pagination, index: number) =>{
    //  return pageNum.renderColumn(record, null, text, index, pageNum);
    //},
  );

  /// totalPages  
  static ColumnConfig totalPages = ColumnConfig(
    key: 'totalPages',
    title: 'totalPages',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Pagination, index: number) =>{
    //  return totalPages.renderColumn(record, null, text, index, totalPages);
    //},
  );

  /// current  
  static ColumnConfig current = ColumnConfig(
    key: 'current',
    title: 'current',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Pagination, index: number) =>{
    //  return current.renderColumn(record, null, text, index, current);
    //},
  );

}