///  Do not remove this unless you get business authorization.
///  TopicReply
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/user.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class TopicReplyFields {
  static const author = 'author';
  static const authorId = 'authorId';
  static const authorIds = 'authorIds';
  static const content = 'content';
  static const contentLike = 'contentLike';
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const id = 'id';
  static const isUped = 'isUped';
  static const parentReplyId = 'parentReplyId';
  static const parentReplyIds = 'parentReplyIds';
  static const replyId = 'replyId';
  static const replyIds = 'replyIds';
  static const topicId = 'topicId';
  static const topicIds = 'topicIds';
  static const upCount = 'upCount';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
  static const ups = 'ups';
}

class TopicReply with FrontBean {
  /// replyId
  static const String ID = TopicReplyFields.replyId;

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
      author: User.fromJson(json[TopicReplyFields.author]),
      authorId: JsonUtil.parseString(json[TopicReplyFields.authorId]),
      content: JsonUtil.parseString(json[TopicReplyFields.content]),
      createTime: JsonUtil.parseDateTime(json[TopicReplyFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[TopicReplyFields.deleteFlag]),
      id: JsonUtil.parseString(json[TopicReplyFields.id]),
      isUped: JsonUtil.parseBool(json[TopicReplyFields.isUped]),
      parentReplyId: JsonUtil.parseString(json[TopicReplyFields.parentReplyId]),
      replyId: JsonUtil.parseString(json[TopicReplyFields.replyId]),
      topicId: JsonUtil.parseString(json[TopicReplyFields.topicId]),
      upCount: JsonUtil.parseInt(json[TopicReplyFields.upCount]),
      updateTime: JsonUtil.parseDateTime(json[TopicReplyFields.updateTime]),
      ups: JsonUtil.parseList<String>(json[TopicReplyFields.ups], JsonUtil.parseString),
    );
  }

  static List<TopicReply> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, TopicReply.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.author != null) {
      result[TopicReplyFields.author] = author.toJson();
    }
    if (this.authorId != null) {
      result[TopicReplyFields.authorId] = JsonUtil.stringToJson(authorId);
    }
    if (this.authorIds != null) {
      var list = List();
      for (var v in authorIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[TopicReplyFields.authorIds] = list;
    }
    if (this.content != null) {
      result[TopicReplyFields.content] = JsonUtil.stringToJson(content);
    }
    if (this.contentLike != null) {
      result[TopicReplyFields.contentLike] = JsonUtil.stringToJson(contentLike);
    }
    if (this.createTime != null) {
      result[TopicReplyFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[TopicReplyFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[TopicReplyFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[TopicReplyFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.id != null) {
      result[TopicReplyFields.id] = JsonUtil.stringToJson(id);
    }
    if (this.isUped != null) {
      result[TopicReplyFields.isUped] = JsonUtil.boolToJson(isUped);
    }
    if (this.parentReplyId != null) {
      result[TopicReplyFields.parentReplyId] = JsonUtil.stringToJson(parentReplyId);
    }
    if (this.parentReplyIds != null) {
      var list = List();
      for (var v in parentReplyIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[TopicReplyFields.parentReplyIds] = list;
    }
    if (this.replyId != null) {
      result[TopicReplyFields.replyId] = JsonUtil.stringToJson(replyId);
    }
    if (this.replyIds != null) {
      var list = List();
      for (var v in replyIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[TopicReplyFields.replyIds] = list;
    }
    if (this.topicId != null) {
      result[TopicReplyFields.topicId] = JsonUtil.stringToJson(topicId);
    }
    if (this.topicIds != null) {
      var list = List();
      for (var v in topicIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[TopicReplyFields.topicIds] = list;
    }
    if (this.upCount != null) {
      result[TopicReplyFields.upCount] = JsonUtil.intToJson(upCount);
    }
    if (this.updateTime != null) {
      result[TopicReplyFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[TopicReplyFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[TopicReplyFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.ups != null) {
      var list = List();
      for (var v in ups) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[TopicReplyFields.ups] = list;
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

}

