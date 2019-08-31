///  Do not remove this unless you get business authorization.
///  App
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../beans/city.dart';
import '../beans/hoppy.dart';
import '../beans/menu.dart';
import '../beans/province.dart';
import '../beans/region.dart';
import '../beans/simpleresponse.dart';
import '../beans/user.dart';
import '../../stgutil/stg_util.dart';
import '../../stgutil/collection_util.dart';
import '../../stgutil/init_state.dart';
import '../../stgutil/base_provider.dart';
import '../apis/app_apis.dart';

class AppBaseState {
  AreaState<City> cityArea = AreaState<City>.init();
  AreaState<Hoppy> hoppyArea = AreaState<Hoppy>.init();
  AreaState<Menu> menuArea = AreaState<Menu>.init();
  AreaState<Province> provinceArea = AreaState<Province>.init();
  AreaState<Region> regionArea = AreaState<Region>.init();
  AreaState<User> userArea = AreaState<User>.init();

  void merge(AppBaseState source) {
    cityArea != null ? cityArea.merge(source.cityArea) : cityArea = source.cityArea;
    hoppyArea != null ? hoppyArea.merge(source.hoppyArea) : hoppyArea = source.hoppyArea;
    menuArea != null ? menuArea.merge(source.menuArea) : menuArea = source.menuArea;
    provinceArea != null ? provinceArea.merge(source.provinceArea) : provinceArea = source.provinceArea;
    regionArea != null ? regionArea.merge(source.regionArea) : regionArea = source.regionArea;
    userArea != null ? userArea.merge(source.userArea) : userArea = source.userArea;
  }

}

class _AppState with AppBaseState {
  _AppState({
    AreaState<City> cityArea,
    AreaState<Hoppy> hoppyArea,
    AreaState<Menu> menuArea,
    AreaState<Province> provinceArea,
    AreaState<Region> regionArea,
    AreaState<User> userArea,
  }) {
    this.cityArea = cityArea;
    this.hoppyArea = hoppyArea;
    this.menuArea = menuArea;
    this.provinceArea = provinceArea;
    this.regionArea = regionArea;
    this.userArea = userArea;
  }

}


abstract class AppAbstractProvider with ChangeNotifier, BaseProvider, AppBaseState {

  Future<void> init(BuildContext context) async {
    var newState = await AppCommand.init(this,
        getAllMenusSetupParams : getAllMenusSetupParams(context), 
        getCookieUserSetupParams : getCookieUserSetupParams(context)
    );
    mergeState(context, newState);
  }


  /// 获所所有菜单
  Future<void> getAllMenus(BuildContext context) async {
    var newState = await AppCommand.getAllMenus(this);
    mergeState(context, newState);
  }

  /// 
  Future<void> getCookieUser(BuildContext context) async {
    var newState = await AppCommand.getCookieUser(this);
    mergeState(context, newState);
  }

  /// 
  Future<void> logout(BuildContext context) async {
    var newState = await AppCommand.logout(this);
    mergeState(context, newState);
  }

  getAllMenusSetupParams(BuildContext context) {
    return null;
  }

  getCookieUserSetupParams(BuildContext context) {
    return null;
  }

  void mergeState(BuildContext context, AppBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class AppCommand {
  static Future<AppBaseState> init (AppAbstractProvider appState, {Map<String, dynamic> getAllMenusSetupParams, Map<String, dynamic> getCookieUserSetupParams}) async {
    var newState = AppBaseState();
    // 获所所有菜单
    var getAllMenusState = await AppCommand.getAllMenus(appState);
    newState.merge(getAllMenusState);
    // 
    var getCookieUserState = await AppCommand.getCookieUser(appState);
    newState.merge(getCookieUserState);
    return newState;
  }


  /// 获所所有菜单
  static Future<AppBaseState> getAllMenus(AppAbstractProvider appState) async {
    List<Menu> menus = await AppApis.getAllMenus();

    var newState = _AppState(
      menuArea: AreaState(
        fetched: true,
        valueMap: Menu.toIdMap(menus),
      ),
    );
    return newState;
  }


  /// 
  static Future<AppBaseState> getCookieUser(AppAbstractProvider appState) async {
    User user = await AppApis.getCookieUser();

    var newState = _AppState(
      userArea: AreaState(
        fetched: true,
        valueMap: User.toIdMap([user]),
      ),
    );
    return newState;
  }


  /// 
  static Future<AppBaseState> logout(AppAbstractProvider appState) async {
    SimpleResponse simpleResponse = await AppApis.logout();
    if (simpleResponse != null && !simpleResponse.success) {
      throw simpleResponse.message;
    }

    var newState = _AppState(
      userArea: AreaState(
        fetched: true,
      ),
    );
    return newState;
  }


}