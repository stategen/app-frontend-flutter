///  Do not remove this unless you get business authorization.
///  GoodsComment
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class GoodsComment with FrontBean {
  /// commentsId
  static const String GoodsComment_ID = 'commentsId';

  /// commentsId
  String commentsId;

  /// goodsId
  String goodsId;

  /// comments
  String comments;

  /// userName
  String userName;

  /// discussTime
  DateTime discussTime;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// commentsId s
  List<String> commentsIds;

  /// goodsId s
  List<String> goodsIds;

  /// commentsLike
  String commentsLike;

  /// userNameLike
  String userNameLike;

  /// discussTimeMin
  DateTime discussTimeMin;

  /// discussTimeMax
  DateTime discussTimeMax;

  /// scoreMin
  int scoreMin;

  /// scoreMax
  int scoreMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// sCORE
  int sCORE;

  GoodsComment({
    this.commentsId,
    this.goodsId,
    this.comments,
    this.userName,
    this.discussTime,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.commentsIds,
    this.goodsIds,
    this.commentsLike,
    this.userNameLike,
    this.discussTimeMin,
    this.discussTimeMax,
    this.scoreMin,
    this.scoreMax,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
    this.sCORE,
  });

  static GoodsComment fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return GoodsComment(
      commentsId: JsonUtil.parseString(json['commentsId']),
      goodsId: JsonUtil.parseString(json['goodsId']),
      comments: JsonUtil.parseString(json['comments']),
      userName: JsonUtil.parseString(json['userName']),
      discussTime: JsonUtil.parseDateTime(json['discussTime']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      commentsIds: JsonUtil.parseList<String>(json['commentsIds'], JsonUtil.parseString),
      goodsIds: JsonUtil.parseList<String>(json['goodsIds'], JsonUtil.parseString),
      commentsLike: JsonUtil.parseString(json['commentsLike']),
      userNameLike: JsonUtil.parseString(json['userNameLike']),
      discussTimeMin: JsonUtil.parseDateTime(json['discussTimeMin']),
      discussTimeMax: JsonUtil.parseDateTime(json['discussTimeMax']),
      scoreMin: JsonUtil.parseInt(json['scoreMin']),
      scoreMax: JsonUtil.parseInt(json['scoreMax']),
      createTimeMin: JsonUtil.parseDateTime(json['createTimeMin']),
      createTimeMax: JsonUtil.parseDateTime(json['createTimeMax']),
      updateTimeMin: JsonUtil.parseDateTime(json['updateTimeMin']),
      updateTimeMax: JsonUtil.parseDateTime(json['updateTimeMax']),
      sCORE: JsonUtil.parseInt(json['sCORE']),
    );
  }

  static List<GoodsComment> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, GoodsComment.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.commentsId != null) {
      result['commentsId'] = JsonUtil.stringToJson(commentsId);
    }
    if (this.goodsId != null) {
      result['goodsId'] = JsonUtil.stringToJson(goodsId);
    }
    if (this.comments != null) {
      result['comments'] = JsonUtil.stringToJson(comments);
    }
    if (this.userName != null) {
      result['userName'] = JsonUtil.stringToJson(userName);
    }
    if (this.discussTime != null) {
      result['discussTime'] = JsonUtil.dateTimeToJson(discussTime);
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
    if (this.commentsIds != null) {
      var list = List();
      for (var v in commentsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['commentsIds'] = list;
    }
    if (this.goodsIds != null) {
      var list = List();
      for (var v in goodsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['goodsIds'] = list;
    }
    if (this.commentsLike != null) {
      result['commentsLike'] = JsonUtil.stringToJson(commentsLike);
    }
    if (this.userNameLike != null) {
      result['userNameLike'] = JsonUtil.stringToJson(userNameLike);
    }
    if (this.discussTimeMin != null) {
      result['discussTimeMin'] = JsonUtil.dateTimeToJson(discussTimeMin);
    }
    if (this.discussTimeMax != null) {
      result['discussTimeMax'] = JsonUtil.dateTimeToJson(discussTimeMax);
    }
    if (this.scoreMin != null) {
      result['scoreMin'] = JsonUtil.intToJson(scoreMin);
    }
    if (this.scoreMax != null) {
      result['scoreMax'] = JsonUtil.intToJson(scoreMax);
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
    if (this.sCORE != null) {
      result['sCORE'] = JsonUtil.intToJson(sCORE);
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

  static List<Map<String, dynamic>> toMaps(List<GoodsComment> goodsCommentList) {
    var result = List<Map<String, dynamic>>();
    if (goodsCommentList != null) {
      for (var goodsComment in goodsCommentList) {
        if (goodsComment != null) {
          result.add(goodsComment.toMap());
        }
      }
    }
    return result;
  }

}

