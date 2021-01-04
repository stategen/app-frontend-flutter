///  Do not remove this unless you get business authorization.
///  HomeShop
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class HomeShopFields {
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const homeShopId = 'homeShopId';
  static const homeShopIds = 'homeShopIds';
  static const leaderImage = 'leaderImage';
  static const leaderPhone = 'leaderPhone';
  static const leaderPhoneLike = 'leaderPhoneLike';
  static const shopId = 'shopId';
  static const shopIds = 'shopIds';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
}

class HomeShop with FrontBean {
  /// homeShopId
  static const String ID = HomeShopFields.homeShopId;

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
      createTime: JsonUtil.parseDateTime(json[HomeShopFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[HomeShopFields.deleteFlag]),
      homeShopId: JsonUtil.parseString(json[HomeShopFields.homeShopId]),
      leaderImage: JsonUtil.parseString(json[HomeShopFields.leaderImage]),
      leaderPhone: JsonUtil.parseString(json[HomeShopFields.leaderPhone]),
      shopId: JsonUtil.parseString(json[HomeShopFields.shopId]),
      updateTime: JsonUtil.parseDateTime(json[HomeShopFields.updateTime]),
    );
  }

  static List<HomeShop> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, HomeShop.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.createTime != null) {
      result[HomeShopFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[HomeShopFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[HomeShopFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[HomeShopFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.homeShopId != null) {
      result[HomeShopFields.homeShopId] = JsonUtil.stringToJson(homeShopId);
    }
    if (this.homeShopIds != null) {
      var list = List();
      for (var v in homeShopIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[HomeShopFields.homeShopIds] = list;
    }
    if (this.leaderImage != null) {
      result[HomeShopFields.leaderImage] = JsonUtil.stringToJson(leaderImage);
    }
    if (this.leaderPhone != null) {
      result[HomeShopFields.leaderPhone] = JsonUtil.stringToJson(leaderPhone);
    }
    if (this.leaderPhoneLike != null) {
      result[HomeShopFields.leaderPhoneLike] = JsonUtil.stringToJson(leaderPhoneLike);
    }
    if (this.shopId != null) {
      result[HomeShopFields.shopId] = JsonUtil.stringToJson(shopId);
    }
    if (this.shopIds != null) {
      var list = List();
      for (var v in shopIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[HomeShopFields.shopIds] = list;
    }
    if (this.updateTime != null) {
      result[HomeShopFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[HomeShopFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[HomeShopFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
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

}

