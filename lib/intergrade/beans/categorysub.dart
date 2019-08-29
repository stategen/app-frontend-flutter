///  Do not remove this unless you get business authorization.
///  CategorySub
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';

class CategorySub {
  /// mallSubId
  static const String CategorySub_ID = 'mallSubId';

  /// mallSubId
  String mallSubId;

  /// mallCategoryId
  String mallCategoryId;

  /// mallSubName
  String mallSubName;

  /// comments
  String comments;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// mallSubId s
  List<String> mallSubIds;

  /// mallCategoryId s
  List<String> mallCategoryIds;

  /// mallSubNameLike
  String mallSubNameLike;

  /// commentsLike
  String commentsLike;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 更新时间Max
  DateTime updateTimeMax;

  CategorySub({
    this.mallSubId,
    this.mallCategoryId,
    this.mallSubName,
    this.comments,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.mallSubIds,
    this.mallCategoryIds,
    this.mallSubNameLike,
    this.commentsLike,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
  });

  static CategorySub fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return CategorySub(
      mallSubId: JsonUtil.parseString(json['mallSubId']),
      mallCategoryId: JsonUtil.parseString(json['mallCategoryId']),
      mallSubName: JsonUtil.parseString(json['mallSubName']),
      comments: JsonUtil.parseString(json['comments']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      mallSubIds: JsonUtil.parseList<String>(json['mallSubIds'], JsonUtil.parseString),
      mallCategoryIds: JsonUtil.parseList<String>(json['mallCategoryIds'], JsonUtil.parseString),
      mallSubNameLike: JsonUtil.parseString(json['mallSubNameLike']),
      commentsLike: JsonUtil.parseString(json['commentsLike']),
      createTimeMin: JsonUtil.parseDateTime(json['createTimeMin']),
      createTimeMax: JsonUtil.parseDateTime(json['createTimeMax']),
      updateTimeMin: JsonUtil.parseDateTime(json['updateTimeMin']),
      updateTimeMax: JsonUtil.parseDateTime(json['updateTimeMax']),
    );
  }

  static List<CategorySub> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, CategorySub.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.mallSubId != null) {
      result['mallSubId'] = JsonUtil.stringToJson(mallSubId);
    }
    if (this.mallCategoryId != null) {
      result['mallCategoryId'] = JsonUtil.stringToJson(mallCategoryId);
    }
    if (this.mallSubName != null) {
      result['mallSubName'] = JsonUtil.stringToJson(mallSubName);
    }
    if (this.comments != null) {
      result['comments'] = JsonUtil.stringToJson(comments);
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
    if (this.mallSubIds != null) {
      var list = List();
      for (var v in mallSubIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['mallSubIds'] = list;
    }
    if (this.mallCategoryIds != null) {
      var list = List();
      for (var v in mallCategoryIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['mallCategoryIds'] = list;
    }
    if (this.mallSubNameLike != null) {
      result['mallSubNameLike'] = JsonUtil.stringToJson(mallSubNameLike);
    }
    if (this.commentsLike != null) {
      result['commentsLike'] = JsonUtil.stringToJson(commentsLike);
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

  static Map<String, CategorySub> toIdMap(List<CategorySub> categorySubList) {
    var result = Map<String, CategorySub>();
    if (categorySubList != null) {
      for (var categorySub in categorySubList) {
        if (categorySub != null) {
          result[categorySub.mallSubId] = categorySub;
        }
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<CategorySub> categorySubList) {
    var result = List<Map<String, dynamic>>();
    if (categorySubList != null) {
      for (var categorySub in categorySubList) {
        if (categorySub != null) {
          result.add(categorySub.toMap());
        }
      }
    }
    return result;
  }

}

