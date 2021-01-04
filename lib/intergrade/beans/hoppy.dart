///  Do not remove this unless you get business authorization.
///  Hoppy
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class HoppyFields {
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const hoppyId = 'hoppyId';
  static const hoppyIds = 'hoppyIds';
  static const hoppyName = 'hoppyName';
  static const hoppyNameLike = 'hoppyNameLike';
  static const title = 'title';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
  static const value = 'value';
}

class Hoppy with FrontBean {
  /// hoppyId
  static const String ID = HoppyFields.hoppyId;

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// hoppyId
  int hoppyId;

  /// hoppyId s
  List<int> hoppyIds;

  /// hoppyName
  String hoppyName;

  /// hoppyNameLike
  String hoppyNameLike;

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

  Hoppy({
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.hoppyId,
    this.hoppyIds,
    this.hoppyName,
    this.hoppyNameLike,
    this.title,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
    this.value,
  });

  static Hoppy fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Hoppy(
      createTime: JsonUtil.parseDateTime(json[HoppyFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[HoppyFields.deleteFlag]),
      hoppyId: JsonUtil.parseInt(json[HoppyFields.hoppyId]),
      hoppyName: JsonUtil.parseString(json[HoppyFields.hoppyName]),
      title: JsonUtil.parseString(json[HoppyFields.title]),
      updateTime: JsonUtil.parseDateTime(json[HoppyFields.updateTime]),
      value: JsonUtil.parseString(json[HoppyFields.value]),
    );
  }

  static List<Hoppy> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Hoppy.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.createTime != null) {
      result[HoppyFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[HoppyFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[HoppyFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[HoppyFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.hoppyId != null) {
      result[HoppyFields.hoppyId] = JsonUtil.intToJson(hoppyId);
    }
    if (this.hoppyIds != null) {
      var list = List();
      for (var v in hoppyIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result[HoppyFields.hoppyIds] = list;
    }
    if (this.hoppyName != null) {
      result[HoppyFields.hoppyName] = JsonUtil.stringToJson(hoppyName);
    }
    if (this.hoppyNameLike != null) {
      result[HoppyFields.hoppyNameLike] = JsonUtil.stringToJson(hoppyNameLike);
    }
    if (this.title != null) {
      result[HoppyFields.title] = JsonUtil.stringToJson(title);
    }
    if (this.updateTime != null) {
      result[HoppyFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[HoppyFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[HoppyFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.value != null) {
      result[HoppyFields.value] = JsonUtil.stringToJson(value);
    }
    return result;
  }

  static Map<int, Hoppy> toIdMap(List<Hoppy> hoppyList) {
    var result = Map<int, Hoppy>();
    if (hoppyList != null) {
      for (var hoppy in hoppyList) {
        if (hoppy != null) {
          result[hoppy.hoppyId] = hoppy;
        }
      }
    }
    return result;
  }

}

