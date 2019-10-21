///  Do not remove this unless you get business authorization.
///  Response
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/response.dart';
import '../enums/responsestatus.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class ResponseColumns{

  /// code  
  static ColumnConfig code = ColumnConfig(
    key: 'code',
    title: 'code',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Response<dynamic>, index: number) =>{
    //  return code.renderColumn(record, null, text, index, code);
    //},
  );

  /// data  
  static ColumnConfig data = ColumnConfig(
    key: 'data',
    title: 'data',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Response<dynamic>, index: number) =>{
    //  return data.renderColumn(record, null, text, index, data);
    //},
  );

  /// exeptionClass  
  static ColumnConfig exeptionClass = ColumnConfig(
    key: 'exeptionClass',
    title: 'exeptionClass',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Response<dynamic>, index: number) =>{
    //  return exeptionClass.renderColumn(record, null, text, index, exeptionClass);
    //},
  );

  /// message  
  static ColumnConfig message = ColumnConfig(
    key: 'message',
    title: 'message',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Response<dynamic>, index: number) =>{
    //  return message.renderColumn(record, null, text, index, message);
    //},
  );

  /// status  
  static ColumnConfig status = ColumnConfig(
    key: 'status',
    title: 'status',
    // renderColumn: UIColumns.SelectRender,
    isEnum: true,
    referConfig: ReferConfig(
      options: ResponseStatus.responseStatusOptions,
    ),
    //render: (text: any, record: Response<dynamic>, index: number) =>{
    //  return status.renderColumn(record, null, text, index, status);
    //},
  );

  /// success  
  static ColumnConfig success = ColumnConfig(
    key: 'success',
    title: 'success',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Response<dynamic>, index: number) =>{
    //  return success.renderColumn(record, null, text, index, success);
    //},
  );

}