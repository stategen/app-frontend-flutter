///  Do not remove this unless you get business authorization.
///  Category
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/categorysub.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class CategoryFields {
  static const categoryId = 'categoryId';
  static const categoryIds = 'categoryIds';
  static const categoryName = 'categoryName';
  static const categoryNameLike = 'categoryNameLike';
  static const categorySubs = 'categorySubs';
  static const comments = 'comments';
  static const commentsLike = 'commentsLike';
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const image = 'image';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
}

class Category with FrontBean {
  /// categoryId
  static const String ID = CategoryFields.categoryId;

  /// 大类目录ID
  String categoryId;

  /// 大类目录ID s
  List<String> categoryIds;

  /// 大类目录名称
  String categoryName;

  /// 大类目录名称Like
  String categoryNameLike;

  /// categorySubs
  List<CategorySub> categorySubs;

  /// 描述
  String comments;

  /// 描述Like
  String commentsLike;

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// 图片地址
  String image;

  /// 更新时间
  DateTime updateTime;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  Category({
    this.categoryId,
    this.categoryIds,
    this.categoryName,
    this.categoryNameLike,
    this.categorySubs,
    this.comments,
    this.commentsLike,
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.image,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
  });

  static Category fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Category(
      categoryId: JsonUtil.parseString(json[CategoryFields.categoryId]),
      categoryName: JsonUtil.parseString(json[CategoryFields.categoryName]),
      categorySubs: CategorySub.fromJsonList(json[CategoryFields.categorySubs]),
      comments: JsonUtil.parseString(json[CategoryFields.comments]),
      createTime: JsonUtil.parseDateTime(json[CategoryFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[CategoryFields.deleteFlag]),
      image: JsonUtil.parseString(json[CategoryFields.image]),
      updateTime: JsonUtil.parseDateTime(json[CategoryFields.updateTime]),
    );
  }

  static List<Category> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Category.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.categoryId != null) {
      result[CategoryFields.categoryId] = JsonUtil.stringToJson(categoryId);
    }
    if (this.categoryIds != null) {
      var list = List();
      for (var v in categoryIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[CategoryFields.categoryIds] = list;
    }
    if (this.categoryName != null) {
      result[CategoryFields.categoryName] = JsonUtil.stringToJson(categoryName);
    }
    if (this.categoryNameLike != null) {
      result[CategoryFields.categoryNameLike] = JsonUtil.stringToJson(categoryNameLike);
    }
    if (this.categorySubs != null) {
      var list = List();
      for (var v in categorySubs) {
        list.add(v.toJson());
      }
      result[CategoryFields.categorySubs] = list;
    }
    if (this.comments != null) {
      result[CategoryFields.comments] = JsonUtil.stringToJson(comments);
    }
    if (this.commentsLike != null) {
      result[CategoryFields.commentsLike] = JsonUtil.stringToJson(commentsLike);
    }
    if (this.createTime != null) {
      result[CategoryFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[CategoryFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[CategoryFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[CategoryFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.image != null) {
      result[CategoryFields.image] = JsonUtil.stringToJson(image);
    }
    if (this.updateTime != null) {
      result[CategoryFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[CategoryFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[CategoryFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    return result;
  }

  static Map<String, Category> toIdMap(List<Category> categoryList) {
    var result = Map<String, Category>();
    if (categoryList != null) {
      for (var category in categoryList) {
        if (category != null) {
          result[category.categoryId] = category;
        }
      }
    }
    return result;
  }

}

