///  Do not remove this unless you get business authorization.
///  Floor
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/advertisepicture.dart';
import '../beans/floorgoods.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class FloorFields {
  static const advertiseId = 'advertiseId';
  static const advertiseIds = 'advertiseIds';
  static const advertisePicture = 'advertisePicture';
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const floorGoodss = 'floorGoodss';
  static const floorId = 'floorId';
  static const floorIds = 'floorIds';
  static const floorName = 'floorName';
  static const floorNameLike = 'floorNameLike';
  static const orderNo = 'orderNo';
  static const orderNoMax = 'orderNoMax';
  static const orderNoMin = 'orderNoMin';
  static const orderNos = 'orderNos';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
}

class Floor with FrontBean {
  /// floorId
  static const String ID = FloorFields.floorId;

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

  /// orderNo s
  List<int> orderNos;

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
    this.orderNos,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
  });

  static Floor fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Floor(
      advertiseId: JsonUtil.parseInt(json[FloorFields.advertiseId]),
      advertisePicture: AdvertisePicture.fromJson(json[FloorFields.advertisePicture]),
      createTime: JsonUtil.parseDateTime(json[FloorFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[FloorFields.deleteFlag]),
      floorGoodss: FloorGoods.fromJsonList(json[FloorFields.floorGoodss]),
      floorId: JsonUtil.parseString(json[FloorFields.floorId]),
      floorName: JsonUtil.parseString(json[FloorFields.floorName]),
      orderNo: JsonUtil.parseInt(json[FloorFields.orderNo]),
      updateTime: JsonUtil.parseDateTime(json[FloorFields.updateTime]),
    );
  }

  static List<Floor> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Floor.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.advertiseId != null) {
      result[FloorFields.advertiseId] = JsonUtil.intToJson(advertiseId);
    }
    if (this.advertiseIds != null) {
      var list = List();
      for (var v in advertiseIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result[FloorFields.advertiseIds] = list;
    }
    if (this.advertisePicture != null) {
      result[FloorFields.advertisePicture] = advertisePicture.toJson();
    }
    if (this.createTime != null) {
      result[FloorFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[FloorFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[FloorFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[FloorFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.floorGoodss != null) {
      var list = List();
      for (var v in floorGoodss) {
        list.add(v.toJson());
      }
      result[FloorFields.floorGoodss] = list;
    }
    if (this.floorId != null) {
      result[FloorFields.floorId] = JsonUtil.stringToJson(floorId);
    }
    if (this.floorIds != null) {
      var list = List();
      for (var v in floorIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[FloorFields.floorIds] = list;
    }
    if (this.floorName != null) {
      result[FloorFields.floorName] = JsonUtil.stringToJson(floorName);
    }
    if (this.floorNameLike != null) {
      result[FloorFields.floorNameLike] = JsonUtil.stringToJson(floorNameLike);
    }
    if (this.orderNo != null) {
      result[FloorFields.orderNo] = JsonUtil.intToJson(orderNo);
    }
    if (this.orderNoMax != null) {
      result[FloorFields.orderNoMax] = JsonUtil.intToJson(orderNoMax);
    }
    if (this.orderNoMin != null) {
      result[FloorFields.orderNoMin] = JsonUtil.intToJson(orderNoMin);
    }
    if (this.orderNos != null) {
      var list = List();
      for (var v in orderNos) {
        list.add(JsonUtil.intToJson(v));
      }
      result[FloorFields.orderNos] = list;
    }
    if (this.updateTime != null) {
      result[FloorFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[FloorFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[FloorFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
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

}

