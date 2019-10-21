///  Do not remove this unless you get business authorization.
///  GoodsComment
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/goodscomment.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class GoodsCommentColumns{

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
    //render: (text: any, record: GoodsComment, index: number) =>{
    //  return comments.renderColumn(record, null, text, index, comments);
    //},
  );

  /// commentsId  
  static ColumnConfig commentsId = ColumnConfig(
    key: 'commentsId',
    title: 'commentsId',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: GoodsComment, index: number) =>{
    //  return commentsId.renderColumn(record, null, text, index, commentsId);
    //},
  );

  /// commentsId s  
  static ColumnConfig commentsIds = ColumnConfig(
    key: 'commentsIds',
    title: 'commentsId',
    noJson: true,
    isArray: true,
  );

  /// commentsLike  
  static ColumnConfig commentsLike = ColumnConfig(
    key: 'commentsLike',
    title: 'commentsLike',
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
    //render: (text: any, record: GoodsComment, index: number) =>{
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
    //render: (text: any, record: GoodsComment, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// discussTime  TIMESTAMP
  static ColumnConfig discussTime = ColumnConfig(
    key: 'discussTime',
    title: 'discussTime',
    // renderColumn: UIColumns.TimeStampRender,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: GoodsComment, index: number) =>{
    //  return discussTime.renderColumn(record, null, text, index, discussTime);
    //},
  );

  /// discussTimeMax  TIMESTAMP
  static ColumnConfig discussTimeMax = ColumnConfig(
    key: 'discussTimeMax',
    title: 'discussTimeMax',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// discussTimeMin  TIMESTAMP
  static ColumnConfig discussTimeMin = ColumnConfig(
    key: 'discussTimeMin',
    title: 'discussTimeMin',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// goodsId  
  static ColumnConfig goodsId = ColumnConfig(
    key: 'goodsId',
    title: 'goodsId',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: GoodsComment, index: number) =>{
    //  return goodsId.renderColumn(record, null, text, index, goodsId);
    //},
  );

  /// goodsId s  
  static ColumnConfig goodsIds = ColumnConfig(
    key: 'goodsIds',
    title: 'goodsId',
    noJson: true,
    isArray: true,
  );

  /// sCORE  
  static ColumnConfig sCORE = ColumnConfig(
    key: 'sCORE',
    title: 'sCORE',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: GoodsComment, index: number) =>{
    //  return sCORE.renderColumn(record, null, text, index, sCORE);
    //},
  );

  /// scoreMax  
  static ColumnConfig scoreMax = ColumnConfig(
    key: 'scoreMax',
    title: 'scoreMax',
    noJson: true,
  );

  /// scoreMin  
  static ColumnConfig scoreMin = ColumnConfig(
    key: 'scoreMin',
    title: 'scoreMin',
    noJson: true,
  );

  /// 更新时间  TIMESTAMP
  static ColumnConfig updateTime = ColumnConfig(
    key: 'updateTime',
    title: '更新时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: GoodsComment, index: number) =>{
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

  /// userName  
  static ColumnConfig userName = ColumnConfig(
    key: 'userName',
    title: 'userName',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 32,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: GoodsComment, index: number) =>{
    //  return userName.renderColumn(record, null, text, index, userName);
    //},
  );

  /// userNameLike  
  static ColumnConfig userNameLike = ColumnConfig(
    key: 'userNameLike',
    title: 'userNameLike',
    noJson: true,
  );

}