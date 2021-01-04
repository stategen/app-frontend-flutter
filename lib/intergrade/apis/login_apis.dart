///  Do not remove this unless you get business authorization.
///  Login
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import '../beans/simpleresponse.dart';
import '../beans/user.dart';
import "../configs/tradeApp_config.dart";
import '../../stgutil/net_util.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

class LoginApis {
  /// POST /api/login/login
  /// 
  static Future<SimpleResponse> login({Map<String, dynamic> payload, @required String username, @required String password }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/login/login';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (username != null) {
      payload['username'] = username;
    }
    if (password != null) {
      payload['password'] = password;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return SimpleResponse.fromJson(dest);
  }

  /// POST /api/login/loginByMobile
  /// 
  static Future<User> loginByMobile({Map<String, dynamic> payload, @required String interCode, @required String mobile, @required String password }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/login/loginByMobile';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (interCode != null) {
      payload['interCode'] = interCode;
    }
    if (mobile != null) {
      payload['mobile'] = mobile;
    }
    if (password != null) {
      payload['password'] = password;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return User.fromJson(dest);
  }

}