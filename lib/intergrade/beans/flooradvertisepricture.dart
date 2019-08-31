///  Do not remove this unless you get business authorization.
///  FloorAdvertisePricture
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/floorgoods.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class FloorAdvertisePricture with FrontBean {
  /// floorId
  static const String FloorAdvertisePricture_ID = 'floorId';

  /// floorGoodss
  List<FloorGoods> floorGoodss;

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

  /// pictureAddress
  String pictureAddress;

  /// toPlace
  String toPlace;

  /// urlType
  int urlType;

  /// pictureAddressLike
  String pictureAddressLike;

  /// toPlaceLike
  String toPlaceLike;

  /// urlType s
  List<int> urlTypes;

  /// pICTURE_ADDRESS
  String pICTURE_ADDRESS;

  /// tO_PLACE
  String tO_PLACE;

  FloorAdvertisePricture({
    this.floorGoodss,
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
    this.pictureAddress,
    this.toPlace,
    this.urlType,
    this.pictureAddressLike,
    this.toPlaceLike,
    this.urlTypes,
    this.pICTURE_ADDRESS,
    this.tO_PLACE,
  });

  static FloorAdvertisePricture fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return FloorAdvertisePricture(
      floorGoodss: FloorGoods.fromJsonList(json['floorGoodss']),
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
      pictureAddress: JsonUtil.parseString(json['pictureAddress']),
      toPlace: JsonUtil.parseString(json['toPlace']),
      urlType: JsonUtil.parseInt(json['urlType']),
      pictureAddressLike: JsonUtil.parseString(json['pictureAddressLike']),
      toPlaceLike: JsonUtil.parseString(json['toPlaceLike']),
      urlTypes: JsonUtil.parseList<int>(json['urlTypes'], JsonUtil.parseInt),
      pICTURE_ADDRESS: JsonUtil.parseString(json['pICTURE_ADDRESS']),
      tO_PLACE: JsonUtil.parseString(json['tO_PLACE']),
    );
  }

  static List<FloorAdvertisePricture> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, FloorAdvertisePricture.fromJson);
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
    if (this.pictureAddress != null) {
      result['pictureAddress'] = JsonUtil.stringToJson(pictureAddress);
    }
    if (this.toPlace != null) {
      result['toPlace'] = JsonUtil.stringToJson(toPlace);
    }
    if (this.urlType != null) {
      result['urlType'] = JsonUtil.intToJson(urlType);
    }
    if (this.pictureAddressLike != null) {
      result['pictureAddressLike'] = JsonUtil.stringToJson(pictureAddressLike);
    }
    if (this.toPlaceLike != null) {
      result['toPlaceLike'] = JsonUtil.stringToJson(toPlaceLike);
    }
    if (this.urlTypes != null) {
      var list = List();
      for (var v in urlTypes) {
        list.add(JsonUtil.intToJson(v));
      }
      result['urlTypes'] = list;
    }
    if (this.pICTURE_ADDRESS != null) {
      result['pICTURE_ADDRESS'] = JsonUtil.stringToJson(pICTURE_ADDRESS);
    }
    if (this.tO_PLACE != null) {
      result['tO_PLACE'] = JsonUtil.stringToJson(tO_PLACE);
    }
    return result;
  }

  static Map<String, FloorAdvertisePricture> toIdMap(List<FloorAdvertisePricture> floorAdvertisePrictureList) {
    var result = Map<String, FloorAdvertisePricture>();
    if (floorAdvertisePrictureList != null) {
      for (var floorAdvertisePricture in floorAdvertisePrictureList) {
        if (floorAdvertisePricture != null) {
          result[floorAdvertisePricture.floorId] = floorAdvertisePricture;
        }
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<FloorAdvertisePricture> floorAdvertisePrictureList) {
    var result = List<Map<String, dynamic>>();
    if (floorAdvertisePrictureList != null) {
      for (var floorAdvertisePricture in floorAdvertisePrictureList) {
        if (floorAdvertisePricture != null) {
          result.add(floorAdvertisePricture.toMap());
        }
      }
    }
    return result;
  }

}

