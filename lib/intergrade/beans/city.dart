///  Do not remove this unless you get business authorization.
///  City
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class CityFields {
  static const areacode = 'areacode';
  static const areacodeLike = 'areacodeLike';
  static const cityId = 'cityId';
  static const cityIds = 'cityIds';
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const name = 'name';
  static const nameLike = 'nameLike';
  static const postcode = 'postcode';
  static const postcodeLike = 'postcodeLike';
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

class City with FrontBean {
  /// cityId
  static const String ID = CityFields.cityId;

  /// areacode
  String areacode;

  /// areacodeLike
  String areacodeLike;

  /// cityId
  String cityId;

  /// cityId s
  List<String> cityIds;

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

  /// postcode
  String postcode;

  /// postcodeLike
  String postcodeLike;

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

  City({
    this.areacode,
    this.areacodeLike,
    this.cityId,
    this.cityIds,
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.name,
    this.nameLike,
    this.postcode,
    this.postcodeLike,
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

  static City fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return City(
      areacode: JsonUtil.parseString(json[CityFields.areacode]),
      cityId: JsonUtil.parseString(json[CityFields.cityId]),
      createTime: JsonUtil.parseDateTime(json[CityFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[CityFields.deleteFlag]),
      name: JsonUtil.parseString(json[CityFields.name]),
      postcode: JsonUtil.parseString(json[CityFields.postcode]),
      provinceId: JsonUtil.parseString(json[CityFields.provinceId]),
      pycode: JsonUtil.parseString(json[CityFields.pycode]),
      title: JsonUtil.parseString(json[CityFields.title]),
      updateTime: JsonUtil.parseDateTime(json[CityFields.updateTime]),
      value: JsonUtil.parseString(json[CityFields.value]),
    );
  }

  static List<City> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, City.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.areacode != null) {
      result[CityFields.areacode] = JsonUtil.stringToJson(areacode);
    }
    if (this.areacodeLike != null) {
      result[CityFields.areacodeLike] = JsonUtil.stringToJson(areacodeLike);
    }
    if (this.cityId != null) {
      result[CityFields.cityId] = JsonUtil.stringToJson(cityId);
    }
    if (this.cityIds != null) {
      var list = List();
      for (var v in cityIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[CityFields.cityIds] = list;
    }
    if (this.createTime != null) {
      result[CityFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[CityFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[CityFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[CityFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.name != null) {
      result[CityFields.name] = JsonUtil.stringToJson(name);
    }
    if (this.nameLike != null) {
      result[CityFields.nameLike] = JsonUtil.stringToJson(nameLike);
    }
    if (this.postcode != null) {
      result[CityFields.postcode] = JsonUtil.stringToJson(postcode);
    }
    if (this.postcodeLike != null) {
      result[CityFields.postcodeLike] = JsonUtil.stringToJson(postcodeLike);
    }
    if (this.provinceId != null) {
      result[CityFields.provinceId] = JsonUtil.stringToJson(provinceId);
    }
    if (this.provinceIds != null) {
      var list = List();
      for (var v in provinceIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[CityFields.provinceIds] = list;
    }
    if (this.pycode != null) {
      result[CityFields.pycode] = JsonUtil.stringToJson(pycode);
    }
    if (this.pycodeLike != null) {
      result[CityFields.pycodeLike] = JsonUtil.stringToJson(pycodeLike);
    }
    if (this.title != null) {
      result[CityFields.title] = JsonUtil.stringToJson(title);
    }
    if (this.updateTime != null) {
      result[CityFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[CityFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[CityFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.value != null) {
      result[CityFields.value] = JsonUtil.stringToJson(value);
    }
    return result;
  }

  static Map<String, City> toIdMap(List<City> cityList) {
    var result = Map<String, City>();
    if (cityList != null) {
      for (var city in cityList) {
        if (city != null) {
          result[city.cityId] = city;
        }
      }
    }
    return result;
  }

}

