///  Do not remove this unless you get business authorization.
///  CategorySub
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class CategorySubFields {
  static const categoryId = 'categoryId';
  static const categoryIds = 'categoryIds';
  static const categorySubId = 'categorySubId';
  static const categorySubIds = 'categorySubIds';
  static const comments = 'comments';
  static const commentsLike = 'commentsLike';
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const subName = 'subName';
  static const subNameLike = 'subNameLike';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
}

class CategorySub with FrontBean {
  /// categorySubId
  static const String ID = CategorySubFields.categorySubId;

  /// categoryId
  String categoryId;

  /// categoryId s
  List<String> categoryIds;

  /// categorySubId
  String categorySubId;

  /// categorySubId s
  List<String> categorySubIds;

  /// comments
  String comments;

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

  /// subName
  String subName;

  /// subNameLike
  String subNameLike;

  /// 更新时间
  DateTime updateTime;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  CategorySub({
    this.categoryId,
    this.categoryIds,
    this.categorySubId,
    this.categorySubIds,
    this.comments,
    this.commentsLike,
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.subName,
    this.subNameLike,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
  });

  static CategorySub fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return CategorySub(
      categoryId: JsonUtil.parseString(json[CategorySubFields.categoryId]),
      categorySubId: JsonUtil.parseString(json[CategorySubFields.categorySubId]),
      comments: JsonUtil.parseString(json[CategorySubFields.comments]),
      createTime: JsonUtil.parseDateTime(json[CategorySubFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[CategorySubFields.deleteFlag]),
      subName: JsonUtil.parseString(json[CategorySubFields.subName]),
      updateTime: JsonUtil.parseDateTime(json[CategorySubFields.updateTime]),
    );
  }

  static List<CategorySub> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, CategorySub.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.categoryId != null) {
      result[CategorySubFields.categoryId] = JsonUtil.stringToJson(categoryId);
    }
    if (this.categoryIds != null) {
      var list = List();
      for (var v in categoryIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[CategorySubFields.categoryIds] = list;
    }
    if (this.categorySubId != null) {
      result[CategorySubFields.categorySubId] = JsonUtil.stringToJson(categorySubId);
    }
    if (this.categorySubIds != null) {
      var list = List();
      for (var v in categorySubIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[CategorySubFields.categorySubIds] = list;
    }
    if (this.comments != null) {
      result[CategorySubFields.comments] = JsonUtil.stringToJson(comments);
    }
    if (this.commentsLike != null) {
      result[CategorySubFields.commentsLike] = JsonUtil.stringToJson(commentsLike);
    }
    if (this.createTime != null) {
      result[CategorySubFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[CategorySubFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[CategorySubFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[CategorySubFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.subName != null) {
      result[CategorySubFields.subName] = JsonUtil.stringToJson(subName);
    }
    if (this.subNameLike != null) {
      result[CategorySubFields.subNameLike] = JsonUtil.stringToJson(subNameLike);
    }
    if (this.updateTime != null) {
      result[CategorySubFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[CategorySubFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[CategorySubFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
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

}

