///  Do not remove this unless you get business authorization.
///  HomeShop
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class HomeShop with FrontBean {
  /// homeShopId
  static const String HomeShop_ID = 'homeShopId';

  /// homeShopId
  String homeShopId;

  /// shopId
  String shopId;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// homeShopId s
  List<String> homeShopIds;

  /// shopId s
  List<String> shopIds;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// leaderImage
  String leaderImage;

  /// leaderPhone
  String leaderPhone;

  /// leaderPhoneLike
  String leaderPhoneLike;

  HomeShop({
    this.homeShopId,
    this.shopId,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.homeShopIds,
    this.shopIds,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
    this.leaderImage,
    this.leaderPhone,
    this.leaderPhoneLike,
  });

  static HomeShop fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return HomeShop(
      homeShopId: JsonUtil.parseString(json['homeShopId']),
      shopId: JsonUtil.parseString(json['shopId']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
    );
  }

  static List<HomeShop> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, HomeShop.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.homeShopId != null) {
      result['homeShopId'] = JsonUtil.stringToJson(homeShopId);
    }
    if (this.shopId != null) {
      result['shopId'] = JsonUtil.stringToJson(shopId);
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
    if (this.homeShopIds != null) {
      var list = List();
      for (var v in homeShopIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['homeShopIds'] = list;
    }
    if (this.shopIds != null) {
      var list = List();
      for (var v in shopIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['shopIds'] = list;
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
    if (this.leaderImage != null) {
      result['leaderImage'] = JsonUtil.stringToJson(leaderImage);
    }
    if (this.leaderPhone != null) {
      result['leaderPhone'] = JsonUtil.stringToJson(leaderPhone);
    }
    if (this.leaderPhoneLike != null) {
      result['leaderPhoneLike'] = JsonUtil.stringToJson(leaderPhoneLike);
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

