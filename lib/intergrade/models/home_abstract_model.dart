///  Do not remove this unless you get business authorization.
///  Home
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../stgutil/stg_util.dart';
import '../../stgutil/collection_util.dart';
import '../../stgutil/init_state.dart';
import '../apis/home_apis.dart';

class HomeBaseState {

  void merge(HomeBaseState source) {
  }

}

class _HomeState with HomeBaseState {

}


abstract class HomeAbstractModel with ChangeNotifier, HomeBaseState {


  void mergeState(BuildContext context, HomeBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class HomeCommand {

}