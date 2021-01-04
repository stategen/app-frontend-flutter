///  Do not remove this unless you get business authorization.
///  HomeAdvertise
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/advertisepicture.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class HomeAdvertiseFields {
  static const advertiseId = 'advertiseId';
  static const advertiseIds = 'advertiseIds';
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const homeAdvId = 'homeAdvId';
  static const homeAdvIds = 'homeAdvIds';
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

class HomeAdvertise extends AdvertisePicture with FrontBean {
  /// homeAdvId
  static const String ID = HomeAdvertiseFields.homeAdvId;

  /// homeAdvId
  String homeAdvId;

  /// homeAdvId s
  List<String> homeAdvIds;

  HomeAdvertise({
    advertiseId,
    advertiseIds,
    createTime,
    createTimeMax,
    createTimeMin,
    deleteFlag,
    this.homeAdvId,
    this.homeAdvIds,
    pICTURE_ADDRESS,
    pictureAddress,
    pictureAddressLike,
    tO_PLACE,
    toPlace,
    toPlaceLike,
    updateTime,
    updateTimeMax,
    updateTimeMin,
    urlType,
    urlTypes,
  }) : super(advertiseId: advertiseId, advertiseIds: advertiseIds, createTime: createTime, createTimeMax: createTimeMax, createTimeMin: createTimeMin, deleteFlag: deleteFlag, pICTURE_ADDRESS: pICTURE_ADDRESS, pictureAddress: pictureAddress, pictureAddressLike: pictureAddressLike, tO_PLACE: tO_PLACE, toPlace: toPlace, toPlaceLike: toPlaceLike, updateTime: updateTime, updateTimeMax: updateTimeMax, updateTimeMin: updateTimeMin, urlType: urlType, urlTypes: urlTypes);

  static HomeAdvertise fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return HomeAdvertise(
      advertiseId: JsonUtil.parseInt(json[HomeAdvertiseFields.advertiseId]),
      createTime: JsonUtil.parseDateTime(json[HomeAdvertiseFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[HomeAdvertiseFields.deleteFlag]),
      homeAdvId: JsonUtil.parseString(json[HomeAdvertiseFields.homeAdvId]),
      pICTURE_ADDRESS: JsonUtil.parseString(json[HomeAdvertiseFields.pICTURE_ADDRESS]),
      pictureAddress: JsonUtil.parseString(json[HomeAdvertiseFields.pictureAddress]),
      tO_PLACE: JsonUtil.parseString(json[HomeAdvertiseFields.tO_PLACE]),
      toPlace: JsonUtil.parseString(json[HomeAdvertiseFields.toPlace]),
      updateTime: JsonUtil.parseDateTime(json[HomeAdvertiseFields.updateTime]),
      urlType: JsonUtil.parseInt(json[HomeAdvertiseFields.urlType]),
    );
  }

  static List<HomeAdvertise> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, HomeAdvertise.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.advertiseId != null) {
      result[HomeAdvertiseFields.advertiseId] = JsonUtil.intToJson(advertiseId);
    }
    if (this.advertiseIds != null) {
      var list = List();
      for (var v in advertiseIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result[HomeAdvertiseFields.advertiseIds] = list;
    }
    if (this.createTime != null) {
      result[HomeAdvertiseFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[HomeAdvertiseFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[HomeAdvertiseFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[HomeAdvertiseFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.homeAdvId != null) {
      result[HomeAdvertiseFields.homeAdvId] = JsonUtil.stringToJson(homeAdvId);
    }
    if (this.homeAdvIds != null) {
      var list = List();
      for (var v in homeAdvIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[HomeAdvertiseFields.homeAdvIds] = list;
    }
    if (this.pICTURE_ADDRESS != null) {
      result[HomeAdvertiseFields.pICTURE_ADDRESS] = JsonUtil.stringToJson(pICTURE_ADDRESS);
    }
    if (this.pictureAddress != null) {
      result[HomeAdvertiseFields.pictureAddress] = JsonUtil.stringToJson(pictureAddress);
    }
    if (this.pictureAddressLike != null) {
      result[HomeAdvertiseFields.pictureAddressLike] = JsonUtil.stringToJson(pictureAddressLike);
    }
    if (this.tO_PLACE != null) {
      result[HomeAdvertiseFields.tO_PLACE] = JsonUtil.stringToJson(tO_PLACE);
    }
    if (this.toPlace != null) {
      result[HomeAdvertiseFields.toPlace] = JsonUtil.stringToJson(toPlace);
    }
    if (this.toPlaceLike != null) {
      result[HomeAdvertiseFields.toPlaceLike] = JsonUtil.stringToJson(toPlaceLike);
    }
    if (this.updateTime != null) {
      result[HomeAdvertiseFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[HomeAdvertiseFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[HomeAdvertiseFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.urlType != null) {
      result[HomeAdvertiseFields.urlType] = JsonUtil.intToJson(urlType);
    }
    if (this.urlTypes != null) {
      var list = List();
      for (var v in urlTypes) {
        list.add(JsonUtil.intToJson(v));
      }
      result[HomeAdvertiseFields.urlTypes] = list;
    }
    return result;
  }

  static Map<String, HomeAdvertise> toIdMap(List<HomeAdvertise> homeAdvertiseList) {
    var result = Map<String, HomeAdvertise>();
    if (homeAdvertiseList != null) {
      for (var homeAdvertise in homeAdvertiseList) {
        if (homeAdvertise != null) {
          result[homeAdvertise.homeAdvId] = homeAdvertise;
        }
      }
    }
    return result;
  }

}

