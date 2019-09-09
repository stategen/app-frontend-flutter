///  Do not remove this unless you get business authorization.
///  Goods
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import '../beans/goods.dart';
import '../beans/pagelist.dart';
import "../configs/tradeApp_config.dart";
import '../../stgutil/net_util.dart';
import 'package:flutter/material.dart';

class GoodsApis {
  /// POST /api/goods/getMallGoods
  /// 
  static Future<PageList<Goods>> getMallGoods({Map<String, dynamic> payload, String categoryId, String categorySubId, int pageSize, int pageNum }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/goods/getMallGoods';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (categoryId != null) {
      payload['categoryId'] = categoryId;
    }
    if (categorySubId != null) {
      payload['categorySubId'] = categorySubId;
    }
    if (pageSize != null) {
      payload['pageSize'] = pageSize;
    }
    if (pageNum != null) {
      payload['pageNum'] = pageNum;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return PageList.fromJson(dest, Goods.fromJsonList);
  }

}