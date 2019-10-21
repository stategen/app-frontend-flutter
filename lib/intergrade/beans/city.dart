///  Do not remove this unless you get business authorization.
///  City
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class City with FrontBean {
  /// cityId
  static const String City_ID = 'cityId';

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
      areacode: JsonUtil.parseString(json['areacode']),
      cityId: JsonUtil.parseString(json['cityId']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      name: JsonUtil.parseString(json['name']),
      postcode: JsonUtil.parseString(json['postcode']),
      provinceId: JsonUtil.parseString(json['provinceId']),
      pycode: JsonUtil.parseString(json['pycode']),
      title: JsonUtil.parseString(json['title']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      value: JsonUtil.parseString(json['value']),
    );
  }

  static List<City> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, City.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.areacode != null) {
      result['areacode'] = JsonUtil.stringToJson(areacode);
    }
    if (this.areacodeLike != null) {
      result['areacodeLike'] = JsonUtil.stringToJson(areacodeLike);
    }
    if (this.cityId != null) {
      result['cityId'] = JsonUtil.stringToJson(cityId);
    }
    if (this.cityIds != null) {
      var list = List();
      for (var v in cityIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['cityIds'] = list;
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
    if (this.name != null) {
      result['name'] = JsonUtil.stringToJson(name);
    }
    if (this.nameLike != null) {
      result['nameLike'] = JsonUtil.stringToJson(nameLike);
    }
    if (this.postcode != null) {
      result['postcode'] = JsonUtil.stringToJson(postcode);
    }
    if (this.postcodeLike != null) {
      result['postcodeLike'] = JsonUtil.stringToJson(postcodeLike);
    }
    if (this.provinceId != null) {
      result['provinceId'] = JsonUtil.stringToJson(provinceId);
    }
    if (this.provinceIds != null) {
      var list = List();
      for (var v in provinceIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['provinceIds'] = list;
    }
    if (this.pycode != null) {
      result['pycode'] = JsonUtil.stringToJson(pycode);
    }
    if (this.pycodeLike != null) {
      result['pycodeLike'] = JsonUtil.stringToJson(pycodeLike);
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

