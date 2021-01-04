///  Do not remove this unless you get business authorization.
///  Category
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import '../beans/category.dart';
import "../configs/tradeApp_config.dart";
import '../../stgutil/net_util.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

class CategoryApis {
  /// POST /api/category/getCategory
  /// 
  static Future<List<Category>> getCategory() async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/category/getCategory';
    requestInit.mediaType = MediaType.FORM;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return Category.fromJsonList(dest as List);
  }

}