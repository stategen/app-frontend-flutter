///  Do not remove this unless you get business authorization.
///  Province
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/province.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class ProvinceColumns{

  /// 创建时间  TIMESTAMP
  static ColumnConfig createTime = ColumnConfig(
    key: 'createTime',
    title: '创建时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: Province, index: number) =>{
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

  /// 是否删除(0:正常，1删除)  
  static ColumnConfig deleteFlag = ColumnConfig(
    key: 'deleteFlag',
    title: '是否删除(0:正常',
    // renderColumn: UIColumns.InputRender,
    hidden: true,
    //render: (text: any, record: Province, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// name  
  static ColumnConfig name = ColumnConfig(
    key: 'name',
    title: 'name',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 100,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Province, index: number) =>{
    //  return name.renderColumn(record, null, text, index, name);
    //},
  );

  /// nameLike  
  static ColumnConfig nameLike = ColumnConfig(
    key: 'nameLike',
    title: 'nameLike',
    noJson: true,
  );

  /// provinceId  
  static ColumnConfig provinceId = ColumnConfig(
    key: 'provinceId',
    title: 'provinceId',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Province, index: number) =>{
    //  return provinceId.renderColumn(record, null, text, index, provinceId);
    //},
  );

  /// provinceId s  
  static ColumnConfig provinceIds = ColumnConfig(
    key: 'provinceIds',
    title: 'provinceId',
    noJson: true,
    isArray: true,
  );

  /// pycode  
  static ColumnConfig pycode = ColumnConfig(
    key: 'pycode',
    title: 'pycode',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 50,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Province, index: number) =>{
    //  return pycode.renderColumn(record, null, text, index, pycode);
    //},
  );

  /// pycodeLike  
  static ColumnConfig pycodeLike = ColumnConfig(
    key: 'pycodeLike',
    title: 'pycodeLike',
    noJson: true,
  );

  /// title  
  static ColumnConfig title = ColumnConfig(
    key: 'title',
    title: 'title',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Province, index: number) =>{
    //  return title.renderColumn(record, null, text, index, title);
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
    //render: (text: any, record: Province, index: number) =>{
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

  /// value  
  static ColumnConfig value = ColumnConfig(
    key: 'value',
    title: 'value',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Province, index: number) =>{
    //  return value.renderColumn(record, null, text, index, value);
    //},
  );

}