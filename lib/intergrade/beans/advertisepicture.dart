///  Do not remove this unless you get business authorization.
///  AdvertisePicture
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class AdvertisePictureFields {
  static const advertiseId = 'advertiseId';
  static const advertiseIds = 'advertiseIds';
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const pICTURE_ADDRESS = 'pICTURE_ADDRESS';
  static const pictureAddress = 'pictureAddress';
  static const pictureAddressLike = 'pictureAddressLike';
  static const tO_PLACE = 'tO_PLACE';
  static const toPlace = 'toPlace';
  static const toPlaceLike = 'toPlaceLike';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
  static const urlType = 'urlType';
  static const urlTypes = 'urlTypes';
}

class AdvertisePicture with FrontBean {
  /// advertiseId
  static const String ID = AdvertisePictureFields.advertiseId;

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
      advertiseId: JsonUtil.parseInt(json[AdvertisePictureFields.advertiseId]),
      createTime: JsonUtil.parseDateTime(json[AdvertisePictureFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[AdvertisePictureFields.deleteFlag]),
      pICTURE_ADDRESS: JsonUtil.parseString(json[AdvertisePictureFields.pICTURE_ADDRESS]),
      pictureAddress: JsonUtil.parseString(json[AdvertisePictureFields.pictureAddress]),
      tO_PLACE: JsonUtil.parseString(json[AdvertisePictureFields.tO_PLACE]),
      toPlace: JsonUtil.parseString(json[AdvertisePictureFields.toPlace]),
      updateTime: JsonUtil.parseDateTime(json[AdvertisePictureFields.updateTime]),
      urlType: JsonUtil.parseInt(json[AdvertisePictureFields.urlType]),
    );
  }

  static List<AdvertisePicture> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, AdvertisePicture.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.advertiseId != null) {
      result[AdvertisePictureFields.advertiseId] = JsonUtil.intToJson(advertiseId);
    }
    if (this.advertiseIds != null) {
      var list = List();
      for (var v in advertiseIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result[AdvertisePictureFields.advertiseIds] = list;
    }
    if (this.createTime != null) {
      result[AdvertisePictureFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[AdvertisePictureFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[AdvertisePictureFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[AdvertisePictureFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.pICTURE_ADDRESS != null) {
      result[AdvertisePictureFields.pICTURE_ADDRESS] = JsonUtil.stringToJson(pICTURE_ADDRESS);
    }
    if (this.pictureAddress != null) {
      result[AdvertisePictureFields.pictureAddress] = JsonUtil.stringToJson(pictureAddress);
    }
    if (this.pictureAddressLike != null) {
      result[AdvertisePictureFields.pictureAddressLike] = JsonUtil.stringToJson(pictureAddressLike);
    }
    if (this.tO_PLACE != null) {
      result[AdvertisePictureFields.tO_PLACE] = JsonUtil.stringToJson(tO_PLACE);
    }
    if (this.toPlace != null) {
      result[AdvertisePictureFields.toPlace] = JsonUtil.stringToJson(toPlace);
    }
    if (this.toPlaceLike != null) {
      result[AdvertisePictureFields.toPlaceLike] = JsonUtil.stringToJson(toPlaceLike);
    }
    if (this.updateTime != null) {
      result[AdvertisePictureFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[AdvertisePictureFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[AdvertisePictureFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.urlType != null) {
      result[AdvertisePictureFields.urlType] = JsonUtil.intToJson(urlType);
    }
    if (this.urlTypes != null) {
      var list = List();
      for (var v in urlTypes) {
        list.add(JsonUtil.intToJson(v));
      }
      result[AdvertisePictureFields.urlTypes] = list;
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

}

