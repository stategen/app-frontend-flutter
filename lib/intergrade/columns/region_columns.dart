///  Do not remove this unless you get business authorization.
///  Region
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/region.dart';
import '../enums/regiontype.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class RegionColumns{

  /// 代码  
  static ColumnConfig code = ColumnConfig(
    key: 'code',
    title: '代码',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 50,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Region, index: number) =>{
    //  return code.renderColumn(record, null, text, index, code);
    //},
  );

  /// 代码Like  
  static ColumnConfig codeLike = ColumnConfig(
    key: 'codeLike',
    title: '代码Like',
    noJson: true,
  );

  /// 创建时间  TIMESTAMP
  static ColumnConfig createTime = ColumnConfig(
    key: 'createTime',
    title: '创建时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: Region, index: number) =>{
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
    //render: (text: any, record: Region, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// isLeaf  
  static ColumnConfig isLeaf = ColumnConfig(
    key: 'isLeaf',
    title: 'isLeaf',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Region, index: number) =>{
    //  return isLeaf.renderColumn(record, null, text, index, isLeaf);
    //},
  );

  /// 层级  
  static ColumnConfig level = ColumnConfig(
    key: 'level',
    title: '层级',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Region, index: number) =>{
    //  return level.renderColumn(record, null, text, index, level);
    //},
  );

  /// 层级Max  
  static ColumnConfig levelMax = ColumnConfig(
    key: 'levelMax',
    title: '层级Max',
    noJson: true,
  );

  /// 层级Min  
  static ColumnConfig levelMin = ColumnConfig(
    key: 'levelMin',
    title: '层级Min',
    noJson: true,
  );

  /// 中文名称  
  static ColumnConfig name = ColumnConfig(
    key: 'name',
    title: '中文名称',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Region, index: number) =>{
    //  return name.renderColumn(record, null, text, index, name);
    //},
  );

  /// 英文名称  
  static ColumnConfig nameEn = ColumnConfig(
    key: 'nameEn',
    title: '英文名称',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Region, index: number) =>{
    //  return nameEn.renderColumn(record, null, text, index, nameEn);
    //},
  );

  /// 英文名称Like  
  static ColumnConfig nameEnLike = ColumnConfig(
    key: 'nameEnLike',
    title: '英文名称Like',
    noJson: true,
  );

  /// 中文名称Like  
  static ColumnConfig nameLike = ColumnConfig(
    key: 'nameLike',
    title: '中文名称Like',
    noJson: true,
  );

  /// 中文拼音  
  static ColumnConfig namePinyin = ColumnConfig(
    key: 'namePinyin',
    title: '中文拼音',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Region, index: number) =>{
    //  return namePinyin.renderColumn(record, null, text, index, namePinyin);
    //},
  );

  /// 中文拼音Like  
  static ColumnConfig namePinyinLike = ColumnConfig(
    key: 'namePinyinLike',
    title: '中文拼音Like',
    noJson: true,
  );

  /// 父ID  
  static ColumnConfig parentRegionId = ColumnConfig(
    key: 'parentRegionId',
    title: '父ID',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Region, index: number) =>{
    //  return parentRegionId.renderColumn(record, null, text, index, parentRegionId);
    //},
  );

  /// 父ID s  
  static ColumnConfig parentRegionIds = ColumnConfig(
    key: 'parentRegionIds',
    title: '父ID',
    noJson: true,
    isArray: true,
  );

  /// 路径  
  static ColumnConfig path = ColumnConfig(
    key: 'path',
    title: '路径',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Region, index: number) =>{
    //  return path.renderColumn(record, null, text, index, path);
    //},
  );

  /// 路径Like  
  static ColumnConfig pathLike = ColumnConfig(
    key: 'pathLike',
    title: '路径Like',
    noJson: true,
  );

  /// 主键  
  static ColumnConfig regionId = ColumnConfig(
    key: 'regionId',
    title: '主键',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    //render: (text: any, record: Region, index: number) =>{
    //  return regionId.renderColumn(record, null, text, index, regionId);
    //},
  );

  /// 主键 s  
  static ColumnConfig regionIds = ColumnConfig(
    key: 'regionIds',
    title: '主键',
    noJson: true,
    isArray: true,
  );

  /// regionType  
  static ColumnConfig regionType = ColumnConfig(
    key: 'regionType',
    title: 'regionType',
    // renderColumn: UIColumns.SelectRender,
    isEnum: true,
    referConfig: ReferConfig(
      options: RegionType.regionTypeOptions,
    ),
    //render: (text: any, record: Region, index: number) =>{
    //  return regionType.renderColumn(record, null, text, index, regionType);
    //},
  );

  /// regionType s  
  static ColumnConfig regionTypes = ColumnConfig(
    key: 'regionTypes',
    title: 'regionType',
    noJson: true,
    isEnum: true,
    isArray: true,
    referConfig: ReferConfig(
      options: RegionType.regionTypeOptions,
    ),
  );

  /// title  
  static ColumnConfig title = ColumnConfig(
    key: 'title',
    title: 'title',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Region, index: number) =>{
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
    //render: (text: any, record: Region, index: number) =>{
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
    //render: (text: any, record: Region, index: number) =>{
    //  return value.renderColumn(record, null, text, index, value);
    //},
  );

}