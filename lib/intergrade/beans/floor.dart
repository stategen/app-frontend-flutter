///  Do not remove this unless you get business authorization.
///  Floor
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/advertisepicture.dart';
import '../beans/floorgoods.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class Floor with FrontBean {
  /// floorId
  static const String Floor_ID = 'floorId';

  /// floorGoodss
  List<FloorGoods> floorGoodss;

  /// advertisePicture
  AdvertisePicture advertisePicture;

  /// floorId
  String floorId;

  /// advertiseId
  int advertiseId;

  /// orderNo
  int orderNo;

  /// floorName
  String floorName;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// floorId s
  List<String> floorIds;

  /// advertiseId s
  List<int> advertiseIds;

  /// orderNoMin
  int orderNoMin;

  /// orderNoMax
  int orderNoMax;

  /// floorNameLike
  String floorNameLike;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 更新时间Max
  DateTime updateTimeMax;

  Floor({
    this.floorGoodss,
    this.advertisePicture,
    this.floorId,
    this.advertiseId,
    this.orderNo,
    this.floorName,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.floorIds,
    this.advertiseIds,
    this.orderNoMin,
    this.orderNoMax,
    this.floorNameLike,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
  });

  static Floor fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Floor(
      floorGoodss: FloorGoods.fromJsonList(json['floorGoodss']),
      advertisePicture: AdvertisePicture.fromJson(json['advertisePicture']),
      floorId: JsonUtil.parseString(json['floorId']),
      advertiseId: JsonUtil.parseInt(json['advertiseId']),
      orderNo: JsonUtil.parseInt(json['orderNo']),
      floorName: JsonUtil.parseString(json['floorName']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      floorIds: JsonUtil.parseList<String>(json['floorIds'], JsonUtil.parseString),
      advertiseIds: JsonUtil.parseList<int>(json['advertiseIds'], JsonUtil.parseInt),
      orderNoMin: JsonUtil.parseInt(json['orderNoMin']),
      orderNoMax: JsonUtil.parseInt(json['orderNoMax']),
      floorNameLike: JsonUtil.parseString(json['floorNameLike']),
      createTimeMin: JsonUtil.parseDateTime(json['createTimeMin']),
      createTimeMax: JsonUtil.parseDateTime(json['createTimeMax']),
      updateTimeMin: JsonUtil.parseDateTime(json['updateTimeMin']),
      updateTimeMax: JsonUtil.parseDateTime(json['updateTimeMax']),
    );
  }

  static List<Floor> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Floor.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.floorGoodss != null) {
      var list = List();
      for (var v in floorGoodss) {
        list.add(v.toMap());
      }
      result['floorGoodss'] = list;
    }
    if (this.advertisePicture != null) {
      result['advertisePicture'] = advertisePicture.toMap();
    }
    if (this.floorId != null) {
      result['floorId'] = JsonUtil.stringToJson(floorId);
    }
    if (this.advertiseId != null) {
      result['advertiseId'] = JsonUtil.intToJson(advertiseId);
    }
    if (this.orderNo != null) {
      result['orderNo'] = JsonUtil.intToJson(orderNo);
    }
    if (this.floorName != null) {
      result['floorName'] = JsonUtil.stringToJson(floorName);
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
    if (this.floorIds != null) {
      var list = List();
      for (var v in floorIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['floorIds'] = list;
    }
    if (this.advertiseIds != null) {
      var list = List();
      for (var v in advertiseIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['advertiseIds'] = list;
    }
    if (this.orderNoMin != null) {
      result['orderNoMin'] = JsonUtil.intToJson(orderNoMin);
    }
    if (this.orderNoMax != null) {
      result['orderNoMax'] = JsonUtil.intToJson(orderNoMax);
    }
    if (this.floorNameLike != null) {
      result['floorNameLike'] = JsonUtil.stringToJson(floorNameLike);
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

  static Map<String, Floor> toIdMap(List<Floor> floorList) {
    var result = Map<String, Floor>();
    if (floorList != null) {
      for (var floor in floorList) {
        if (floor != null) {
          result[floor.floorId] = floor;
        }
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<Floor> floorList) {
    var result = List<Map<String, dynamic>>();
    if (floorList != null) {
      for (var floor in floorList) {
        if (floor != null) {
          result.add(floor.toMap());
        }
      }
    }
    return result;
  }

}

