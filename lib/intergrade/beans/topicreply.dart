///  Do not remove this unless you get business authorization.
///  TopicReply
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/user.dart';
import '../../stgutil/json_util.dart';

class TopicReply {
  /// replyId
  static const String TopicReply_ID = 'replyId';

  /// author
  User author;

  /// ups
  List<String> ups;

  /// isUped
  bool isUped;

  /// upCount
  int upCount;

  /// replyId
  String replyId;

  /// topicId
  String topicId;

  /// authorId
  String authorId;

  /// content
  String content;

  /// parentReplyId
  String parentReplyId;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// replyId s
  List<String> replyIds;

  /// topicId s
  List<String> topicIds;

  /// authorId s
  List<String> authorIds;

  /// contentLike
  String contentLike;

  /// parentReplyId s
  List<String> parentReplyIds;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// id
  String id;

  TopicReply({
    this.author,
    this.ups,
    this.isUped,
    this.upCount,
    this.replyId,
    this.topicId,
    this.authorId,
    this.content,
    this.parentReplyId,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.replyIds,
    this.topicIds,
    this.authorIds,
    this.contentLike,
    this.parentReplyIds,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
    this.id,
  });

  static TopicReply fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return TopicReply(
      author: User.fromJson(json['author']),
      ups: JsonUtil.parseList<String>(json['ups'], JsonUtil.parseString),
      isUped: JsonUtil.parseBool(json['isUped']),
      upCount: JsonUtil.parseInt(json['upCount']),
      replyId: JsonUtil.parseString(json['replyId']),
      topicId: JsonUtil.parseString(json['topicId']),
      authorId: JsonUtil.parseString(json['authorId']),
      content: JsonUtil.parseString(json['content']),
      parentReplyId: JsonUtil.parseString(json['parentReplyId']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      replyIds: JsonUtil.parseList<String>(json['replyIds'], JsonUtil.parseString),
      topicIds: JsonUtil.parseList<String>(json['topicIds'], JsonUtil.parseString),
      authorIds: JsonUtil.parseList<String>(json['authorIds'], JsonUtil.parseString),
      contentLike: JsonUtil.parseString(json['contentLike']),
      parentReplyIds: JsonUtil.parseList<String>(json['parentReplyIds'], JsonUtil.parseString),
      createTimeMin: JsonUtil.parseDateTime(json['createTimeMin']),
      createTimeMax: JsonUtil.parseDateTime(json['createTimeMax']),
      updateTimeMin: JsonUtil.parseDateTime(json['updateTimeMin']),
      updateTimeMax: JsonUtil.parseDateTime(json['updateTimeMax']),
      id: JsonUtil.parseString(json['id']),
    );
  }

  static List<TopicReply> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, TopicReply.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.author != null) {
      result['author'] = author.toMap();
    }
    if (this.ups != null) {
      var list = List();
      for (var v in ups) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['ups'] = list;
    }
    if (this.isUped != null) {
      result['isUped'] = JsonUtil.boolToJson(isUped);
    }
    if (this.upCount != null) {
      result['upCount'] = JsonUtil.intToJson(upCount);
    }
    if (this.replyId != null) {
      result['replyId'] = JsonUtil.stringToJson(replyId);
    }
    if (this.topicId != null) {
      result['topicId'] = JsonUtil.stringToJson(topicId);
    }
    if (this.authorId != null) {
      result['authorId'] = JsonUtil.stringToJson(authorId);
    }
    if (this.content != null) {
      result['content'] = JsonUtil.stringToJson(content);
    }
    if (this.parentReplyId != null) {
      result['parentReplyId'] = JsonUtil.stringToJson(parentReplyId);
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
    if (this.replyIds != null) {
      var list = List();
      for (var v in replyIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['replyIds'] = list;
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
    if (this.contentLike != null) {
      result['contentLike'] = JsonUtil.stringToJson(contentLike);
    }
    if (this.parentReplyIds != null) {
      var list = List();
      for (var v in parentReplyIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['parentReplyIds'] = list;
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
    if (this.id != null) {
      result['id'] = JsonUtil.stringToJson(id);
    }
    return result;
  }

  static Map<String, TopicReply> toIdMap(List<TopicReply> topicReplyList) {
    var result = Map<String, TopicReply>();
    if (topicReplyList != null) {
      for (var topicReply in topicReplyList) {
        if (topicReply != null) {
          result[topicReply.replyId] = topicReply;
        }
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<TopicReply> topicReplyList) {
    var result = List<Map<String, dynamic>>();
    if (topicReplyList != null) {
      for (var topicReply in topicReplyList) {
        if (topicReply != null) {
          result.add(topicReply.toMap());
        }
      }
    }
    return result;
  }

}

