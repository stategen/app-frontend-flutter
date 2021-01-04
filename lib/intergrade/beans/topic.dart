///  Do not remove this unless you get business authorization.
///  Topic
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../enums/topictype.dart';
import '../beans/user.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class TopicFields {
  static const author = 'author';
  static const authorId = 'authorId';
  static const authorIds = 'authorIds';
  static const content = 'content';
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const currOrgId = 'currOrgId';
  static const currUserId = 'currUserId';
  static const deleteFlag = 'deleteFlag';
  static const good = 'good';
  static const goodMax = 'goodMax';
  static const goodMin = 'goodMin';
  static const inclCurrOrgId = 'inclCurrOrgId';
  static const lastReplyAt = 'lastReplyAt';
  static const lastReplyAtMax = 'lastReplyAtMax';
  static const lastReplyAtMin = 'lastReplyAtMin';
  static const replyCount = 'replyCount';
  static const title = 'title';
  static const titleLike = 'titleLike';
  static const top = 'top';
  static const topMax = 'topMax';
  static const topMin = 'topMin';
  static const topicId = 'topicId';
  static const topicIds = 'topicIds';
  static const topicType = 'topicType';
  static const topicTypes = 'topicTypes';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
  static const visitCount = 'visitCount';
  static const visitCountMax = 'visitCountMax';
  static const visitCountMin = 'visitCountMin';
}

class Topic with FrontBean {
  /// topicId
  static const String ID = TopicFields.topicId;

  /// author
  User author;

  /// 作者ID
  String authorId;

  /// 作者ID s
  List<String> authorIds;

  /// 内容
  String content;

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 树(类似部门)主键currOrgId
  int currOrgId;

  /// 所有者currUserId
  String currUserId;

  /// 是否删除(0:正常，1删除)
  bool deleteFlag;

  /// 精华
  int good;

  /// 精华Max
  int goodMax;

  /// 精华Min
  int goodMin;

  /// inclCurrOrgId
  bool inclCurrOrgId;

  /// 最后回复
  DateTime lastReplyAt;

  /// 最后回复Max
  DateTime lastReplyAtMax;

  /// 最后回复Min
  DateTime lastReplyAtMin;

  /// replyCount
  int replyCount;

  /// 标题
  String title;

  /// 标题Like
  String titleLike;

  /// 置顶
  int top;

  /// 置顶Max
  int topMax;

  /// 置顶Min
  int topMin;

  /// 主题ID
  String topicId;

  /// 主题ID s
  List<String> topicIds;

  /// 主题类型
  TopicType topicType;

  /// 主题类型 s
  List<TopicType> topicTypes;

  /// 更新时间
  DateTime updateTime;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 浏览次数
  int visitCount;

  /// 浏览次数Max
  int visitCountMax;

  /// 浏览次数Min
  int visitCountMin;

  Topic({
    this.author,
    this.authorId,
    this.authorIds,
    this.content,
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.currOrgId,
    this.currUserId,
    this.deleteFlag,
    this.good,
    this.goodMax,
    this.goodMin,
    this.inclCurrOrgId,
    this.lastReplyAt,
    this.lastReplyAtMax,
    this.lastReplyAtMin,
    this.replyCount,
    this.title,
    this.titleLike,
    this.top,
    this.topMax,
    this.topMin,
    this.topicId,
    this.topicIds,
    this.topicType,
    this.topicTypes,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
    this.visitCount,
    this.visitCountMax,
    this.visitCountMin,
  });

