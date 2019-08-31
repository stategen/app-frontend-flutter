///  Do not remove this unless you get business authorization.
///  Region
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../enums/regiontype.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class Region with FrontBean {
  /// regionId
  static const String Region_ID = 'regionId';

  /// isLeaf
  bool isLeaf;

  /// 主键
  int regionId;

  /// 父ID
  int parentRegionId;

  /// 路径
  String path;

  /// 层级
  int level;

  /// regionType
  RegionType regionType;

  /// 中文名称
  String name;

  /// 英文名称
  String nameEn;

  /// 中文拼音
  String namePinyin;

  /// 代码
  String code;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除 (0:正常，1删除)
  int deleteFlag;

  /// 主键 s
  List<int> regionIds;

  /// 父ID s
  List<int> parentRegionIds;

  /// 路径Like
  String pathLike;

  /// 层级Min
  int levelMin;

  /// 层级Max
  int levelMax;

  /// regionType s
  List<RegionType> regionTypes;

  /// 中文名称Like
  String nameLike;

  /// 英文名称Like
  String nameEnLike;

  /// 中文拼音Like
  String namePinyinLike;

  /// 代码Like
  String codeLike;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// value
  String value;

  /// title
  String title;

  Region({
    this.isLeaf,
    this.regionId,
    this.parentRegionId,
    this.path,
    this.level,
    this.regionType,
    this.name,
    this.nameEn,
    this.namePinyin,
    this.code,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.regionIds,
    this.parentRegionIds,
    this.pathLike,
    this.levelMin,
    this.levelMax,
    this.regionTypes,
    this.nameLike,
    this.nameEnLike,
    this.namePinyinLike,
    this.codeLike,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
    this.value,
    this.title,
  });

  static Region fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Region(
      isLeaf: JsonUtil.parseBool(json['isLeaf']),
      regionId: JsonUtil.parseInt(json['regionId']),
      parentRegionId: JsonUtil.parseInt(json['parentRegionId']),
      path: JsonUtil.parseString(json['path']),
      level: JsonUtil.parseInt(json['level']),
      regionType: RegionType.fromJson(json['regionType']),
      name: JsonUtil.parseString(json['name']),
      nameEn: JsonUtil.parseString(json['nameEn']),
      namePinyin: JsonUtil.parseString(json['namePinyin']),
      code: JsonUtil.parseString(json['code']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      regionIds: JsonUtil.parseList<int>(json['regionIds'], JsonUtil.parseInt),
      parentRegionIds: JsonUtil.parseList<int>(json['parentRegionIds'], JsonUtil.parseInt),
      pathLike: JsonUtil.parseString(json['pathLike']),
      levelMin: JsonUtil.parseInt(json['levelMin']),
      levelMax: JsonUtil.parseInt(json['levelMax']),
      regionTypes: RegionType.fromJsonList(json['regionTypes']),
      nameLike: JsonUtil.parseString(json['nameLike']),
      nameEnLike: JsonUtil.parseString(json['nameEnLike']),
      namePinyinLike: JsonUtil.parseString(json['namePinyinLike']),
      codeLike: JsonUtil.parseString(json['codeLike']),
      createTimeMin: JsonUtil.parseDateTime(json['createTimeMin']),
      createTimeMax: JsonUtil.parseDateTime(json['createTimeMax']),
      updateTimeMin: JsonUtil.parseDateTime(json['updateTimeMin']),
      updateTimeMax: JsonUtil.parseDateTime(json['updateTimeMax']),
      value: JsonUtil.parseString(json['value']),
      title: JsonUtil.parseString(json['title']),
    );
  }

  static List<Region> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Region.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.isLeaf != null) {
      result['isLeaf'] = JsonUtil.boolToJson(isLeaf);
    }
    if (this.regionId != null) {
      result['regionId'] = JsonUtil.intToJson(regionId);
    }
    if (this.parentRegionId != null) {
      result['parentRegionId'] = JsonUtil.intToJson(parentRegionId);
    }
    if (this.path != null) {
      result['path'] = JsonUtil.stringToJson(path);
    }
    if (this.level != null) {
      result['level'] = JsonUtil.intToJson(level);
    }
    if (this.regionType != null) {
      result['regionType'] = regionType.toString();
    }
    if (this.name != null) {
      result['name'] = JsonUtil.stringToJson(name);
    }
    if (this.nameEn != null) {
      result['nameEn'] = JsonUtil.stringToJson(nameEn);
    }
    if (this.namePinyin != null) {
      result['namePinyin'] = JsonUtil.stringToJson(namePinyin);
    }
    if (this.code != null) {
      result['code'] = JsonUtil.stringToJson(code);
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
    if (this.regionIds != null) {
      var list = List();
      for (var v in regionIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['regionIds'] = list;
    }
    if (this.parentRegionIds != null) {
      var list = List();
      for (var v in parentRegionIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['parentRegionIds'] = list;
    }
    if (this.pathLike != null) {
      result['pathLike'] = JsonUtil.stringToJson(pathLike);
    }
    if (this.levelMin != null) {
      result['levelMin'] = JsonUtil.intToJson(levelMin);
    }
    if (this.levelMax != null) {
      result['levelMax'] = JsonUtil.intToJson(levelMax);
    }
    if (this.regionTypes != null) {
      var list = List();
      for (var v in regionTypes) {
        list.add(v.toString());
      }
      result['regionTypes'] = list;
    }
    if (this.nameLike != null) {
      result['nameLike'] = JsonUtil.stringToJson(nameLike);
    }
    if (this.nameEnLike != null) {
      result['nameEnLike'] = JsonUtil.stringToJson(nameEnLike);
    }
    if (this.namePinyinLike != null) {
      result['namePinyinLike'] = JsonUtil.stringToJson(namePinyinLike);
    }
    if (this.codeLike != null) {
      result['codeLike'] = JsonUtil.stringToJson(codeLike);
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
    if (this.value != null) {
      result['value'] = JsonUtil.stringToJson(value);
    }
    if (this.title != null) {
      result['title'] = JsonUtil.stringToJson(title);
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

  static List<Map<String, dynamic>> toMaps(List<Region> regionList) {
    var result = List<Map<String, dynamic>>();
    if (regionList != null) {
      for (var region in regionList) {
        if (region != null) {
          result.add(region.toMap());
        }
      }
    }
    return result;
  }

}

