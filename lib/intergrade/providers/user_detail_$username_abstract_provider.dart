///  Do not remove this unless you get business authorization.
///  User_detail_$username
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../enums/roletype.dart';
import '../enums/statusenum.dart';
import '../beans/user.dart';
import '../../stgutil/stg_util.dart';
import '../../stgutil/collection_util.dart';
import '../../stgutil/init_state.dart';
import '../../stgutil/base_provider.dart';
import '../apis/user_detail_\$username_apis.dart';

class User_detail_$usernameBaseState {
  AreaState<User> userArea = AreaState<User>.init();

  void merge(User_detail_$usernameBaseState source) {
    userArea != null ? userArea.merge(source.userArea) : userArea = source.userArea;
  }

}

class _User_detail_$usernameState with User_detail_$usernameBaseState {
  _User_detail_$usernameState({
    AreaState<User> userArea,
  }) {
    this.userArea = userArea;
  }

}


abstract class User_detail_$usernameAbstractProvider with ChangeNotifier, BaseProvider, User_detail_$usernameBaseState {

  Future<void> init(BuildContext context) async {
    var newState = await User_detail_$usernameCommand.init(this,
        getCurrentUserSetupParams : getCurrentUserSetupParams(context), 
        getTheUserSetupParams : getTheUserSetupParams(context), 
        getUserDataSetupParams : getUserDataSetupParams(context)
    );
    mergeState(context, newState);
  }


  /// 
  Future<void> getCurrentUser(BuildContext context) async {
    var newState = await User_detail_$usernameCommand.getCurrentUser(this);
    mergeState(context, newState);
  }

  /// 
  Future<void> getTheUser(BuildContext context) async {
    var newState = await User_detail_$usernameCommand.getTheUser(this);
    mergeState(context, newState);
  }

  /// 
  Future<void> getUserData(BuildContext context, {Map<String, dynamic> payload, @required String username }) async {
    var newState = await User_detail_$usernameCommand.getUserData(this, payload: payload, username: username);
    mergeState(context, newState);
  }

  /// 修改用户
  Future<void> update(BuildContext context, {Map<String, dynamic> payload, List<int> hoppyIds, List<int> cascaderPostAddressIds, String username, String password, RoleType roleType, String name, String nickName, int age, String address, String avatarImgId, String email, DateTime valiDatetime, DateTime birthdayDate, DateTime workTime, String provinceId, String cityId, StatusEnum status, int grade, bool sex, String postAddressId, String userId }) async {
    var newState = await User_detail_$usernameCommand.update(this, payload: payload, hoppyIds: hoppyIds, cascaderPostAddressIds: cascaderPostAddressIds, username: username, password: password, roleType: roleType, name: name, nickName: nickName, age: age, address: address, avatarImgId: avatarImgId, email: email, valiDatetime: valiDatetime, birthdayDate: birthdayDate, workTime: workTime, provinceId: provinceId, cityId: cityId, status: status, grade: grade, sex: sex, postAddressId: postAddressId, userId: userId);
    mergeState(context, newState);
  }

  getCurrentUserSetupParams(BuildContext context) {
    return RouteUtil.getParams(context);
  }

  getTheUserSetupParams(BuildContext context) {
    return RouteUtil.getParams(context);
  }

  getUserDataSetupParams(BuildContext context) {
    return RouteUtil.getParams(context);
  }

  void mergeState(BuildContext context, User_detail_$usernameBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class User_detail_$usernameCommand {
  static Future<User_detail_$usernameBaseState> init (User_detail_$usernameAbstractProvider user_detail_$usernameState, {Map<String, dynamic> getCurrentUserSetupParams, Map<String, dynamic> getTheUserSetupParams, Map<String, dynamic> getUserDataSetupParams}) async {
    var newState = User_detail_$usernameBaseState();
    // 
    var getCurrentUserState = await User_detail_$usernameCommand.getCurrentUser(user_detail_$usernameState);
    newState.merge(getCurrentUserState);
    // 
    var getTheUserState = await User_detail_$usernameCommand.getTheUser(user_detail_$usernameState);
    newState.merge(getTheUserState);
    // 
    var getUserDataState = await User_detail_$usernameCommand.getUserData(user_detail_$usernameState, payload: getUserDataSetupParams);
    newState.merge(getUserDataState);
    return newState;
  }


  /// 
  static Future<User_detail_$usernameBaseState> getCurrentUser(User_detail_$usernameAbstractProvider user_detail_$usernameState) async {
    User user = await User_detail_$usernameApis.getCurrentUser();

    var newState = _User_detail_$usernameState(
      userArea: AreaState(
        fetched: true,
        valueMap: User.toIdMap([user]),
      ),
    );
    return newState;
  }


  /// 
  static Future<User_detail_$usernameBaseState> getTheUser(User_detail_$usernameAbstractProvider user_detail_$usernameState) async {
    User user = await User_detail_$usernameApis.getTheUser();

    var newState = _User_detail_$usernameState(
      userArea: AreaState(
        fetched: true,
        valueMap: User.toIdMap([user]),
      ),
    );
    return newState;
  }


  /// 
  static Future<User_detail_$usernameBaseState> getUserData(User_detail_$usernameAbstractProvider user_detail_$usernameState, {Map<String, dynamic> payload, @required String username }) async {
    User user = await User_detail_$usernameApis.getUserData(null, payload: payload, username: username);

    var newState = _User_detail_$usernameState(
      userArea: AreaState(
        fetched: true,
        valueMap: User.toIdMap([user]),
      ),
    );
    return newState;
  }


  /// 修改用户
  static Future<User_detail_$usernameBaseState> update(User_detail_$usernameAbstractProvider user_detail_$usernameState, {Map<String, dynamic> payload, List<int> hoppyIds, List<int> cascaderPostAddressIds, String username, String password, RoleType roleType, String name, String nickName, int age, String address, String avatarImgId, String email, DateTime valiDatetime, DateTime birthdayDate, DateTime workTime, String provinceId, String cityId, StatusEnum status, int grade, bool sex, String postAddressId, String userId }) async {
    User user = await User_detail_$usernameApis.update(payload: payload, hoppyIds: hoppyIds, cascaderPostAddressIds: cascaderPostAddressIds, username: username, password: password, roleType: roleType, name: name, nickName: nickName, age: age, address: address, avatarImgId: avatarImgId, email: email, valiDatetime: valiDatetime, birthdayDate: birthdayDate, workTime: workTime, provinceId: provinceId, cityId: cityId, status: status, grade: grade, sex: sex, postAddressId: postAddressId, userId: userId);
    var oldUserArea = user_detail_$usernameState.userArea;
    var userMap = CollectionUtil.appendOrUpdateMap(oldUserArea?.clone()?.valueMap,  User.toIdMap([user]));

    var newState = _User_detail_$usernameState(
      userArea: AreaState(
        fetched: true,
        valueMap: userMap,
      ),
    );
    return newState;
  }


}