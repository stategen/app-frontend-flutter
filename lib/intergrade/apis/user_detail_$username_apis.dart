///  Do not remove this unless you get business authorization.
///  User_detail_$username
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import '../enums/roletype.dart';
import '../enums/statusenum.dart';
import '../beans/user.dart';
import "../configs/tradeApp_config.dart";
import '../../stgutil/net_util.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

class User_detail_$usernameApis {
  /// POST /api/userDetail/getCurrentUser
  /// 
  static Future<User> getCurrentUser() async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/userDetail/getCurrentUser';
    requestInit.mediaType = MediaType.FORM;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return User.fromJson(dest);
  }

  /// POST /api/userDetail/getTheUser
  /// 
  static Future<User> getTheUser() async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/userDetail/getTheUser';
    requestInit.mediaType = MediaType.FORM;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return User.fromJson(dest);
  }

  /// POST /api/userDetail/:username
  /// 
  static Future<User> getUserData(String param, {Map<String, dynamic> payload, @required String username }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/userDetail/:username';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (param != null) {
      payload['username'] = param;
    }
    if (username != null) {
      payload['username'] = username;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return User.fromJson(dest);
  }

  /// POST /api/userDetail/update
  /// 修改用户
  static Future<User> update({Map<String, dynamic> payload, List<int> hoppyIds, List<int> cascaderPostAddressIds, String username, String password, RoleType roleType, String name, String nickName, int age, String address, String avatarImgId, String email, DateTime valiDatetime, DateTime birthdayDate, DateTime workTime, String provinceId, String cityId, StatusEnum status, int grade, bool sex, String postAddressId, String userId }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/userDetail/update';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (hoppyIds != null) {
      payload['hoppyIds'] = hoppyIds;
    }
    if (cascaderPostAddressIds != null) {
      payload['cascaderPostAddressIds'] = cascaderPostAddressIds;
    }
    if (username != null) {
      payload['username'] = username;
    }
    if (password != null) {
      payload['password'] = password;
    }
    if (roleType != null) {
      payload['roleType'] = roleType;
    }
    if (name != null) {
      payload['name'] = name;
    }
    if (nickName != null) {
      payload['nickName'] = nickName;
    }
    if (age != null) {
      payload['age'] = age;
    }
    if (address != null) {
      payload['address'] = address;
    }
    if (avatarImgId != null) {
      payload['avatarImgId'] = avatarImgId;
    }
    if (email != null) {
      payload['email'] = email;
    }
    if (valiDatetime != null) {
      payload['valiDatetime'] = valiDatetime;
    }
    if (birthdayDate != null) {
      payload['birthdayDate'] = birthdayDate;
    }
    if (workTime != null) {
      payload['workTime'] = workTime;
    }
    if (provinceId != null) {
      payload['provinceId'] = provinceId;
    }
    if (cityId != null) {
      payload['cityId'] = cityId;
    }
    if (status != null) {
      payload['status'] = status;
    }
    if (grade != null) {
      payload['grade'] = grade;
    }
    if (sex != null) {
      payload['sex'] = sex;
    }
    if (postAddressId != null) {
      payload['postAddressId'] = postAddressId;
    }
    if (userId != null) {
      payload['userId'] = userId;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return User.fromJson(dest);
  }

}