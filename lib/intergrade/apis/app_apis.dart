///  Do not remove this unless you get business authorization.
///  App
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import '../beans/city.dart';
import '../beans/hoppy.dart';
import '../beans/menu.dart';
import '../beans/province.dart';
import '../beans/region.dart';
import '../beans/simpleresponse.dart';
import '../beans/user.dart';
import "../configs/tradeApp_config.dart";
import '../../stgutil/net_util.dart';
import 'package:flutter/material.dart';

class AppApis {
  /// GET /api/app/getAllMenus
  /// 获所所有菜单
  static Future<List<Menu>> getAllMenus() async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/app/getAllMenus';
    requestInit.method = Method.GET;
    var dest = await NetUtil.fetch(requestInit);
    return Menu.fromJsonList(dest as List);
  }

  /// POST /api/app/getCityOptions
  /// 城市
  static Future<List<City>> getCityOptions(String param, {Map<String, dynamic> payload, String provinceId }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/app/getCityOptions';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (param != null) {
      payload['provinceId'] = param;
    }
    if (provinceId != null) {
      payload['provinceId'] = provinceId;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return City.fromJsonList(dest as List);
  }

  /// POST /api/app/getCookieUser
  /// 
  static Future<User> getCookieUser() async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/app/getCookieUser';
    requestInit.mediaType = MediaType.FORM;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return User.fromJson(dest);
  }

  /// GET /api/app/getHoppyOptions
  /// 爱好
  static Future<List<Hoppy>> getHoppyOptions() async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/app/getHoppyOptions';
    requestInit.method = Method.GET;
    var dest = await NetUtil.fetch(requestInit);
    return Hoppy.fromJsonList(dest as List);
  }

  /// POST /api/app/getProvinceOptions
  /// 省份
  static Future<List<Province>> getProvinceOptions() async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/app/getProvinceOptions';
    requestInit.mediaType = MediaType.FORM;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return Province.fromJsonList(dest as List);
  }

  /// POST /api/app/getRegionOptions
  /// 获取地区
  static Future<List<Region>> getRegionOptions(List<int> param, {Map<String, dynamic> payload, List<int> parentRegionIds }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/app/getRegionOptions';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (param != null) {
      payload['parentRegionIds'] = param;
    }
    if (parentRegionIds != null) {
      payload['parentRegionIds'] = parentRegionIds;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return Region.fromJsonList(dest as List);
  }

  /// POST /api/app/getUserOptions
  /// 获取用户
  static Future<List<User>> getUserOptions(List<String> param, {Map<String, dynamic> payload, List<String> userIds }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/app/getUserOptions';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (param != null) {
      payload['userIds'] = param;
    }
    if (userIds != null) {
      payload['userIds'] = userIds;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return User.fromJsonList(dest as List);
  }

  /// POST /api/app/logout
  /// 
  static Future<SimpleResponse> logout() async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/app/logout';
    requestInit.mediaType = MediaType.FORM;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return SimpleResponse.fromJson(dest);
  }

}