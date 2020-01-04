///  Do not remove this unless you get business authorization.
///  GoodsComment
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class GoodsComment with FrontBean {
  /// commentsId
  static const String GoodsComment_ID = 'commentsId';

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

  /// sCORE
  int sCORE;

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
    this.sCORE,
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
      comments: JsonUtil.parseString(json['comments']),
      commentsId: JsonUtil.parseString(json['commentsId']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      discussTime: JsonUtil.parseDateTime(json['discussTime']),
      goodsId: JsonUtil.parseString(json['goodsId']),
      sCORE: JsonUtil.parseInt(json['sCORE']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      userName: JsonUtil.parseString(json['userName']),
    );
  }

  static List<GoodsComment> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, GoodsComment.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = new Map<String, dynamic>();
    if (this.comments != null) {
      result['comments'] = JsonUtil.stringToJson(comments);
    }
    if (this.commentsId != null) {
      result['commentsId'] = JsonUtil.stringToJson(commentsId);
    }
    if (this.commentsIds != null) {
      var list = List();
      for (var v in commentsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['commentsIds'] = list;
    }
    if (this.commentsLike != null) {
      result['commentsLike'] = JsonUtil.stringToJson(commentsLike);
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
    if (this.discussTime != null) {
      result['discussTime'] = JsonUtil.dateTimeToJson(discussTime);
    }
    if (this.discussTimeMax != null) {
      result['discussTimeMax'] = JsonUtil.dateTimeToJson(discussTimeMax);
    }
    if (this.discussTimeMin != null) {
      result['discussTimeMin'] = JsonUtil.dateTimeToJson(discussTimeMin);
    }
    if (this.goodsId != null) {
      result['goodsId'] = JsonUtil.stringToJson(goodsId);
    }
    if (this.goodsIds != null) {
      var list = List();
      for (var v in goodsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['goodsIds'] = list;
    }
    if (this.sCORE != null) {
      result['sCORE'] = JsonUtil.intToJson(sCORE);
    }
    if (this.scoreMax != null) {
      result['scoreMax'] = JsonUtil.intToJson(scoreMax);
    }
    if (this.scoreMin != null) {
      result['scoreMin'] = JsonUtil.intToJson(scoreMin);
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
    if (this.userName != null) {
      result['userName'] = JsonUtil.stringToJson(userName);
    }
    if (this.userNameLike != null) {
      result['userNameLike'] = JsonUtil.stringToJson(userNameLike);
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

