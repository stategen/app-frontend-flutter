///  Do not remove this unless you get business authorization.
///  CategorySub
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class CategorySub with FrontBean {
  /// categorySubId
  static const String CategorySub_ID = 'categorySubId';

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
      categoryId: JsonUtil.parseString(json['categoryId']),
      categorySubId: JsonUtil.parseString(json['categorySubId']),
      comments: JsonUtil.parseString(json['comments']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      subName: JsonUtil.parseString(json['subName']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
    );
  }

  static List<CategorySub> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, CategorySub.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = new Map<String, dynamic>();
    if (this.categoryId != null) {
      result['categoryId'] = JsonUtil.stringToJson(categoryId);
    }
    if (this.categoryIds != null) {
      var list = List();
      for (var v in categoryIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['categoryIds'] = list;
    }
    if (this.categorySubId != null) {
      result['categorySubId'] = JsonUtil.stringToJson(categorySubId);
    }
    if (this.categorySubIds != null) {
      var list = List();
      for (var v in categorySubIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['categorySubIds'] = list;
    }
    if (this.comments != null) {
      result['comments'] = JsonUtil.stringToJson(comments);
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
    if (this.subName != null) {
      result['subName'] = JsonUtil.stringToJson(subName);
    }
    if (this.subNameLike != null) {
      result['subNameLike'] = JsonUtil.stringToJson(subNameLike);
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

