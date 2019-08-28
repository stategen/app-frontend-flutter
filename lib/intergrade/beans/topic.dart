///  Do not remove this unless you get business authorization.
///  Topic
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../enums/topictype.dart';
import '../beans/user.dart';
import '../../stgutil/json_util.dart';

class Topic {
  /// topicId
  static const String Topic_ID = 'topicId';

  /// author
  User author;

  /// replyCount
  int replyCount;

  /// 主题ID
  String topicId;

  /// 作者ID
  String authorId;

  /// 主题类型
  TopicType topicType;

  /// 内容
  String content;

  /// 标题
  String title;

  /// 最后回复
  DateTime lastReplyAt;

  /// 精华
  int good;

  /// 置顶
  int top;

  /// 浏览次数
  int visitCount;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// 主题ID s
  List<String> topicIds;

  /// 作者ID s
  List<String> authorIds;

  /// 主题类型 s
  List<TopicType> topicTypes;

  /// 内容Like
  String contentLike;

  /// 标题Like
  String titleLike;

  /// 最后回复Min
  DateTime lastReplyAtMin;

  /// 最后回复Max
  DateTime lastReplyAtMax;

  /// 精华Min
  int goodMin;

  /// 精华Max
  int goodMax;

  /// 置顶Min
  int topMin;

  /// 置顶Max
  int topMax;

  /// 浏览次数Min
  int visitCountMin;

  /// 浏览次数Max
  int visitCountMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 更新时间Max
  DateTime updateTimeMax;

  Topic({
    this.author,
    this.replyCount,
    this.topicId,
    this.authorId,
    this.topicType,
    this.content,
    this.title,
    this.lastReplyAt,
    this.good,
    this.top,
    this.visitCount,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.topicIds,
    this.authorIds,
    this.topicTypes,
    this.contentLike,
    this.titleLike,
    this.lastReplyAtMin,
    this.lastReplyAtMax,
    this.goodMin,
    this.goodMax,
    this.topMin,
    this.topMax,
    this.visitCountMin,
    this.visitCountMax,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
  });

  static Topic fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Topic(
      author: User.fromJson(json['author']),
      replyCount: JsonUtil.parseInt(json['replyCount']),
      topicId: JsonUtil.parseString(json['topicId']),
      authorId: JsonUtil.parseString(json['authorId']),
      topicType: TopicType.fromJson(json['topicType']),
      content: JsonUtil.parseString(json['content']),
      title: JsonUtil.parseString(json['title']),
      lastReplyAt: JsonUtil.parseDateTime(json['lastReplyAt']),
      good: JsonUtil.parseInt(json['good']),
      top: JsonUtil.parseInt(json['top']),
      visitCount: JsonUtil.parseInt(json['visitCount']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      topicIds: JsonUtil.parseList<String>(json['topicIds'], JsonUtil.parseString),
      authorIds: JsonUtil.parseList<String>(json['authorIds'], JsonUtil.parseString),
      topicTypes: TopicType.fromJsonList(json['topicTypes']),
      contentLike: JsonUtil.parseString(json['contentLike']),
      titleLike: JsonUtil.parseString(json['titleLike']),
      lastReplyAtMin: JsonUtil.parseDateTime(json['lastReplyAtMin']),
      lastReplyAtMax: JsonUtil.parseDateTime(json['lastReplyAtMax']),
      goodMin: JsonUtil.parseInt(json['goodMin']),
      goodMax: JsonUtil.parseInt(json['goodMax']),
      topMin: JsonUtil.parseInt(json['topMin']),
      topMax: JsonUtil.parseInt(json['topMax']),
      visitCountMin: JsonUtil.parseInt(json['visitCountMin']),
      visitCountMax: JsonUtil.parseInt(json['visitCountMax']),
      createTimeMin: JsonUtil.parseDateTime(json['createTimeMin']),
      createTimeMax: JsonUtil.parseDateTime(json['createTimeMax']),
      updateTimeMin: JsonUtil.parseDateTime(json['updateTimeMin']),
      updateTimeMax: JsonUtil.parseDateTime(json['updateTimeMax']),
    );
  }

  static List<Topic> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Topic.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.author != null) {
      result['author'] = author.toMap();
    }
    if (this.replyCount != null) {
      result['replyCount'] = JsonUtil.intToJson(replyCount);
    }
    if (this.topicId != null) {
      result['topicId'] = JsonUtil.stringToJson(topicId);
    }
    if (this.authorId != null) {
      result['authorId'] = JsonUtil.stringToJson(authorId);
    }
    if (this.topicType != null) {
      result['topicType'] = topicType.toString();
    }
    if (this.content != null) {
      result['content'] = JsonUtil.stringToJson(content);
    }
    if (this.title != null) {
      result['title'] = JsonUtil.stringToJson(title);
    }
    if (this.lastReplyAt != null) {
      result['lastReplyAt'] = JsonUtil.dateTimeToJson(lastReplyAt);
    }
    if (this.good != null) {
      result['good'] = JsonUtil.intToJson(good);
    }
    if (this.top != null) {
      result['top'] = JsonUtil.intToJson(top);
    }
    if (this.visitCount != null) {
      result['visitCount'] = JsonUtil.intToJson(visitCount);
    }
    if (this.createTime != null) {
      result['createTime'] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.updateTime != null) {
      result['updateTime'] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.deleteFlag != null) {
      result['deleteFlag'] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.topicIds != null) {
      var list = List();
      for (var v in topicIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['topicIds'] = list;
    }
    if (this.authorIds != null) {
      var list = List();
      for (var v in authorIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['authorIds'] = list;
    }
    if (this.topicTypes != null) {
      var list = List();
      for (var v in topicTypes) {
        list.add(v.toString());
      }
      result['topicTypes'] = list;
    }
    if (this.contentLike != null) {
      result['contentLike'] = JsonUtil.stringToJson(contentLike);
    }
    if (this.titleLike != null) {
      result['titleLike'] = JsonUtil.stringToJson(titleLike);
    }
    if (this.lastReplyAtMin != null) {
      result['lastReplyAtMin'] = JsonUtil.dateTimeToJson(lastReplyAtMin);
    }
    if (this.lastReplyAtMax != null) {
      result['lastReplyAtMax'] = JsonUtil.dateTimeToJson(lastReplyAtMax);
    }
    if (this.goodMin != null) {
      result['goodMin'] = JsonUtil.intToJson(goodMin);
    }
    if (this.goodMax != null) {
      result['goodMax'] = JsonUtil.intToJson(goodMax);
    }
    if (this.topMin != null) {
      result['topMin'] = JsonUtil.intToJson(topMin);
    }
    if (this.topMax != null) {
      result['topMax'] = JsonUtil.intToJson(topMax);
    }
    if (this.visitCountMin != null) {
      result['visitCountMin'] = JsonUtil.intToJson(visitCountMin);
    }
    if (this.visitCountMax != null) {
      result['visitCountMax'] = JsonUtil.intToJson(visitCountMax);
    }
    if (this.createTimeMin != null) {
      result['createTimeMin'] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.createTimeMax != null) {
      result['createTimeMax'] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.updateTimeMin != null) {
      result['updateTimeMin'] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.updateTimeMax != null) {
      result['updateTimeMax'] = JsonUtil.dateTimeToJson(updateTimeMax);
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

  static List<Map<String, dynamic>> toMaps(List<Topic> topicList) {
    var result = List<Map<String, dynamic>>();
    if (topicList != null) {
      for (var topic in topicList) {
        if (topic != null) {
          result.add(topic.toMap());
        }
      }
    }
    return result;
  }

}

