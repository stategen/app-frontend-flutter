///  Do not remove this unless you get business authorization.
///  Region
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../enums/regiontype.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class RegionFields {
  static const code = 'code';
  static const codeLike = 'codeLike';
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const isLeaf = 'isLeaf';
  static const level = 'level';
  static const levelMax = 'levelMax';
  static const levelMin = 'levelMin';
  static const name = 'name';
  static const nameEn = 'nameEn';
  static const nameEnLike = 'nameEnLike';
  static const nameLike = 'nameLike';
  static const namePinyin = 'namePinyin';
  static const namePinyinLike = 'namePinyinLike';
  static const parentRegionId = 'parentRegionId';
  static const parentRegionIds = 'parentRegionIds';
  static const path = 'path';
  static const pathLike = 'pathLike';
  static const regionId = 'regionId';
  static const regionIds = 'regionIds';
  static const regionType = 'regionType';
  static const regionTypes = 'regionTypes';
  static const title = 'title';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
  static const value = 'value';
}

class Region with FrontBean {
  /// regionId
  static const String ID = RegionFields.regionId;

  /// 代码
  String code;

  /// 代码Like
  String codeLike;

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 是否删除 (0:正常，1删除)
  bool deleteFlag;

  /// isLeaf
  bool isLeaf;

  /// 层级
  int level;

  /// 层级Max
  int levelMax;

  /// 层级Min
  int levelMin;

  /// 中文名称
  String name;

  /// 英文名称
  String nameEn;

  /// 英文名称Like
  String nameEnLike;

  /// 中文名称Like
  String nameLike;

  /// 中文拼音
  String namePinyin;

  /// 中文拼音Like
  String namePinyinLike;

  /// 父ID
  int parentRegionId;

  /// 父ID s
  List<int> parentRegionIds;

  /// 路径
  String path;

  /// 路径Like
  String pathLike;

  /// 主键
  int regionId;

  /// 主键 s
  List<int> regionIds;

  /// regionType
  RegionType regionType;

  /// regionType s
  List<RegionType> regionTypes;

  /// title
  String title;

  /// 更新时间
  DateTime updateTime;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// value
  String value;

  Region({
    this.code,
    this.codeLike,
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.isLeaf,
    this.level,
    this.levelMax,
    this.levelMin,
    this.name,
    this.nameEn,
    this.nameEnLike,
    this.nameLike,
    this.namePinyin,
    this.namePinyinLike,
    this.parentRegionId,
    this.parentRegionIds,
    this.path,
    this.pathLike,
    this.regionId,
    this.regionIds,
    this.regionType,
    this.regionTypes,
    this.title,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
    this.value,
  });

  static Region fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Region(
      code: JsonUtil.parseString(json[RegionFields.code]),
      createTime: JsonUtil.parseDateTime(json[RegionFields.createTime]),
      deleteFlag: JsonUtil.parseBool(json[RegionFields.deleteFlag]),
      isLeaf: JsonUtil.parseBool(json[RegionFields.isLeaf]),
      level: JsonUtil.parseInt(json[RegionFields.level]),
      name: JsonUtil.parseString(json[RegionFields.name]),
      nameEn: JsonUtil.parseString(json[RegionFields.nameEn]),
      namePinyin: JsonUtil.parseString(json[RegionFields.namePinyin]),
      parentRegionId: JsonUtil.parseInt(json[RegionFields.parentRegionId]),
      path: JsonUtil.parseString(json[RegionFields.path]),
      regionId: JsonUtil.parseInt(json[RegionFields.regionId]),
      regionType: RegionType.fromJson(json[RegionFields.regionType]),
      title: JsonUtil.parseString(json[RegionFields.title]),
      updateTime: JsonUtil.parseDateTime(json[RegionFields.updateTime]),
      value: JsonUtil.parseString(json[RegionFields.value]),
    );
  }

  static List<Region> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Region.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.code != null) {
      result[RegionFields.code] = JsonUtil.stringToJson(code);
    }
    if (this.codeLike != null) {
      result[RegionFields.codeLike] = JsonUtil.stringToJson(codeLike);
    }
    if (this.createTime != null) {
      result[RegionFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[RegionFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[RegionFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[RegionFields.deleteFlag] = JsonUtil.boolToJson(deleteFlag);
    }
    if (this.isLeaf != null) {
      result[RegionFields.isLeaf] = JsonUtil.boolToJson(isLeaf);
    }
    if (this.level != null) {
      result[RegionFields.level] = JsonUtil.intToJson(level);
    }
    if (this.levelMax != null) {
      result[RegionFields.levelMax] = JsonUtil.intToJson(levelMax);
    }
    if (this.levelMin != null) {
      result[RegionFields.levelMin] = JsonUtil.intToJson(levelMin);
    }
    if (this.name != null) {
      result[RegionFields.name] = JsonUtil.stringToJson(name);
    }
    if (this.nameEn != null) {
      result[RegionFields.nameEn] = JsonUtil.stringToJson(nameEn);
    }
    if (this.nameEnLike != null) {
      result[RegionFields.nameEnLike] = JsonUtil.stringToJson(nameEnLike);
    }
    if (this.nameLike != null) {
      result[RegionFields.nameLike] = JsonUtil.stringToJson(nameLike);
    }
    if (this.namePinyin != null) {
      result[RegionFields.namePinyin] = JsonUtil.stringToJson(namePinyin);
    }
    if (this.namePinyinLike != null) {
      result[RegionFields.namePinyinLike] = JsonUtil.stringToJson(namePinyinLike);
    }
    if (this.parentRegionId != null) {
      result[RegionFields.parentRegionId] = JsonUtil.intToJson(parentRegionId);
    }
    if (this.parentRegionIds != null) {
      var list = List();
      for (var v in parentRegionIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result[RegionFields.parentRegionIds] = list;
    }
    if (this.path != null) {
      result[RegionFields.path] = JsonUtil.stringToJson(path);
    }
    if (this.pathLike != null) {
      result[RegionFields.pathLike] = JsonUtil.stringToJson(pathLike);
    }
    if (this.regionId != null) {
      result[RegionFields.regionId] = JsonUtil.intToJson(regionId);
    }
    if (this.regionIds != null) {
      var list = List();
      for (var v in regionIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result[RegionFields.regionIds] = list;
    }
    if (this.regionType != null) {
      result[RegionFields.regionType] = regionType.toString();
    }
    if (this.regionTypes != null) {
      var list = List();
      for (var v in regionTypes) {
        list.add(v.toString());
      }
      result[RegionFields.regionTypes] = list;
    }
    if (this.title != null) {
      result[RegionFields.title] = JsonUtil.stringToJson(title);
    }
    if (this.updateTime != null) {
      result[RegionFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[RegionFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[RegionFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.value != null) {
      result[RegionFields.value] = JsonUtil.stringToJson(value);
    }
    return result;
  }

  static Map<int, Region> toIdMap(List<Region> regionList) {
    var result = Map<int, Region>();
    if (regionList != null) {
      for (var region in regionList) {
        if (region != null) {
          result[region.regionId] = region;
        }
      }
    }
    return result;
  }

}

