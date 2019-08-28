///  Do not remove this unless you get business authorization.
///  SimpleResponse
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/simpleresponse.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class SimpleResponseColumns{

  /// message  
  static ColumnConfig message = ColumnConfig(
    key: 'message',
    title: 'message',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: SimpleResponse, index: number) =>{
    //  return message.renderColumn(record, null, text, index, message);
    //},
  );

  /// success  
  static ColumnConfig success = ColumnConfig(
    key: 'success',
    title: 'success',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: SimpleResponse, index: number) =>{
    //  return success.renderColumn(record, null, text, index, success);
    //},
  );

}