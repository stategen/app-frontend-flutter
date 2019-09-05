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
    this.homeAdvId,
    advertiseId,
    createTime,
    updateTime,
    deleteFlag,
    this.homeAdvIds,
    advertiseIds,
    createTimeMin,
    createTimeMax,
    updateTimeMin,
    updateTimeMax,
    pictureAddress,
    toPlace,
    urlType,
    pictureAddressLike,
    toPlaceLike,
    urlTypes,
    tO_PLACE,
    pICTURE_ADDRESS,
  }) : super(advertiseId: advertiseId, pictureAddress: pictureAddress, toPlace: toPlace, urlType: urlType, createTime: createTime, updateTime: updateTime, deleteFlag: deleteFlag, advertiseIds: advertiseIds, pictureAddressLike: pictureAddressLike, toPlaceLike: toPlaceLike, urlTypes: urlTypes, createTimeMin: createTimeMin, createTimeMax: createTimeMax, updateTimeMin: updateTimeMin, updateTimeMax: updateTimeMax, tO_PLACE: tO_PLACE, pICTURE_ADDRESS: pICTURE_ADDRESS);

  static HomeAdvertise fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return HomeAdvertise(
      homeAdvId: JsonUtil.parseString(json['homeAdvId']),
      advertiseId: JsonUtil.parseInt(json['advertiseId']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      pictureAddress: JsonUtil.parseString(json['pictureAddress']),
      toPlace: JsonUtil.parseString(json['toPlace']),
      urlType: JsonUtil.parseInt(json['urlType']),
      tO_PLACE: JsonUtil.parseString(json['tO_PLACE']),
      pICTURE_ADDRESS: JsonUtil.parseString(json['pICTURE_ADDRESS']),
    );
  }

  static List<HomeAdvertise> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, HomeAdvertise.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.homeAdvId != null) {
      result['homeAdvId'] = JsonUtil.stringToJson(homeAdvId);
    }
    if (this.advertiseId != null) {
      result['advertiseId'] = JsonUtil.intToJson(advertiseId);
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
    if (this.homeAdvIds != null) {
      var list = List();
      for (var v in homeAdvIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['homeAdvIds'] = list;
    }
    if (this.advertiseIds != null) {
      var list = List();
      for (var v in advertiseIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['advertiseIds'] = list;
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
    if (this.tO_PLACE != null) {
      result['tO_PLACE'] = JsonUtil.stringToJson(tO_PLACE);
    }
    if (this.pICTURE_ADDRESS != null) {
      result['pICTURE_ADDRESS'] = JsonUtil.stringToJson(pICTURE_ADDRESS);
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

  static List<Map<String, dynamic>> toMaps(List<HomeAdvertise> homeAdvertiseList) {
    var result = List<Map<String, dynamic>>();
    if (homeAdvertiseList != null) {
      for (var homeAdvertise in homeAdvertiseList) {
        if (homeAdvertise != null) {
          result.add(homeAdvertise.toMap());
        }
      }
    }
    return result;
  }

}

