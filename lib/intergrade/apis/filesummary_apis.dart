///  Do not remove this unless you get business authorization.
///  FileSummary
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import '../beans/filesummary.dart';
import '../beans/multipartfile.dart';
import "../configs/tradeApp_config.dart";
import '../../stgutil/net_util.dart';
import 'package:flutter/material.dart';

class FileSummaryApis {
  /// POST /api/fileSummary/upload
  /// 
  static Future<FileSummary> upload(MultipartFile param, {Map<String, dynamic> payload, @required MultipartFile file }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/fileSummary/upload';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (param != null) {
      payload['file'] = param;
    }
    if (file != null) {
      payload['file'] = file;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return FileSummary.fromJson(dest);
  }

}