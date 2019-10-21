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

  /// advertiseId
  int advertiseId;

  /// advertiseId s
  List<int> advertiseIds;

  /// advertisePicture
  AdvertisePicture advertisePicture;

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// floorGoodss
  List<FloorGoods> floorGoodss;

  /// floorId
  String floorId;

  /// floorId s
  List<String> floorIds;

  /// floorName
  String floorName;

  /// floorNameLike
  String floorNameLike;

  /// orderNo
  int orderNo;

  /// orderNoMax
  int orderNoMax;

  /// orderNoMin
  int orderNoMin;

  /// 更新时间
  DateTime updateTime;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  Floor({
    this.advertiseId,
    this.advertiseIds,
    this.advertisePicture,
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.floorGoodss,
    this.floorId,
    this.floorIds,
    this.floorName,
    this.floorNameLike,
    this.orderNo,
    this.orderNoMax,
    this.orderNoMin,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
  });

  static Floor fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Floor(
      advertiseId: JsonUtil.parseInt(json['advertiseId']),
      advertisePicture: AdvertisePicture.fromJson(json['advertisePicture']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      floorGoodss: FloorGoods.fromJsonList(json['floorGoodss']),
      floorId: JsonUtil.parseString(json['floorId']),
      floorName: JsonUtil.parseString(json['floorName']),
      orderNo: JsonUtil.parseInt(json['orderNo']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
    );
  }

  static List<Floor> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Floor.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.advertiseId != null) {
      result['advertiseId'] = JsonUtil.intToJson(advertiseId);
    }
    if (this.advertiseIds != null) {
      var list = List();
      for (var v in advertiseIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['advertiseIds'] = list;
    }
    if (this.advertisePicture != null) {
      result['advertisePicture'] = advertisePicture.toMap();
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
    if (this.floorGoodss != null) {
      var list = List();
      for (var v in floorGoodss) {
        list.add(v.toMap());
      }
      result['floorGoodss'] = list;
    }
    if (this.floorId != null) {
      result['floorId'] = JsonUtil.stringToJson(floorId);
    }
    if (this.floorIds != null) {
      var list = List();
      for (var v in floorIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['floorIds'] = list;
    }
    if (this.floorName != null) {
      result['floorName'] = JsonUtil.stringToJson(floorName);
    }
    if (this.floorNameLike != null) {
      result['floorNameLike'] = JsonUtil.stringToJson(floorNameLike);
    }
    if (this.orderNo != null) {
      result['orderNo'] = JsonUtil.intToJson(orderNo);
    }
    if (this.orderNoMax != null) {
      result['orderNoMax'] = JsonUtil.intToJson(orderNoMax);
    }
    if (this.orderNoMin != null) {
      result['orderNoMin'] = JsonUtil.intToJson(orderNoMin);
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

