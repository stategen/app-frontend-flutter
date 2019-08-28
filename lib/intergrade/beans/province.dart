///  Do not remove this unless you get business authorization.
///  Province
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';

class Province {
  /// provinceId
  static const String Province_ID = 'provinceId';

  /// provinceId
  String provinceId;

  /// name
  String name;

  /// pycode
  String pycode;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// provinceId s
  List<String> provinceIds;

  /// nameLike
  String nameLike;

  /// pycodeLike
  String pycodeLike;

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

  Province({
    this.provinceId,
    this.name,
    this.pycode,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.provinceIds,
    this.nameLike,
    this.pycodeLike,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
    this.value,
    this.title,
  });

  static Province fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Province(
      provinceId: JsonUtil.parseString(json['provinceId']),
      name: JsonUtil.parseString(json['name']),
      pycode: JsonUtil.parseString(json['pycode']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      provinceIds: JsonUtil.parseList<String>(json['provinceIds'], JsonUtil.parseString),
      nameLike: JsonUtil.parseString(json['nameLike']),
      pycodeLike: JsonUtil.parseString(json['pycodeLike']),
      createTimeMin: JsonUtil.parseDateTime(json['createTimeMin']),
      createTimeMax: JsonUtil.parseDateTime(json['createTimeMax']),
      updateTimeMin: JsonUtil.parseDateTime(json['updateTimeMin']),
      updateTimeMax: JsonUtil.parseDateTime(json['updateTimeMax']),
      value: JsonUtil.parseString(json['value']),
      title: JsonUtil.parseString(json['title']),
    );
  }

  static List<Province> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Province.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.provinceId != null) {
      result['provinceId'] = JsonUtil.stringToJson(provinceId);
    }
    if (this.name != null) {
      result['name'] = JsonUtil.stringToJson(name);
    }
    if (this.pycode != null) {
      result['pycode'] = JsonUtil.stringToJson(pycode);
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
    if (this.provinceIds != null) {
      var list = List();
      for (var v in provinceIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['provinceIds'] = list;
    }
    if (this.nameLike != null) {
      result['nameLike'] = JsonUtil.stringToJson(nameLike);
    }
    if (this.pycodeLike != null) {
      result['pycodeLike'] = JsonUtil.stringToJson(pycodeLike);
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

  static Map<String, Province> toIdMap(List<Province> provinceList) {
    var result = Map<String, Province>();
    if (provinceList != null) {
      for (var province in provinceList) {
        if (province != null) {
          result[province.provinceId] = province;
        }
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<Province> provinceList) {
    var result = List<Map<String, dynamic>>();
    if (provinceList != null) {
      for (var province in provinceList) {
        if (province != null) {
          result.add(province.toMap());
        }
      }
    }
    return result;
  }

}

