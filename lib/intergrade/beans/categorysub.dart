///  Do not remove this unless you get business authorization.
///  CategorySub
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class CategorySub with FrontBean {
  /// categorySubId
  static const String CategorySub_ID = 'categorySubId';

  /// categorySubId
  String categorySubId;

  /// categoryId
  String categoryId;

  /// subName
  String subName;

  /// comments
  String comments;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// categorySubId s
  List<String> categorySubIds;

  /// categoryId s
  List<String> categoryIds;

  /// subNameLike
  String subNameLike;

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
    this.categorySubId,
    this.categoryId,
    this.subName,
    this.comments,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.categorySubIds,
    this.categoryIds,
    this.subNameLike,
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
      categorySubId: JsonUtil.parseString(json['categorySubId']),
      categoryId: JsonUtil.parseString(json['categoryId']),
      subName: JsonUtil.parseString(json['subName']),
      comments: JsonUtil.parseString(json['comments']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      categorySubIds: JsonUtil.parseList<String>(json['categorySubIds'], JsonUtil.parseString),
      categoryIds: JsonUtil.parseList<String>(json['categoryIds'], JsonUtil.parseString),
      subNameLike: JsonUtil.parseString(json['subNameLike']),
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
    if (this.categorySubId != null) {
      result['categorySubId'] = JsonUtil.stringToJson(categorySubId);
    }
    if (this.categoryId != null) {
      result['categoryId'] = JsonUtil.stringToJson(categoryId);
    }
    if (this.subName != null) {
      result['subName'] = JsonUtil.stringToJson(subName);
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
    if (this.categorySubIds != null) {
      var list = List();
      for (var v in categorySubIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['categorySubIds'] = list;
    }
    if (this.categoryIds != null) {
      var list = List();
      for (var v in categoryIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['categoryIds'] = list;
    }
    if (this.subNameLike != null) {
      result['subNameLike'] = JsonUtil.stringToJson(subNameLike);
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
          result[categorySub.categorySubId] = categorySub;
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

