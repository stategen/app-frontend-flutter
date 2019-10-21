///  Do not remove this unless you get business authorization.
///  Topic
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../enums/topictype.dart';
import '../beans/user.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class Topic with FrontBean {
  /// topicId
  static const String Topic_ID = 'topicId';

  /// author
  User author;

  /// 作者ID
  String authorId;

  /// 作者ID s
  List<String> authorIds;

  /// 内容
  String content;

  /// 内容Like
  String contentLike;

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// 精华
  int good;

  /// 精华Max
  int goodMax;

  /// 精华Min
  int goodMin;

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
    this.contentLike,
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.good,
    this.goodMax,
    this.goodMin,
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
      author: User.fromJson(json['author']),
      authorId: JsonUtil.parseString(json['authorId']),
      content: JsonUtil.parseString(json['content']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      good: JsonUtil.parseInt(json['good']),
      lastReplyAt: JsonUtil.parseDateTime(json['lastReplyAt']),
      replyCount: JsonUtil.parseInt(json['replyCount']),
      title: JsonUtil.parseString(json['title']),
      top: JsonUtil.parseInt(json['top']),
      topicId: JsonUtil.parseString(json['topicId']),
      topicType: TopicType.fromJson(json['topicType']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      visitCount: JsonUtil.parseInt(json['visitCount']),
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
    if (this.authorId != null) {
      result['authorId'] = JsonUtil.stringToJson(authorId);
    }
    if (this.authorIds != null) {
      var list = List();
      for (var v in authorIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['authorIds'] = list;
    }
    if (this.content != null) {
      result['content'] = JsonUtil.stringToJson(content);
    }
    if (this.contentLike != null) {
      result['contentLike'] = JsonUtil.stringToJson(contentLike);
    }
    if (this.createTime != null) {
      result['createTime'] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result['createTimeMax'] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result['createTimeMin'] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result['deleteFlag'] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.good != null) {
      result['good'] = JsonUtil.intToJson(good);
    }
    if (this.goodMax != null) {
      result['goodMax'] = JsonUtil.intToJson(goodMax);
    }
    if (this.goodMin != null) {
      result['goodMin'] = JsonUtil.intToJson(goodMin);
    }
    if (this.lastReplyAt != null) {
      result['lastReplyAt'] = JsonUtil.dateTimeToJson(lastReplyAt);
    }
    if (this.lastReplyAtMax != null) {
      result['lastReplyAtMax'] = JsonUtil.dateTimeToJson(lastReplyAtMax);
    }
    if (this.lastReplyAtMin != null) {
      result['lastReplyAtMin'] = JsonUtil.dateTimeToJson(lastReplyAtMin);
    }
    if (this.replyCount != null) {
      result['replyCount'] = JsonUtil.intToJson(replyCount);
    }
    if (this.title != null) {
      result['title'] = JsonUtil.stringToJson(title);
    }
    if (this.titleLike != null) {
      result['titleLike'] = JsonUtil.stringToJson(titleLike);
    }
    if (this.top != null) {
      result['top'] = JsonUtil.intToJson(top);
    }
    if (this.topMax != null) {
      result['topMax'] = JsonUtil.intToJson(topMax);
    }
    if (this.topMin != null) {
      result['topMin'] = JsonUtil.intToJson(topMin);
    }
    if (this.topicId != null) {
      result['topicId'] = JsonUtil.stringToJson(topicId);
    }
    if (this.topicIds != null) {
      var list = List();
      for (var v in topicIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['topicIds'] = list;
    }
    if (this.topicType != null) {
      result['topicType'] = topicType.toString();
    }
    if (this.topicTypes != null) {
      var list = List();
      for (var v in topicTypes) {
        list.add(v.toString());
      }
      result['topicTypes'] = list;
    }
    if (this.updateTime != null) {
      result['updateTime'] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result['updateTimeMax'] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result['updateTimeMin'] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.visitCount != null) {
      result['visitCount'] = JsonUtil.intToJson(visitCount);
    }
    if (this.visitCountMax != null) {
      result['visitCountMax'] = JsonUtil.intToJson(visitCountMax);
    }
    if (this.visitCountMin != null) {
      result['visitCountMin'] = JsonUtil.intToJson(visitCountMin);
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

