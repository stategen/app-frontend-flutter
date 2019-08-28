///  Do not remove this unless you get business authorization.
///  TopicType
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/class_as_enum.dart';

class TopicType extends ClassAsEnum<TopicType> {
  const TopicType(value, title) : super(value, title);

  /// 精华
  static const good = TopicType("good", '精华');

  /// 分享
  static const share = TopicType("share", '分享');

  /// 问答
  static const ask = TopicType("ask", '问答');

  /// 招聘
  static const job = TopicType("job", '招聘');

  /// 测试
  static const dev = TopicType("dev", '测试');

  static Map<String, TopicType> _map = {
    good.value: good,
    share.value: share,
    ask.value: ask,
    job.value: job,
    dev.value: dev
  };

  static TopicType fromJson(dynamic value) {
    return _map[value];
  }

  static List<TopicType> fromJsonList(List<dynamic> values){
    return JsonUtil.parseList(values, TopicType.fromJson);
  }

  static Map<String, Option> topicTypeOptions ={
    /// 精华
    'good': Option(
      value: TopicType.good,
      label: '精华',
    ),

    /// 分享
    'share': Option(
      value: TopicType.share,
      label: '分享',
    ),

    /// 问答
    'ask': Option(
      value: TopicType.ask,
      label: '问答',
    ),

    /// 招聘
    'job': Option(
      value: TopicType.job,
      label: '招聘',
    ),

    /// 测试
    'dev': Option(
      value: TopicType.dev,
      label: '测试',
    )

  };
}
