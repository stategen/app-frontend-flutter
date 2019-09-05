///  Do not remove this unless you get business authorization.
///  AdvertisePicture
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class AdvertisePicture with FrontBean {
  /// advertiseId
  static const String AdvertisePicture_ID = 'advertiseId';

  /// advertiseId
  int advertiseId;

  /// pictureAddress
  String pictureAddress;

  /// toPlace
  String toPlace;

  /// urlType
  int urlType;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// advertiseId s
  List<int> advertiseIds;

  /// pictureAddressLike
  String pictureAddressLike;

  /// toPlaceLike
  String toPlaceLike;

  /// urlType s
  List<int> urlTypes;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// tO_PLACE
  String tO_PLACE;

  /// pICTURE_ADDRESS
  String pICTURE_ADDRESS;

  AdvertisePicture({
    this.advertiseId,
    this.pictureAddress,
    this.toPlace,
    this.urlType,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.advertiseIds,
    this.pictureAddressLike,
    this.toPlaceLike,
    this.urlTypes,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
    this.tO_PLACE,
    this.pICTURE_ADDRESS,
  });

  static AdvertisePicture fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return AdvertisePicture(
      advertiseId: JsonUtil.parseInt(json['advertiseId']),
      pictureAddress: JsonUtil.parseString(json['pictureAddress']),
      toPlace: JsonUtil.parseString(json['toPlace']),
      urlType: JsonUtil.parseInt(json['urlType']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      tO_PLACE: JsonUtil.parseString(json['tO_PLACE']),
      pICTURE_ADDRESS: JsonUtil.parseString(json['pICTURE_ADDRESS']),
    );
  }

  static List<AdvertisePicture> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, AdvertisePicture.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.advertiseId != null) {
      result['advertiseId'] = JsonUtil.intToJson(advertiseId);
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
    if (this.createTime != null) {
      result['createTime'] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.updateTime != null) {
      result['updateTime'] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.deleteFlag != null) {
      result['deleteFlag'] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.advertiseIds != null) {
      var list = List();
      for (var v in advertiseIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['advertiseIds'] = list;
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
    if (this.tO_PLACE != null) {
      result['tO_PLACE'] = JsonUtil.stringToJson(tO_PLACE);
    }
    if (this.pICTURE_ADDRESS != null) {
      result['pICTURE_ADDRESS'] = JsonUtil.stringToJson(pICTURE_ADDRESS);
    }
    return result;
  }

  static Map<int, AdvertisePicture> toIdMap(List<AdvertisePicture> advertisePictureList) {
    var result = Map<int, AdvertisePicture>();
    if (advertisePictureList != null) {
      for (var advertisePicture in advertisePictureList) {
        if (advertisePicture != null) {
          result[advertisePicture.advertiseId] = advertisePicture;
        }
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<AdvertisePicture> advertisePictureList) {
    var result = List<Map<String, dynamic>>();
    if (advertisePictureList != null) {
      for (var advertisePicture in advertisePictureList) {
        if (advertisePicture != null) {
          result.add(advertisePicture.toMap());
        }
      }
    }
    return result;
  }

}

