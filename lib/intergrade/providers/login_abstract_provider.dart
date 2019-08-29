///  Do not remove this unless you get business authorization.
///  Login
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../beans/simpleresponse.dart';
import '../beans/user.dart';
import '../../stgutil/stg_util.dart';
import '../../stgutil/collection_util.dart';
import '../../stgutil/init_state.dart';
import '../apis/login_apis.dart';

class LoginBaseState {
  AreaState<User> userArea;

  void merge(LoginBaseState source) {
    userArea != null ? userArea.merge(source.userArea) : userArea = source.userArea;
  }

}

class _LoginState with LoginBaseState {
  _LoginState({
    AreaState<User> userArea,
  }) {
    this.userArea = userArea;
  }

}


abstract class LoginAbstractProvider with ChangeNotifier, LoginBaseState {


  /// 
  Future<void> login(BuildContext context, {Map<String, dynamic> payload, @required String username, @required String password }) async {
    var newState = await LoginCommand.login(this, payload: payload, username: username, password: password);
    mergeState(context, newState);
  }

  /// 
  Future<void> loginByMobile(BuildContext context, {Map<String, dynamic> payload, @required String interCode, @required String mobile, @required String password }) async {
    var newState = await LoginCommand.loginByMobile(this, payload: payload, interCode: interCode, mobile: mobile, password: password);
    mergeState(context, newState);
  }

  void mergeState(BuildContext context, LoginBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class LoginCommand {

  /// 
  static Future<LoginBaseState> login(LoginAbstractProvider loginState, {Map<String, dynamic> payload, @required String username, @required String password }) async {
    SimpleResponse simpleResponse = await LoginApis.login(payload: payload, username: username, password: password);
    if (simpleResponse != null && !simpleResponse.success) {
      throw simpleResponse.message;
    }

    var newState = _LoginState(
    );
    return newState;
  }


  /// 
  static Future<LoginBaseState> loginByMobile(LoginAbstractProvider loginState, {Map<String, dynamic> payload, @required String interCode, @required String mobile, @required String password }) async {
    User user = await LoginApis.loginByMobile(payload: payload, interCode: interCode, mobile: mobile, password: password);
    var oldUserArea = loginState.userArea;
    var userMap = CollectionUtil.appendOrUpdateMap(oldUserArea?.clone()?.valueMap,  User.toIdMap([user]));

    var newState = _LoginState(
      userArea: AreaState(
        valueMap: userMap,
      ),
    );
    return newState;
  }


}