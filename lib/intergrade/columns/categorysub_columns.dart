///  Do not remove this unless you get business authorization.
///  CategorySub
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/categorysub.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class CategorySubColumns{

  /// mallSubId  
  static ColumnConfig mallSubId = ColumnConfig(
    key: 'mallSubId',
    title: 'mallSubId',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: CategorySub, index: number) =>{
    //  return mallSubId.renderColumn(record, null, text, index, mallSubId);
    //},
  );

  /// mallCategoryId  
  static ColumnConfig mallCategoryId = ColumnConfig(
    key: 'mallCategoryId',
    title: 'mallCategoryId',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: CategorySub, index: number) =>{
    //  return mallCategoryId.renderColumn(record, null, text, index, mallCategoryId);
    //},
  );

  /// mallSubName  
  static ColumnConfig mallSubName = ColumnConfig(
    key: 'mallSubName',
    title: 'mallSubName',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: CategorySub, index: number) =>{
    //  return mallSubName.renderColumn(record, null, text, index, mallSubName);
    //},
  );

  /// comments  
  static ColumnConfig comments = ColumnConfig(
    key: 'comments',
    title: 'comments',
    // renderColumn: UIColumns.TextareaRender,
    rules: [
      ValidationRule(
        max: 65535,
        message: "最大不能超过{max}",
      ),
    ],
    nullTitle: '请选择',
    //render: (text: any, record: CategorySub, index: number) =>{
    //  return comments.renderColumn(record, null, text, index, comments);
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
    //render: (text: any, record: CategorySub, index: number) =>{
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
    //render: (text: any, record: CategorySub, index: number) =>{
    //  return updateTime.renderColumn(record, null, text, index, updateTime);
    //},
  );

  /// 是否删除(0:正常，1删除)  
  static ColumnConfig deleteFlag = ColumnConfig(
    key: 'deleteFlag',
    title: '是否删除(0:正常',
    // renderColumn: UIColumns.InputRender,
    hidden: true,
    //render: (text: any, record: CategorySub, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// mallSubId s  
  static ColumnConfig mallSubIds = ColumnConfig(
    key: 'mallSubIds',
    title: 'mallSubId',
    noJson: true,
    isArray: true,
  );

  /// mallCategoryId s  
  static ColumnConfig mallCategoryIds = ColumnConfig(
    key: 'mallCategoryIds',
    title: 'mallCategoryId',
    noJson: true,
    isArray: true,
  );

  /// mallSubNameLike  
  static ColumnConfig mallSubNameLike = ColumnConfig(
    key: 'mallSubNameLike',
    title: 'mallSubNameLike',
    noJson: true,
  );

  /// commentsLike  
  static ColumnConfig commentsLike = ColumnConfig(
    key: 'commentsLike',
    title: 'commentsLike',
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

}