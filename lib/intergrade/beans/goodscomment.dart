///  Do not remove this unless you get business authorization.
///  GoodsComment
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class GoodsCommentFields {
  static const comments = 'comments';
  static const commentsId = 'commentsId';
  static const commentsIds = 'commentsIds';
  static const commentsLike = 'commentsLike';
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const discussTime = 'discussTime';
  static const discussTimeMax = 'discussTimeMax';
  static const discussTimeMin = 'discussTimeMin';
  static const goodsId = 'goodsId';
  static const goodsIds = 'goodsIds';
  static const score = 'score';
  static const scoreMax = 'scoreMax';
  static const scoreMin = 'scoreMin';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
  static const userName = 'userName';
  static const userNameLike = 'userNameLike';
}

class GoodsComment with FrontBean {
  /// commentsId
  static const String ID = GoodsCommentFields.commentsId;

  /// comments
  String comments;

  /// commentsId
  String commentsId;

  /// commentsId s
  List<String> commentsIds;

  /// commentsLike
  String commentsLike;

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// discussTime
  DateTime discussTime;

  /// discussTimeMax
  DateTime discussTimeMax;

  /// discussTimeMin
  DateTime discussTimeMin;

  /// goodsId
  String goodsId;

  /// goodsId s
  List<String> goodsIds;

  /// score
  int score;

  /// scoreMax
  int scoreMax;

  /// scoreMin
  int scoreMin;

  /// 更新时间
  DateTime updateTime;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// userName
  String userName;

  /// userNameLike
  String userNameLike;

  GoodsComment({
    this.comments,
    this.commentsId,
    this.commentsIds,
    this.commentsLike,
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.discussTime,
    this.discussTimeMax,
    this.discussTimeMin,
    this.goodsId,
    this.goodsIds,
    this.score,
    this.scoreMax,
    this.scoreMin,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
    this.userName,
    this.userNameLike,
  });

  static GoodsComment fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return GoodsComment(
      comments: JsonUtil.parseString(json[GoodsCommentFields.comments]),
      commentsId: JsonUtil.parseString(json[GoodsCommentFields.commentsId]),
      createTime: JsonUtil.parseDateTime(json[GoodsCommentFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[GoodsCommentFields.deleteFlag]),
      discussTime: JsonUtil.parseDateTime(json[GoodsCommentFields.discussTime]),
      goodsId: JsonUtil.parseString(json[GoodsCommentFields.goodsId]),
      score: JsonUtil.parseInt(json[GoodsCommentFields.score]),
      updateTime: JsonUtil.parseDateTime(json[GoodsCommentFields.updateTime]),
      userName: JsonUtil.parseString(json[GoodsCommentFields.userName]),
    );
  }

  static List<GoodsComment> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, GoodsComment.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.comments != null) {
      result[GoodsCommentFields.comments] = JsonUtil.stringToJson(comments);
    }
    if (this.commentsId != null) {
      result[GoodsCommentFields.commentsId] = JsonUtil.stringToJson(commentsId);
    }
    if (this.commentsIds != null) {
      var list = List();
      for (var v in commentsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[GoodsCommentFields.commentsIds] = list;
    }
    if (this.commentsLike != null) {
      result[GoodsCommentFields.commentsLike] = JsonUtil.stringToJson(commentsLike);
    }
    if (this.createTime != null) {
      result[GoodsCommentFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[GoodsCommentFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[GoodsCommentFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[GoodsCommentFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.discussTime != null) {
      result[GoodsCommentFields.discussTime] = JsonUtil.dateTimeToJson(discussTime);
    }
    if (this.discussTimeMax != null) {
      result[GoodsCommentFields.discussTimeMax] = JsonUtil.dateTimeToJson(discussTimeMax);
    }
    if (this.discussTimeMin != null) {
      result[GoodsCommentFields.discussTimeMin] = JsonUtil.dateTimeToJson(discussTimeMin);
    }
    if (this.goodsId != null) {
      result[GoodsCommentFields.goodsId] = JsonUtil.stringToJson(goodsId);
    }
    if (this.goodsIds != null) {
      var list = List();
      for (var v in goodsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[GoodsCommentFields.goodsIds] = list;
    }
    if (this.score != null) {
      result[GoodsCommentFields.score] = JsonUtil.intToJson(score);
    }
    if (this.scoreMax != null) {
      result[GoodsCommentFields.scoreMax] = JsonUtil.intToJson(scoreMax);
    }
    if (this.scoreMin != null) {
      result[GoodsCommentFields.scoreMin] = JsonUtil.intToJson(scoreMin);
    }
    if (this.updateTime != null) {
      result[GoodsCommentFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[GoodsCommentFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[GoodsCommentFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.userName != null) {
      result[GoodsCommentFields.userName] = JsonUtil.stringToJson(userName);
    }
    if (this.userNameLike != null) {
      result[GoodsCommentFields.userNameLike] = JsonUtil.stringToJson(userNameLike);
    }
    return result;
  }

  static Map<String, GoodsComment> toIdMap(List<GoodsComment> goodsCommentList) {
    var result = Map<String, GoodsComment>();
    if (goodsCommentList != null) {
      for (var goodsComment in goodsCommentList) {
        if (goodsComment != null) {
          result[goodsComment.commentsId] = goodsComment;
        }
      }
    }
    return result;
  }

}

