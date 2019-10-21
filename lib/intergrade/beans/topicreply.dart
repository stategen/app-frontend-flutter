///  Do not remove this unless you get business authorization.
///  TopicReply
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/user.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class TopicReply with FrontBean {
  /// replyId
  static const String TopicReply_ID = 'replyId';

  /// author
  User author;

  /// authorId
  String authorId;

  /// authorId s
  List<String> authorIds;

  /// content
  String content;

  /// contentLike
  String contentLike;

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// id
  String id;

  /// isUped
  bool isUped;

  /// parentReplyId
  String parentReplyId;

  /// parentReplyId s
  List<String> parentReplyIds;

  /// replyId
  String replyId;

  /// replyId s
  List<String> replyIds;

  /// topicId
  String topicId;

  /// topicId s
  List<String> topicIds;

  /// upCount
  int upCount;

  /// 更新时间
  DateTime updateTime;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// ups
  List<String> ups;

  TopicReply({
    this.author,
    this.authorId,
    this.authorIds,
    this.content,
    this.contentLike,
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.id,
    this.isUped,
    this.parentReplyId,
    this.parentReplyIds,
    this.replyId,
    this.replyIds,
    this.topicId,
    this.topicIds,
    this.upCount,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
    this.ups,
  });

  static TopicReply fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return TopicReply(
      author: User.fromJson(json['author']),
      authorId: JsonUtil.parseString(json['authorId']),
      content: JsonUtil.parseString(json['content']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      id: JsonUtil.parseString(json['id']),
      isUped: JsonUtil.parseBool(json['isUped']),
      parentReplyId: JsonUtil.parseString(json['parentReplyId']),
      replyId: JsonUtil.parseString(json['replyId']),
      topicId: JsonUtil.parseString(json['topicId']),
      upCount: JsonUtil.parseInt(json['upCount']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      ups: JsonUtil.parseList<String>(json['ups'], JsonUtil.parseString),
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
    if (this.id != null) {
      result['id'] = JsonUtil.stringToJson(id);
    }
    if (this.isUped != null) {
      result['isUped'] = JsonUtil.boolToJson(isUped);
    }
    if (this.parentReplyId != null) {
      result['parentReplyId'] = JsonUtil.stringToJson(parentReplyId);
    }
    if (this.parentReplyIds != null) {
      var list = List();
      for (var v in parentReplyIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['parentReplyIds'] = list;
    }
    if (this.replyId != null) {
      result['replyId'] = JsonUtil.stringToJson(replyId);
    }
    if (this.replyIds != null) {
      var list = List();
      for (var v in replyIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['replyIds'] = list;
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
    if (this.upCount != null) {
      result['upCount'] = JsonUtil.intToJson(upCount);
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
    if (this.ups != null) {
      var list = List();
      for (var v in ups) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['ups'] = list;
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

