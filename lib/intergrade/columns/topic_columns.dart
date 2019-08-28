///  Do not remove this unless you get business authorization.
///  Topic
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/topic.dart';
import '../enums/topictype.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class TopicColumns{

  /// author  
  static ColumnConfig author = ColumnConfig(
    key: 'author',
    title: 'author',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Topic, index: number) =>{
    //  return author.renderColumn(record, null, text, index, author);
    //},
  );

  /// replyCount  
  static ColumnConfig replyCount = ColumnConfig(
    key: 'replyCount',
    title: 'replyCount',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Topic, index: number) =>{
    //  return replyCount.renderColumn(record, null, text, index, replyCount);
    //},
  );

  /// 主题ID  
  static ColumnConfig topicId = ColumnConfig(
    key: 'topicId',
    title: '主题ID',
    // renderColumn: UIColumns.HiddenRender,
    isId: true,
    typeIsHidden: true,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    nullTitle: '请选择',
    //render: (text: any, record: Topic, index: number) =>{
    //  return topicId.renderColumn(record, null, text, index, topicId);
    //},
  );

  /// 作者ID  
  static ColumnConfig authorId = ColumnConfig(
    key: 'authorId',
    title: '作者ID',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Topic, index: number) =>{
    //  return authorId.renderColumn(record, null, text, index, authorId);
    //},
  );

  /// 主题类型  
  static ColumnConfig topicType = ColumnConfig(
    key: 'topicType',
    title: '主题类型',
    // renderColumn: UIColumns.SelectRender,
    isEnum: true,
    referConfig: ReferConfig(
      options: TopicType.topicTypeOptions,
    ),
    //render: (text: any, record: Topic, index: number) =>{
    //  return topicType.renderColumn(record, null, text, index, topicType);
    //},
  );

  /// 内容  
  static ColumnConfig content = ColumnConfig(
    key: 'content',
    title: '内容',
    // renderColumn: UIColumns.TextareaRender,
    rules: [
      ValidationRule(
        max: 65535,
        message: "最大不能超过{max}",
      ),
    ],
    nullTitle: '请选择',
    //render: (text: any, record: Topic, index: number) =>{
    //  return content.renderColumn(record, null, text, index, content);
    //},
  );

  /// 标题  
  static ColumnConfig title = ColumnConfig(
    key: 'title',
    title: '标题',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Topic, index: number) =>{
    //  return title.renderColumn(record, null, text, index, title);
    //},
  );

  /// 最后回复  TIMESTAMP
  static ColumnConfig lastReplyAt = ColumnConfig(
    key: 'lastReplyAt',
    title: '最后回复',
    // renderColumn: UIColumns.TimeStampRender,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: Topic, index: number) =>{
    //  return lastReplyAt.renderColumn(record, null, text, index, lastReplyAt);
    //},
  );

  /// 精华  
  static ColumnConfig good = ColumnConfig(
    key: 'good',
    title: '精华',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Topic, index: number) =>{
    //  return good.renderColumn(record, null, text, index, good);
    //},
  );

  /// 置顶  
  static ColumnConfig top = ColumnConfig(
    key: 'top',
    title: '置顶',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Topic, index: number) =>{
    //  return top.renderColumn(record, null, text, index, top);
    //},
  );

  /// 浏览次数  
  static ColumnConfig visitCount = ColumnConfig(
    key: 'visitCount',
    title: '浏览次数',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Topic, index: number) =>{
    //  return visitCount.renderColumn(record, null, text, index, visitCount);
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
    //render: (text: any, record: Topic, index: number) =>{
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
    //render: (text: any, record: Topic, index: number) =>{
    //  return updateTime.renderColumn(record, null, text, index, updateTime);
    //},
  );

  /// 是否删除(0:正常，1删除)  
  static ColumnConfig deleteFlag = ColumnConfig(
    key: 'deleteFlag',
    title: '是否删除(0:正常',
    // renderColumn: UIColumns.InputRender,
    hidden: true,
    //render: (text: any, record: Topic, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// 主题ID s  
  static ColumnConfig topicIds = ColumnConfig(
    key: 'topicIds',
    title: '主题ID',
    noJson: true,
    isArray: true,
  );

  /// 作者ID s  
  static ColumnConfig authorIds = ColumnConfig(
    key: 'authorIds',
    title: '作者ID',
    noJson: true,
    isArray: true,
  );

  /// 主题类型 s  
  static ColumnConfig topicTypes = ColumnConfig(
    key: 'topicTypes',
    title: '主题类型',
    noJson: true,
    isEnum: true,
    isArray: true,
    referConfig: ReferConfig(
      options: TopicType.topicTypeOptions,
    ),
  );

  /// 内容Like  
  static ColumnConfig contentLike = ColumnConfig(
    key: 'contentLike',
    title: '内容Like',
    noJson: true,
  );

  /// 标题Like  
  static ColumnConfig titleLike = ColumnConfig(
    key: 'titleLike',
    title: '标题Like',
    noJson: true,
  );

  /// 最后回复Min  TIMESTAMP
  static ColumnConfig lastReplyAtMin = ColumnConfig(
    key: 'lastReplyAtMin',
    title: '最后回复Min',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 最后回复Max  TIMESTAMP
  static ColumnConfig lastReplyAtMax = ColumnConfig(
    key: 'lastReplyAtMax',
    title: '最后回复Max',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 精华Min  
  static ColumnConfig goodMin = ColumnConfig(
    key: 'goodMin',
    title: '精华Min',
    noJson: true,
  );

  /// 精华Max  
  static ColumnConfig goodMax = ColumnConfig(
    key: 'goodMax',
    title: '精华Max',
    noJson: true,
  );

  /// 置顶Min  
  static ColumnConfig topMin = ColumnConfig(
    key: 'topMin',
    title: '置顶Min',
    noJson: true,
  );

  /// 置顶Max  
  static ColumnConfig topMax = ColumnConfig(
    key: 'topMax',
    title: '置顶Max',
    noJson: true,
  );

  /// 浏览次数Min  
  static ColumnConfig visitCountMin = ColumnConfig(
    key: 'visitCountMin',
    title: '浏览次数Min',
    noJson: true,
  );

  /// 浏览次数Max  
  static ColumnConfig visitCountMax = ColumnConfig(
    key: 'visitCountMax',
    title: '浏览次数Max',
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