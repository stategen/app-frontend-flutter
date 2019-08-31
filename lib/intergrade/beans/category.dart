///  Do not remove this unless you get business authorization.
///  Category
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/categorysub.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class Category with FrontBean {
  /// mallCategoryId
  static const String Category_ID = 'mallCategoryId';

  /// bxMallSubDto
  List<CategorySub> bxMallSubDto;

  /// 大类目录ID
  String mallCategoryId;

  /// 大类目录名称
  String mallCategoryName;

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
  List<String> mallCategoryIds;

  /// 大类目录名称Like
  String mallCategoryNameLike;

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
    this.bxMallSubDto,
    this.mallCategoryId,
    this.mallCategoryName,
    this.comments,
    this.image,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.mallCategoryIds,
    this.mallCategoryNameLike,
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
      bxMallSubDto: CategorySub.fromJsonList(json['bxMallSubDto']),
      mallCategoryId: JsonUtil.parseString(json['mallCategoryId']),
      mallCategoryName: JsonUtil.parseString(json['mallCategoryName']),
      comments: JsonUtil.parseString(json['comments']),
      image: JsonUtil.parseString(json['image']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      mallCategoryIds: JsonUtil.parseList<String>(json['mallCategoryIds'], JsonUtil.parseString),
      mallCategoryNameLike: JsonUtil.parseString(json['mallCategoryNameLike']),
      commentsLike: JsonUtil.parseString(json['commentsLike']),
      createTimeMin: JsonUtil.parseDateTime(json['createTimeMin']),
      createTimeMax: JsonUtil.parseDateTime(json['createTimeMax']),
      updateTimeMin: JsonUtil.parseDateTime(json['updateTimeMin']),
      updateTimeMax: JsonUtil.parseDateTime(json['updateTimeMax']),
    );
  }

  static List<Category> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Category.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.bxMallSubDto != null) {
      var list = List();
      for (var v in bxMallSubDto) {
        list.add(v.toMap());
      }
      result['bxMallSubDto'] = list;
    }
    if (this.mallCategoryId != null) {
      result['mallCategoryId'] = JsonUtil.stringToJson(mallCategoryId);
    }
    if (this.mallCategoryName != null) {
      result['mallCategoryName'] = JsonUtil.stringToJson(mallCategoryName);
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
    if (this.mallCategoryIds != null) {
      var list = List();
      for (var v in mallCategoryIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['mallCategoryIds'] = list;
    }
    if (this.mallCategoryNameLike != null) {
      result['mallCategoryNameLike'] = JsonUtil.stringToJson(mallCategoryNameLike);
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
          result[category.mallCategoryId] = category;
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

