///  Do not remove this unless you get business authorization.
///  City
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class City with FrontBean {
  /// cityId
  static const String City_ID = 'cityId';

  /// cityId
  String cityId;

  /// name
  String name;

  /// pycode
  String pycode;

  /// provinceId
  String provinceId;

  /// postcode
  String postcode;

  /// areacode
  String areacode;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// cityId s
  List<String> cityIds;

  /// nameLike
  String nameLike;

  /// pycodeLike
  String pycodeLike;

  /// provinceId s
  List<String> provinceIds;

  /// postcodeLike
  String postcodeLike;

  /// areacodeLike
  String areacodeLike;

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

  City({
    this.cityId,
    this.name,
    this.pycode,
    this.provinceId,
    this.postcode,
    this.areacode,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.cityIds,
    this.nameLike,
    this.pycodeLike,
    this.provinceIds,
    this.postcodeLike,
    this.areacodeLike,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
    this.value,
    this.title,
  });

  static City fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return City(
      cityId: JsonUtil.parseString(json['cityId']),
      name: JsonUtil.parseString(json['name']),
      pycode: JsonUtil.parseString(json['pycode']),
      provinceId: JsonUtil.parseString(json['provinceId']),
      postcode: JsonUtil.parseString(json['postcode']),
      areacode: JsonUtil.parseString(json['areacode']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      cityIds: JsonUtil.parseList<String>(json['cityIds'], JsonUtil.parseString),
      nameLike: JsonUtil.parseString(json['nameLike']),
      pycodeLike: JsonUtil.parseString(json['pycodeLike']),
      provinceIds: JsonUtil.parseList<String>(json['provinceIds'], JsonUtil.parseString),
      postcodeLike: JsonUtil.parseString(json['postcodeLike']),
      areacodeLike: JsonUtil.parseString(json['areacodeLike']),
      createTimeMin: JsonUtil.parseDateTime(json['createTimeMin']),
      createTimeMax: JsonUtil.parseDateTime(json['createTimeMax']),
      updateTimeMin: JsonUtil.parseDateTime(json['updateTimeMin']),
      updateTimeMax: JsonUtil.parseDateTime(json['updateTimeMax']),
      value: JsonUtil.parseString(json['value']),
      title: JsonUtil.parseString(json['title']),
    );
  }

  static List<City> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, City.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.cityId != null) {
      result['cityId'] = JsonUtil.stringToJson(cityId);
    }
    if (this.name != null) {
      result['name'] = JsonUtil.stringToJson(name);
    }
    if (this.pycode != null) {
      result['pycode'] = JsonUtil.stringToJson(pycode);
    }
    if (this.provinceId != null) {
      result['provinceId'] = JsonUtil.stringToJson(provinceId);
    }
    if (this.postcode != null) {
      result['postcode'] = JsonUtil.stringToJson(postcode);
    }
    if (this.areacode != null) {
      result['areacode'] = JsonUtil.stringToJson(areacode);
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
    if (this.cityIds != null) {
      var list = List();
      for (var v in cityIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['cityIds'] = list;
    }
    if (this.nameLike != null) {
      result['nameLike'] = JsonUtil.stringToJson(nameLike);
    }
    if (this.pycodeLike != null) {
      result['pycodeLike'] = JsonUtil.stringToJson(pycodeLike);
    }
    if (this.provinceIds != null) {
      var list = List();
      for (var v in provinceIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['provinceIds'] = list;
    }
    if (this.postcodeLike != null) {
      result['postcodeLike'] = JsonUtil.stringToJson(postcodeLike);
    }
    if (this.areacodeLike != null) {
      result['areacodeLike'] = JsonUtil.stringToJson(areacodeLike);
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

  static List<Map<String, dynamic>> toMaps(List<City> cityList) {
    var result = List<Map<String, dynamic>>();
    if (cityList != null) {
      for (var city in cityList) {
        if (city != null) {
          result.add(city.toMap());
        }
      }
    }
    return result;
  }

}

