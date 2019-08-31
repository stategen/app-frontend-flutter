///  Do not remove this unless you get business authorization.
///  User_me
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
import '../apis/user_me_apis.dart';

class User_meBaseState {
  AreaState<User> userArea = AreaState<User>.init();

  void merge(User_meBaseState source) {
    userArea != null ? userArea.merge(source.userArea) : userArea = source.userArea;
  }

}

class _User_meState with User_meBaseState {
  _User_meState({
    AreaState<User> userArea,
  }) {
    this.userArea = userArea;
  }

}


abstract class User_meAbstractProvider with ChangeNotifier, BaseProvider, User_meBaseState {

  Future<void> init(BuildContext context) async {
    var newState = await User_meCommand.init(this,
        getCurrentUserSetupParams : getCurrentUserSetupParams(context), 
        getTheUserSetupParams : getTheUserSetupParams(context)
    );
    mergeState(context, newState);
  }


  /// 
  Future<void> getCurrentUser(BuildContext context) async {
    var newState = await User_meCommand.getCurrentUser(this);
    mergeState(context, newState);
  }

  /// 
  Future<void> getTheUser(BuildContext context) async {
    var newState = await User_meCommand.getTheUser(this);
    mergeState(context, newState);
  }

  /// 修改用户
  Future<void> update(BuildContext context, {Map<String, dynamic> payload, List<int> hoppyIds, List<int> cascaderPostAddressIds, String username, String password, RoleType roleType, String name, String nickName, int age, String address, String avatarImgId, String email, DateTime valiDatetime, DateTime birthdayDate, DateTime workTime, String provinceId, String cityId, StatusEnum status, int grade, bool sex, String postAddressId, String userId }) async {
    var newState = await User_meCommand.update(this, payload: payload, hoppyIds: hoppyIds, cascaderPostAddressIds: cascaderPostAddressIds, username: username, password: password, roleType: roleType, name: name, nickName: nickName, age: age, address: address, avatarImgId: avatarImgId, email: email, valiDatetime: valiDatetime, birthdayDate: birthdayDate, workTime: workTime, provinceId: provinceId, cityId: cityId, status: status, grade: grade, sex: sex, postAddressId: postAddressId, userId: userId);
    mergeState(context, newState);
  }

  getCurrentUserSetupParams(BuildContext context) {
    return null;
  }

  getTheUserSetupParams(BuildContext context) {
    return null;
  }

  void mergeState(BuildContext context, User_meBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class User_meCommand {
  static Future<User_meBaseState> init (User_meAbstractProvider user_meState, {Map<String, dynamic> getCurrentUserSetupParams, Map<String, dynamic> getTheUserSetupParams}) async {
    var newState = User_meBaseState();
    // 
    var getCurrentUserState = await User_meCommand.getCurrentUser(user_meState);
    newState.merge(getCurrentUserState);
    // 
    var getTheUserState = await User_meCommand.getTheUser(user_meState);
    newState.merge(getTheUserState);
    return newState;
  }


  /// 
  static Future<User_meBaseState> getCurrentUser(User_meAbstractProvider user_meState) async {
    User user = await User_meApis.getCurrentUser();

    var newState = _User_meState(
      userArea: AreaState(
        fetched: true,
        valueMap: User.toIdMap([user]),
      ),
    );
    return newState;
  }


  /// 
  static Future<User_meBaseState> getTheUser(User_meAbstractProvider user_meState) async {
    User user = await User_meApis.getTheUser();

    var newState = _User_meState(
      userArea: AreaState(
        fetched: true,
        valueMap: User.toIdMap([user]),
      ),
    );
    return newState;
  }


  /// 修改用户
  static Future<User_meBaseState> update(User_meAbstractProvider user_meState, {Map<String, dynamic> payload, List<int> hoppyIds, List<int> cascaderPostAddressIds, String username, String password, RoleType roleType, String name, String nickName, int age, String address, String avatarImgId, String email, DateTime valiDatetime, DateTime birthdayDate, DateTime workTime, String provinceId, String cityId, StatusEnum status, int grade, bool sex, String postAddressId, String userId }) async {
    User user = await User_meApis.update(payload: payload, hoppyIds: hoppyIds, cascaderPostAddressIds: cascaderPostAddressIds, username: username, password: password, roleType: roleType, name: name, nickName: nickName, age: age, address: address, avatarImgId: avatarImgId, email: email, valiDatetime: valiDatetime, birthdayDate: birthdayDate, workTime: workTime, provinceId: provinceId, cityId: cityId, status: status, grade: grade, sex: sex, postAddressId: postAddressId, userId: userId);
    var oldUserArea = user_meState.userArea;
    var userMap = CollectionUtil.appendOrUpdateMap(oldUserArea?.clone()?.valueMap,  User.toIdMap([user]));

    var newState = _User_meState(
      userArea: AreaState(
        fetched: true,
        valueMap: userMap,
      ),
    );
    return newState;
  }


}