///  Do not remove this unless you get business authorization.
///  FileSummary
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/filesummary.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class FileSummaryColumns{

  /// 创建时间  TIMESTAMP
  static ColumnConfig createTime = ColumnConfig(
    key: 'createTime',
    title: '创建时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: FileSummary, index: number) =>{
    //  return createTime.renderColumn(record, null, text, index, createTime);
    //},
  );

  /// 创建时间Max  TIMESTAMP
  static ColumnConfig createTimeMax = ColumnConfig(
    key: 'createTimeMax',
    title: '创建时间Max',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 创建时间Min  TIMESTAMP
  static ColumnConfig createTimeMin = ColumnConfig(
    key: 'createTimeMin',
    title: '创建时间Min',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 是否删除 (0:正常，1删除)  
  static ColumnConfig deleteFlag = ColumnConfig(
    key: 'deleteFlag',
    title: '是否删除',
    // renderColumn: UIColumns.InputRender,
    hidden: true,
    //render: (text: any, record: FileSummary, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// fileId  
  static ColumnConfig fileId = ColumnConfig(
    key: 'fileId',
    title: 'fileId',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: FileSummary, index: number) =>{
    //  return fileId.renderColumn(record, null, text, index, fileId);
    //},
  );

  /// fileId s  
  static ColumnConfig fileIds = ColumnConfig(
    key: 'fileIds',
    title: 'fileId',
    noJson: true,
    isArray: true,
  );

  /// name  
  static ColumnConfig name = ColumnConfig(
    key: 'name',
    title: 'name',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 128,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: FileSummary, index: number) =>{
    //  return name.renderColumn(record, null, text, index, name);
    //},
  );

  /// nameLike  
  static ColumnConfig nameLike = ColumnConfig(
    key: 'nameLike',
    title: 'nameLike',
    noJson: true,
  );

  /// size  
  static ColumnConfig size = ColumnConfig(
    key: 'size',
    title: 'size',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: FileSummary, index: number) =>{
    //  return size.renderColumn(record, null, text, index, size);
    //},
  );

  /// sizeMax  
  static ColumnConfig sizeMax = ColumnConfig(
    key: 'sizeMax',
    title: 'sizeMax',
    noJson: true,
  );

  /// sizeMin  
  static ColumnConfig sizeMin = ColumnConfig(
    key: 'sizeMin',
    title: 'sizeMin',
    noJson: true,
  );

  /// type  
  static ColumnConfig type = ColumnConfig(
    key: 'type',
    title: 'type',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: FileSummary, index: number) =>{
    //  return type.renderColumn(record, null, text, index, type);
    //},
  );

  /// typeLike  
  static ColumnConfig typeLike = ColumnConfig(
    key: 'typeLike',
    title: 'typeLike',
    noJson: true,
  );

  /// type s  
  static ColumnConfig types = ColumnConfig(
    key: 'types',
    title: 'type',
    noJson: true,
    isArray: true,
  );

  /// uid  
  static ColumnConfig uid = ColumnConfig(
    key: 'uid',
    title: 'uid',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: FileSummary, index: number) =>{
    //  return uid.renderColumn(record, null, text, index, uid);
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
    //render: (text: any, record: FileSummary, index: number) =>{
    //  return updateTime.renderColumn(record, null, text, index, updateTime);
    //},
  );

  /// 更新时间Max  TIMESTAMP
  static ColumnConfig updateTimeMax = ColumnConfig(
    key: 'updateTimeMax',
    title: '更新时间Max',
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

  /// url  
  static ColumnConfig url = ColumnConfig(
    key: 'url',
    title: 'url',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: FileSummary, index: number) =>{
    //  return url.renderColumn(record, null, text, index, url);
    //},
  );

  /// userId  
  static ColumnConfig userId = ColumnConfig(
    key: 'userId',
    title: 'userId',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: FileSummary, index: number) =>{
    //  return userId.renderColumn(record, null, text, index, userId);
    //},
  );

  /// userId s  
  static ColumnConfig userIds = ColumnConfig(
    key: 'userIds',
    title: 'userId',
    noJson: true,
    isArray: true,
  );

}