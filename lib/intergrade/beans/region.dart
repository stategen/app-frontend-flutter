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
  int deleteFlag;

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
      code: JsonUtil.parseString(json['code']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      isLeaf: JsonUtil.parseBool(json['isLeaf']),
      level: JsonUtil.parseInt(json['level']),
      name: JsonUtil.parseString(json['name']),
      nameEn: JsonUtil.parseString(json['nameEn']),
      namePinyin: JsonUtil.parseString(json['namePinyin']),
      parentRegionId: JsonUtil.parseInt(json['parentRegionId']),
      path: JsonUtil.parseString(json['path']),
      regionId: JsonUtil.parseInt(json['regionId']),
      regionType: RegionType.fromJson(json['regionType']),
      title: JsonUtil.parseString(json['title']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      value: JsonUtil.parseString(json['value']),
    );
  }

  static List<Region> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Region.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.code != null) {
      result['code'] = JsonUtil.stringToJson(code);
    }
    if (this.codeLike != null) {
      result['codeLike'] = JsonUtil.stringToJson(codeLike);
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
    if (this.isLeaf != null) {
      result['isLeaf'] = JsonUtil.boolToJson(isLeaf);
    }
    if (this.level != null) {
      result['level'] = JsonUtil.intToJson(level);
    }
    if (this.levelMax != null) {
      result['levelMax'] = JsonUtil.intToJson(levelMax);
    }
    if (this.levelMin != null) {
      result['levelMin'] = JsonUtil.intToJson(levelMin);
    }
    if (this.name != null) {
      result['name'] = JsonUtil.stringToJson(name);
    }
    if (this.nameEn != null) {
      result['nameEn'] = JsonUtil.stringToJson(nameEn);
    }
    if (this.nameEnLike != null) {
      result['nameEnLike'] = JsonUtil.stringToJson(nameEnLike);
    }
    if (this.nameLike != null) {
      result['nameLike'] = JsonUtil.stringToJson(nameLike);
    }
    if (this.namePinyin != null) {
      result['namePinyin'] = JsonUtil.stringToJson(namePinyin);
    }
    if (this.namePinyinLike != null) {
      result['namePinyinLike'] = JsonUtil.stringToJson(namePinyinLike);
    }
    if (this.parentRegionId != null) {
      result['parentRegionId'] = JsonUtil.intToJson(parentRegionId);
    }
    if (this.parentRegionIds != null) {
      var list = List();
      for (var v in parentRegionIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['parentRegionIds'] = list;
    }
    if (this.path != null) {
      result['path'] = JsonUtil.stringToJson(path);
    }
    if (this.pathLike != null) {
      result['pathLike'] = JsonUtil.stringToJson(pathLike);
    }
    if (this.regionId != null) {
      result['regionId'] = JsonUtil.intToJson(regionId);
    }
    if (this.regionIds != null) {
      var list = List();
      for (var v in regionIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['regionIds'] = list;
    }
    if (this.regionType != null) {
      result['regionType'] = regionType.toString();
    }
    if (this.regionTypes != null) {
      var list = List();
      for (var v in regionTypes) {
        list.add(v.toString());
      }
      result['regionTypes'] = list;
    }
    if (this.title != null) {
      result['title'] = JsonUtil.stringToJson(title);
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
    if (this.value != null) {
      result['value'] = JsonUtil.stringToJson(value);
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

