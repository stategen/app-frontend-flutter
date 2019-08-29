///  Do not remove this unless you get business authorization.
///  Home
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import '../beans/goods.dart';
import '../beans/homewrap.dart';
import "../configs/tradeApp_config.dart";
import '../../stgutil/net_util.dart';
import 'package:flutter/material.dart';

class HomeApis {
  /// POST /api/home/homePageBelowConten
  /// 
  static Future<List<Goods>> homePageBelowConten(int param, {Map<String, dynamic> payload, int page }) async {
    var requestInit = RequestInit();
    requestInit.baseUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/home/homePageBelowConten';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (param != null) {
      payload['page'] = param;
    }
    if (page != null) {
      payload['page'] = page;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return Goods.fromJsonList(dest as List);
  }

  /// POST /api/home/homePageContent
  /// 
  static Future<HomeWrap> homePageContent({Map<String, dynamic> payload, double lon, double lat }) async {
    var requestInit = RequestInit();
    requestInit.baseUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/home/homePageContent';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (lon != null) {
      payload['lon'] = lon;
    }
    if (lat != null) {
      payload['lat'] = lat;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return HomeWrap.fromJson(dest);
  }

}