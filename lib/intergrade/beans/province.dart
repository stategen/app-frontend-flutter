///  Do not remove this unless you get business authorization.
///  Province
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class ProvinceFields {
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const name = 'name';
  static const nameLike = 'nameLike';
  static const provinceId = 'provinceId';
  static const provinceIds = 'provinceIds';
  static const pycode = 'pycode';
  static const pycodeLike = 'pycodeLike';
  static const title = 'title';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
  static const value = 'value';
}

class Province with FrontBean {
  /// provinceId
  static const String ID = ProvinceFields.provinceId;

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// name
  String name;

  /// nameLike
  String nameLike;

  /// provinceId
  String provinceId;

  /// provinceId s
  List<String> provinceIds;

  /// pycode
  String pycode;

  /// pycodeLike
  String pycodeLike;

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

  Province({
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.name,
    this.nameLike,
    this.provinceId,
    this.provinceIds,
    this.pycode,
    this.pycodeLike,
    this.title,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
    this.value,
  });

  static Province fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Province(
      createTime: JsonUtil.parseDateTime(json[ProvinceFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[ProvinceFields.deleteFlag]),
      name: JsonUtil.parseString(json[ProvinceFields.name]),
      provinceId: JsonUtil.parseString(json[ProvinceFields.provinceId]),
      pycode: JsonUtil.parseString(json[ProvinceFields.pycode]),
      title: JsonUtil.parseString(json[ProvinceFields.title]),
      updateTime: JsonUtil.parseDateTime(json[ProvinceFields.updateTime]),
      value: JsonUtil.parseString(json[ProvinceFields.value]),
    );
  }

  static List<Province> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Province.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.createTime != null) {
      result[ProvinceFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[ProvinceFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[ProvinceFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[ProvinceFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.name != null) {
      result[ProvinceFields.name] = JsonUtil.stringToJson(name);
    }
    if (this.nameLike != null) {
      result[ProvinceFields.nameLike] = JsonUtil.stringToJson(nameLike);
    }
    if (this.provinceId != null) {
      result[ProvinceFields.provinceId] = JsonUtil.stringToJson(provinceId);
    }
    if (this.provinceIds != null) {
      var list = List();
      for (var v in provinceIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[ProvinceFields.provinceIds] = list;
    }
    if (this.pycode != null) {
      result[ProvinceFields.pycode] = JsonUtil.stringToJson(pycode);
    }
    if (this.pycodeLike != null) {
      result[ProvinceFields.pycodeLike] = JsonUtil.stringToJson(pycodeLike);
    }
    if (this.title != null) {
      result[ProvinceFields.title] = JsonUtil.stringToJson(title);
    }
    if (this.updateTime != null) {
      result[ProvinceFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[ProvinceFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[ProvinceFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.value != null) {
      result[ProvinceFields.value] = JsonUtil.stringToJson(value);
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

}