  static Topic fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Topic(
      author: User.fromJson(json[TopicFields.author]),
      authorId: JsonUtil.parseString(json[TopicFields.authorId]),
      content: JsonUtil.parseString(json[TopicFields.content]),
      createTime: JsonUtil.parseDateTime(json[TopicFields.createTime]),
      deleteFlag: JsonUtil.parseBool(json[TopicFields.deleteFlag]),
      good: JsonUtil.parseInt(json[TopicFields.good]),
      lastReplyAt: JsonUtil.parseDateTime(json[TopicFields.lastReplyAt]),
      replyCount: JsonUtil.parseInt(json[TopicFields.replyCount]),
      title: JsonUtil.parseString(json[TopicFields.title]),
      top: JsonUtil.parseInt(json[TopicFields.top]),
      topicId: JsonUtil.parseString(json[TopicFields.topicId]),
      topicType: TopicType.fromJson(json[TopicFields.topicType]),
      updateTime: JsonUtil.parseDateTime(json[TopicFields.updateTime]),
      visitCount: JsonUtil.parseInt(json[TopicFields.visitCount]),
    );
  }

  static List<Topic> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Topic.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.author != null) {
      result[TopicFields.author] = author.toJson();
    }
    if (this.authorId != null) {
      result[TopicFields.authorId] = JsonUtil.stringToJson(authorId);
    }
    if (this.authorIds != null) {
      var list = List();
      for (var v in authorIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[TopicFields.authorIds] = list;
    }
    if (this.content != null) {
      result[TopicFields.content] = JsonUtil.stringToJson(content);
    }
    if (this.createTime != null) {
      result[TopicFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[TopicFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[TopicFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.currOrgId != null) {
      result[TopicFields.currOrgId] = JsonUtil.intToJson(currOrgId);
    }
    if (this.currUserId != null) {
      result[TopicFields.currUserId] = JsonUtil.stringToJson(currUserId);
    }
    if (this.deleteFlag != null) {
      result[TopicFields.deleteFlag] = JsonUtil.boolToJson(deleteFlag);
    }
    if (this.good != null) {
      result[TopicFields.good] = JsonUtil.intToJson(good);
    }
    if (this.goodMax != null) {
      result[TopicFields.goodMax] = JsonUtil.intToJson(goodMax);
    }
    if (this.goodMin != null) {
      result[TopicFields.goodMin] = JsonUtil.intToJson(goodMin);
    }
    if (this.inclCurrOrgId != null) {
      result[TopicFields.inclCurrOrgId] = JsonUtil.boolToJson(inclCurrOrgId);
    }
    if (this.lastReplyAt != null) {
      result[TopicFields.lastReplyAt] = JsonUtil.dateTimeToJson(lastReplyAt);
    }
    if (this.lastReplyAtMax != null) {
      result[TopicFields.lastReplyAtMax] = JsonUtil.dateTimeToJson(lastReplyAtMax);
    }
    if (this.lastReplyAtMin != null) {
      result[TopicFields.lastReplyAtMin] = JsonUtil.dateTimeToJson(lastReplyAtMin);
    }
    if (this.replyCount != null) {
      result[TopicFields.replyCount] = JsonUtil.intToJson(replyCount);
    }
    if (this.title != null) {
      result[TopicFields.title] = JsonUtil.stringToJson(title);
    }
    if (this.titleLike != null) {
      result[TopicFields.titleLike] = JsonUtil.stringToJson(titleLike);
    }
    if (this.top != null) {
      result[TopicFields.top] = JsonUtil.intToJson(top);
    }
    if (this.topMax != null) {
      result[TopicFields.topMax] = JsonUtil.intToJson(topMax);
    }
    if (this.topMin != null) {
      result[TopicFields.topMin] = JsonUtil.intToJson(topMin);
    }
    if (this.topicId != null) {
      result[TopicFields.topicId] = JsonUtil.stringToJson(topicId);
    }
    if (this.topicIds != null) {
      var list = List();
      for (var v in topicIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[TopicFields.topicIds] = list;
    }
    if (this.topicType != null) {
      result[TopicFields.topicType] = topicType.toString();
    }
    if (this.topicTypes != null) {
      var list = List();
      for (var v in topicTypes) {
        list.add(v.toString());
      }
      result[TopicFields.topicTypes] = list;
    }
    if (this.updateTime != null) {
      result[TopicFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[TopicFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[TopicFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.visitCount != null) {
      result[TopicFields.visitCount] = JsonUtil.intToJson(visitCount);
    }
    if (this.visitCountMax != null) {
      result[TopicFields.visitCountMax] = JsonUtil.intToJson(visitCountMax);
    }
    if (this.visitCountMin != null) {
      result[TopicFields.visitCountMin] = JsonUtil.intToJson(visitCountMin);
    }
    return result;
  }

  static Map<String, Topic> toIdMap(List<Topic> topicList) {
    var result = Map<String, Topic>();
    if (topicList != null) {
      for (var topic in topicList) {
        if (topic != null) {
          result[topic.topicId] = topic;
        }
      }
    }
    return result;
  }

}

