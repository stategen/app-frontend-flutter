///  Do not remove this unless you get business authorization.
///  GoodsDetail
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import '../beans/goods.dart';
import "../configs/tradeApp_config.dart";
import '../../stgutil/net_util.dart';
import 'package:flutter/material.dart';

class GoodsDetailApis {
  /// POST /api/goodsDetail/getGoodDetailById
  /// 
  static Future<Goods> getGoodDetailById(String param, {Map<String, dynamic> payload, String goodId }) async {
    var requestInit = RequestInit();
    requestInit.baseUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/goodsDetail/getGoodDetailById';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (param != null) {
      payload['goodId'] = param;
    }
    if (goodId != null) {
      payload['goodId'] = goodId;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return Goods.fromJson(dest);
  }

}