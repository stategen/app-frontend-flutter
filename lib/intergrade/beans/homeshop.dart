///  Do not remove this unless you get business authorization.
///  HomeShop
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class HomeShop with FrontBean {
  /// homeShopId
  static const String HomeShop_ID = 'homeShopId';

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// homeShopId
  String homeShopId;

  /// homeShopId s
  List<String> homeShopIds;

  /// leaderImage
  String leaderImage;

  /// leaderPhone
  String leaderPhone;

  /// leaderPhoneLike
  String leaderPhoneLike;

  /// shopId
  String shopId;

  /// shopId s
  List<String> shopIds;

  /// 更新时间
  DateTime updateTime;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  HomeShop({
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.homeShopId,
    this.homeShopIds,
    this.leaderImage,
    this.leaderPhone,
    this.leaderPhoneLike,
    this.shopId,
    this.shopIds,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
  });

  static HomeShop fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return HomeShop(
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      homeShopId: JsonUtil.parseString(json['homeShopId']),
      leaderImage: JsonUtil.parseString(json['leaderImage']),
      leaderPhone: JsonUtil.parseString(json['leaderPhone']),
      shopId: JsonUtil.parseString(json['shopId']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
    );
  }

  static List<HomeShop> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, HomeShop.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
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
    if (this.homeShopId != null) {
      result['homeShopId'] = JsonUtil.stringToJson(homeShopId);
    }
    if (this.homeShopIds != null) {
      var list = List();
      for (var v in homeShopIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['homeShopIds'] = list;
    }
    if (this.leaderImage != null) {
      result['leaderImage'] = JsonUtil.stringToJson(leaderImage);
    }
    if (this.leaderPhone != null) {
      result['leaderPhone'] = JsonUtil.stringToJson(leaderPhone);
    }
    if (this.leaderPhoneLike != null) {
      result['leaderPhoneLike'] = JsonUtil.stringToJson(leaderPhoneLike);
    }
    if (this.shopId != null) {
      result['shopId'] = JsonUtil.stringToJson(shopId);
    }
    if (this.shopIds != null) {
      var list = List();
      for (var v in shopIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['shopIds'] = list;
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

  static Map<String, HomeShop> toIdMap(List<HomeShop> homeShopList) {
    var result = Map<String, HomeShop>();
    if (homeShopList != null) {
      for (var homeShop in homeShopList) {
        if (homeShop != null) {
          result[homeShop.homeShopId] = homeShop;
        }
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<HomeShop> homeShopList) {
    var result = List<Map<String, dynamic>>();
    if (homeShopList != null) {
      for (var homeShop in homeShopList) {
        if (homeShop != null) {
          result.add(homeShop.toMap());
        }
      }
    }
    return result;
  }

}

