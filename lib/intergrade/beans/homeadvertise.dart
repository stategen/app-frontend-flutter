///  Do not remove this unless you get business authorization.
///  HomeAdvertise
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/advertisepicture.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class HomeAdvertise extends AdvertisePicture with FrontBean {
  /// homeAdvId
  static const String HomeAdvertise_ID = 'homeAdvId';

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
      advertiseId: JsonUtil.parseInt(json['advertiseId']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      homeAdvId: JsonUtil.parseString(json['homeAdvId']),
      pICTURE_ADDRESS: JsonUtil.parseString(json['pICTURE_ADDRESS']),
      pictureAddress: JsonUtil.parseString(json['pictureAddress']),
      tO_PLACE: JsonUtil.parseString(json['tO_PLACE']),
      toPlace: JsonUtil.parseString(json['toPlace']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      urlType: JsonUtil.parseInt(json['urlType']),
    );
  }

  static List<HomeAdvertise> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, HomeAdvertise.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
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
    if (this.homeAdvId != null) {
      result['homeAdvId'] = JsonUtil.stringToJson(homeAdvId);
    }
    if (this.homeAdvIds != null) {
      var list = List();
      for (var v in homeAdvIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['homeAdvIds'] = list;
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

