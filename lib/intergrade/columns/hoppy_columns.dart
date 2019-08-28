///  Do not remove this unless you get business authorization.
///  Hoppy
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/hoppy.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class HoppyColumns{

  /// hoppyId  
  static ColumnConfig hoppyId = ColumnConfig(
    key: 'hoppyId',
    title: 'hoppyId',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    //render: (text: any, record: Hoppy, index: number) =>{
    //  return hoppyId.renderColumn(record, null, text, index, hoppyId);
    //},
  );

  /// hoppyName  
  static ColumnConfig hoppyName = ColumnConfig(
    key: 'hoppyName',
    title: 'hoppyName',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Hoppy, index: number) =>{
    //  return hoppyName.renderColumn(record, null, text, index, hoppyName);
    //},
  );

  /// 创建时间  TIMESTAMP
  static ColumnConfig createTime = ColumnConfig(
    key: 'createTime',
    title: '创建时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: Hoppy, index: number) =>{
    //  return createTime.renderColumn(record, null, text, index, createTime);
    //},
  );

  /// 更新时间  TIMESTAMP
  static ColumnConfig updateTime = ColumnConfig(
    key: 'updateTime',
    title: '更新时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: Hoppy, index: number) =>{
    //  return updateTime.renderColumn(record, null, text, index, updateTime);
    //},
  );

  /// 是否删除(0:正常，1删除)  
  static ColumnConfig deleteFlag = ColumnConfig(
    key: 'deleteFlag',
    title: '是否删除(0:正常',
    // renderColumn: UIColumns.InputRender,
    hidden: true,
    //render: (text: any, record: Hoppy, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// hoppyId s  
  static ColumnConfig hoppyIds = ColumnConfig(
    key: 'hoppyIds',
    title: 'hoppyId',
    noJson: true,
    isArray: true,
  );

  /// hoppyNameLike  
  static ColumnConfig hoppyNameLike = ColumnConfig(
    key: 'hoppyNameLike',
    title: 'hoppyNameLike',
    noJson: true,
  );

  /// 创建时间Min  TIMESTAMP
  static ColumnConfig createTimeMin = ColumnConfig(
    key: 'createTimeMin',
    title: '创建时间Min',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 创建时间Max  TIMESTAMP
  static ColumnConfig createTimeMax = ColumnConfig(
    key: 'createTimeMax',
    title: '创建时间Max',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 更新时间Min  TIMESTAMP
  static ColumnConfig updateTimeMin = ColumnConfig(
    key: 'updateTimeMin',
    title: '更新时间Min',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 更新时间Max  TIMESTAMP
  static ColumnConfig updateTimeMax = ColumnConfig(
    key: 'updateTimeMax',
    title: '更新时间Max',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// value  
  static ColumnConfig value = ColumnConfig(
    key: 'value',
    title: 'value',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Hoppy, index: number) =>{
    //  return value.renderColumn(record, null, text, index, value);
    //},
  );

  /// title  
  static ColumnConfig title = ColumnConfig(
    key: 'title',
    title: 'title',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Hoppy, index: number) =>{
    //  return title.renderColumn(record, null, text, index, title);
    //},
  );

}