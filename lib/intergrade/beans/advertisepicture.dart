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

  /// advertiseId s
  List<int> advertiseIds;

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// pICTURE_ADDRESS
  String pICTURE_ADDRESS;

  /// pictureAddress
  String pictureAddress;

  /// pictureAddressLike
  String pictureAddressLike;

  /// tO_PLACE
  String tO_PLACE;

  /// toPlace
  String toPlace;

  /// toPlaceLike
  String toPlaceLike;

  /// 更新时间
  DateTime updateTime;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// urlType
  int urlType;

  /// urlType s
  List<int> urlTypes;

  AdvertisePicture({
    this.advertiseId,
    this.advertiseIds,
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.pICTURE_ADDRESS,
    this.pictureAddress,
    this.pictureAddressLike,
    this.tO_PLACE,
    this.toPlace,
    this.toPlaceLike,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
    this.urlType,
    this.urlTypes,
  });

  static AdvertisePicture fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return AdvertisePicture(
      advertiseId: JsonUtil.parseInt(json['advertiseId']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      pICTURE_ADDRESS: JsonUtil.parseString(json['pICTURE_ADDRESS']),
      pictureAddress: JsonUtil.parseString(json['pictureAddress']),
      tO_PLACE: JsonUtil.parseString(json['tO_PLACE']),
      toPlace: JsonUtil.parseString(json['toPlace']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      urlType: JsonUtil.parseInt(json['urlType']),
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
    if (this.advertiseIds != null) {
      var list = List();
      for (var v in advertiseIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['advertiseIds'] = list;
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
    if (this.pICTURE_ADDRESS != null) {
      result['pICTURE_ADDRESS'] = JsonUtil.stringToJson(pICTURE_ADDRESS);
    }
    if (this.pictureAddress != null) {
      result['pictureAddress'] = JsonUtil.stringToJson(pictureAddress);
    }
    if (this.pictureAddressLike != null) {
      result['pictureAddressLike'] = JsonUtil.stringToJson(pictureAddressLike);
    }
    if (this.tO_PLACE != null) {
      result['tO_PLACE'] = JsonUtil.stringToJson(tO_PLACE);
    }
    if (this.toPlace != null) {
      result['toPlace'] = JsonUtil.stringToJson(toPlace);
    }
    if (this.toPlaceLike != null) {
      result['toPlaceLike'] = JsonUtil.stringToJson(toPlaceLike);
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
    if (this.urlType != null) {
      result['urlType'] = JsonUtil.intToJson(urlType);
    }
    if (this.urlTypes != null) {
      var list = List();
      for (var v in urlTypes) {
        list.add(JsonUtil.intToJson(v));
      }
      result['urlTypes'] = list;
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

