///  Do not remove this unless you get business authorization.
///  City
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/city.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class CityColumns{

  /// cityId  
  static ColumnConfig cityId = ColumnConfig(
    key: 'cityId',
    title: 'cityId',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    rules: [
      ValidationRule(
        max: 32,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: City, index: number) =>{
    //  return cityId.renderColumn(record, null, text, index, cityId);
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
    //render: (text: any, record: City, index: number) =>{
    //  return name.renderColumn(record, null, text, index, name);
    //},
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
    //render: (text: any, record: City, index: number) =>{
    //  return pycode.renderColumn(record, null, text, index, pycode);
    //},
  );

  /// provinceId  
  static ColumnConfig provinceId = ColumnConfig(
    key: 'provinceId',
    title: 'provinceId',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: City, index: number) =>{
    //  return provinceId.renderColumn(record, null, text, index, provinceId);
    //},
  );

  /// postcode  
  static ColumnConfig postcode = ColumnConfig(
    key: 'postcode',
    title: 'postcode',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 50,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: City, index: number) =>{
    //  return postcode.renderColumn(record, null, text, index, postcode);
    //},
  );

  /// areacode  
  static ColumnConfig areacode = ColumnConfig(
    key: 'areacode',
    title: 'areacode',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 50,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: City, index: number) =>{
    //  return areacode.renderColumn(record, null, text, index, areacode);
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
    //render: (text: any, record: City, index: number) =>{
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
    //render: (text: any, record: City, index: number) =>{
    //  return updateTime.renderColumn(record, null, text, index, updateTime);
    //},
  );

  /// 是否删除(0:正常，1删除)  
  static ColumnConfig deleteFlag = ColumnConfig(
    key: 'deleteFlag',
    title: '是否删除(0:正常',
    // renderColumn: UIColumns.InputRender,
    hidden: true,
    //render: (text: any, record: City, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// cityId s  
  static ColumnConfig cityIds = ColumnConfig(
    key: 'cityIds',
    title: 'cityId',
    noJson: true,
    isArray: true,
  );

  /// nameLike  
  static ColumnConfig nameLike = ColumnConfig(
    key: 'nameLike',
    title: 'nameLike',
    noJson: true,
  );

  /// pycodeLike  
  static ColumnConfig pycodeLike = ColumnConfig(
    key: 'pycodeLike',
    title: 'pycodeLike',
    noJson: true,
  );

  /// provinceId s  
  static ColumnConfig provinceIds = ColumnConfig(
    key: 'provinceIds',
    title: 'provinceId',
    noJson: true,
    isArray: true,
  );

  /// postcodeLike  
  static ColumnConfig postcodeLike = ColumnConfig(
    key: 'postcodeLike',
    title: 'postcodeLike',
    noJson: true,
  );

  /// areacodeLike  
  static ColumnConfig areacodeLike = ColumnConfig(
    key: 'areacodeLike',
    title: 'areacodeLike',
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
    //render: (text: any, record: City, index: number) =>{
    //  return value.renderColumn(record, null, text, index, value);
    //},
  );

  /// title  
  static ColumnConfig title = ColumnConfig(
    key: 'title',
    title: 'title',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: City, index: number) =>{
    //  return title.renderColumn(record, null, text, index, title);
    //},
  );

}