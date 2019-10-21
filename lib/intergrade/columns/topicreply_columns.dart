///  Do not remove this unless you get business authorization.
///  TopicReply
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/topicreply.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class TopicReplyColumns{

  /// author  
  static ColumnConfig author = ColumnConfig(
    key: 'author',
    title: 'author',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: TopicReply, index: number) =>{
    //  return author.renderColumn(record, null, text, index, author);
    //},
  );

  /// authorId  
  static ColumnConfig authorId = ColumnConfig(
    key: 'authorId',
    title: 'authorId',
    // renderColumn: UIColumns.SelectRender,
    referConfig: ReferConfig(
      api: 'getUserOptions',
      referField: 'author',
    ),
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    nullTitle: '请选择',
    //render: (text: any, record: TopicReply, index: number) =>{
    //  return authorId.renderColumn(record, null, text, index, authorId);
    //},
  );

  /// authorId s  
  static ColumnConfig authorIds = ColumnConfig(
    key: 'authorIds',
    title: 'authorId',
    noJson: true,
    isArray: true,
  );

  /// content  
  static ColumnConfig content = ColumnConfig(
    key: 'content',
    title: 'content',
    // renderColumn: UIColumns.TextareaRender,
    rules: [
      ValidationRule(
        max: 65535,
        message: "最大不能超过{max}",
      ),
    ],
    nullTitle: '请选择',
    //render: (text: any, record: TopicReply, index: number) =>{
    //  return content.renderColumn(record, null, text, index, content);
    //},
  );

  /// contentLike  
  static ColumnConfig contentLike = ColumnConfig(
    key: 'contentLike',
    title: 'contentLike',
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
    //render: (text: any, record: TopicReply, index: number) =>{
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
    //render: (text: any, record: TopicReply, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// id  
  static ColumnConfig id = ColumnConfig(
    key: 'id',
    title: 'id',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: TopicReply, index: number) =>{
    //  return id.renderColumn(record, null, text, index, id);
    //},
  );

  /// isUped  
  static ColumnConfig isUped = ColumnConfig(
    key: 'isUped',
    title: 'isUped',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: TopicReply, index: number) =>{
    //  return isUped.renderColumn(record, null, text, index, isUped);
    //},
  );

  /// parentReplyId  
  static ColumnConfig parentReplyId = ColumnConfig(
    key: 'parentReplyId',
    title: 'parentReplyId',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: TopicReply, index: number) =>{
    //  return parentReplyId.renderColumn(record, null, text, index, parentReplyId);
    //},
  );

  /// parentReplyId s  
  static ColumnConfig parentReplyIds = ColumnConfig(
    key: 'parentReplyIds',
    title: 'parentReplyId',
    noJson: true,
    isArray: true,
  );

  /// replyId  
  static ColumnConfig replyId = ColumnConfig(
    key: 'replyId',
    title: 'replyId',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: TopicReply, index: number) =>{
    //  return replyId.renderColumn(record, null, text, index, replyId);
    //},
  );

  /// replyId s  
  static ColumnConfig replyIds = ColumnConfig(
    key: 'replyIds',
    title: 'replyId',
    noJson: true,
    isArray: true,
  );

  /// topicId  
  static ColumnConfig topicId = ColumnConfig(
    key: 'topicId',
    title: 'topicId',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: TopicReply, index: number) =>{
    //  return topicId.renderColumn(record, null, text, index, topicId);
    //},
  );

  /// topicId s  
  static ColumnConfig topicIds = ColumnConfig(
    key: 'topicIds',
    title: 'topicId',
    noJson: true,
    isArray: true,
  );

  /// upCount  
  static ColumnConfig upCount = ColumnConfig(
    key: 'upCount',
    title: 'upCount',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: TopicReply, index: number) =>{
    //  return upCount.renderColumn(record, null, text, index, upCount);
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
    //render: (text: any, record: TopicReply, index: number) =>{
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

  /// ups  
  static ColumnConfig ups = ColumnConfig(
    key: 'ups',
    title: 'ups',
    // renderColumn: UIColumns.InputRender,
    isArray: true,
    //render: (text: any, record: TopicReply, index: number) =>{
    //  return ups.renderColumn(record, null, text, index, ups);
    //},
  );

}