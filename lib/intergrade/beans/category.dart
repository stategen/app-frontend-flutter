///  Do not remove this unless you get business authorization.
///  Category
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/categorysub.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class Category with FrontBean {
  /// categoryId
  static const String Category_ID = 'categoryId';

  /// categorySubs
  List<CategorySub> categorySubs;

  /// 大类目录ID
  String categoryId;

  /// 大类目录名称
  String categoryName;

  /// 描述
  String comments;

  /// 图片地址
  String image;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// 大类目录ID s
  List<String> categoryIds;

  /// 大类目录名称Like
  String categoryNameLike;

  /// 描述Like
  String commentsLike;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 更新时间Max
  DateTime updateTimeMax;

  Category({
    this.categorySubs,
    this.categoryId,
    this.categoryName,
    this.comments,
    this.image,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.categoryIds,
    this.categoryNameLike,
    this.commentsLike,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
  });

  static Category fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Category(
      categorySubs: CategorySub.fromJsonList(json['categorySubs']),
      categoryId: JsonUtil.parseString(json['categoryId']),
      categoryName: JsonUtil.parseString(json['categoryName']),
      comments: JsonUtil.parseString(json['comments']),
      image: JsonUtil.parseString(json['image']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
    );
  }

  static List<Category> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Category.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.categorySubs != null) {
      var list = List();
      for (var v in categorySubs) {
        list.add(v.toMap());
      }
      result['categorySubs'] = list;
    }
    if (this.categoryId != null) {
      result['categoryId'] = JsonUtil.stringToJson(categoryId);
    }
    if (this.categoryName != null) {
      result['categoryName'] = JsonUtil.stringToJson(categoryName);
    }
    if (this.comments != null) {
      result['comments'] = JsonUtil.stringToJson(comments);
    }
    if (this.image != null) {
      result['image'] = JsonUtil.stringToJson(image);
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
    if (this.categoryIds != null) {
      var list = List();
      for (var v in categoryIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['categoryIds'] = list;
    }
    if (this.categoryNameLike != null) {
      result['categoryNameLike'] = JsonUtil.stringToJson(categoryNameLike);
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

  static List<Map<String, dynamic>> toMaps(List<Category> categoryList) {
    var result = List<Map<String, dynamic>>();
    if (categoryList != null) {
      for (var category in categoryList) {
        if (category != null) {
          result.add(category.toMap());
        }
      }
    }
    return result;
  }

}

