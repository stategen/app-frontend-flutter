///  Do not remove this unless you get business authorization.
///  Category
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../beans/category.dart';
import '../../stgutil/stg_util.dart';
import '../../stgutil/collection_util.dart';
import '../../stgutil/init_state.dart';
import '../apis/category_apis.dart';

class CategoryBaseState {
  AreaState<Category> categoryArea;

  void merge(CategoryBaseState source) {
    categoryArea != null ? categoryArea.merge(source.categoryArea) : categoryArea = source.categoryArea;
  }

}

class _CategoryState with CategoryBaseState {
  _CategoryState({
    AreaState<Category> categoryArea,
  }) {
    this.categoryArea = categoryArea;
  }

}


abstract class CategoryAbstractProvider with ChangeNotifier, CategoryBaseState {


  void mergeState(BuildContext context, CategoryBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class CategoryCommand {

}