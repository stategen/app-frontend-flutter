///  Do not remove this unless you get business authorization.
///  Category
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/category.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class CategoryColumns{

  /// 大类目录ID  
  static ColumnConfig categoryId = ColumnConfig(
    key: 'categoryId',
    title: '大类目录ID',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Category, index: number) =>{
    //  return categoryId.renderColumn(record, null, text, index, categoryId);
    //},
  );

  /// 大类目录ID s  
  static ColumnConfig categoryIds = ColumnConfig(
    key: 'categoryIds',
    title: '大类目录ID',
    noJson: true,
    isArray: true,
  );

  /// 大类目录名称  
  static ColumnConfig categoryName = ColumnConfig(
    key: 'categoryName',
    title: '大类目录名称',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Category, index: number) =>{
    //  return categoryName.renderColumn(record, null, text, index, categoryName);
    //},
  );

  /// 大类目录名称Like  
  static ColumnConfig categoryNameLike = ColumnConfig(
    key: 'categoryNameLike',
    title: '大类目录名称Like',
    noJson: true,
  );

  /// categorySubs  
  static ColumnConfig categorySubs = ColumnConfig(
    key: 'categorySubs',
    title: 'categorySubs',
    // renderColumn: UIColumns.InputRender,
    isArray: true,
    //render: (text: any, record: Category, index: number) =>{
    //  return categorySubs.renderColumn(record, null, text, index, categorySubs);
    //},
  );

  /// 描述  
  static ColumnConfig comments = ColumnConfig(
    key: 'comments',
    title: '描述',
    // renderColumn: UIColumns.TextareaRender,
    rules: [
      ValidationRule(
        max: 65535,
        message: "最大不能超过{max}",
      ),
    ],
    nullTitle: '请选择',
    //render: (text: any, record: Category, index: number) =>{
    //  return comments.renderColumn(record, null, text, index, comments);
    //},
  );

  /// 描述Like  
  static ColumnConfig commentsLike = ColumnConfig(
    key: 'commentsLike',
    title: '描述Like',
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
    //render: (text: any, record: Category, index: number) =>{
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
    //render: (text: any, record: Category, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// 图片地址  
  static ColumnConfig image = ColumnConfig(
    key: 'image',
    title: '图片地址',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Category, index: number) =>{
    //  return image.renderColumn(record, null, text, index, image);
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
    //render: (text: any, record: Category, index: number) =>{
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

}