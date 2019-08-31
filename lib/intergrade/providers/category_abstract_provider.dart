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
import '../../stgutil/base_provider.dart';
import '../apis/category_apis.dart';

class CategoryBaseState {
  AreaState<Category> categoryArea = AreaState<Category>.init();

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


abstract class CategoryAbstractProvider with ChangeNotifier, BaseProvider, CategoryBaseState {

  Future<void> init(BuildContext context) async {
    var newState = await CategoryCommand.init(this,
        getCategorySetupParams : getCategorySetupParams(context)
    );
    mergeState(context, newState);
  }


  /// 
  Future<void> getCategory(BuildContext context) async {
    var newState = await CategoryCommand.getCategory(this);
    mergeState(context, newState);
  }

  getCategorySetupParams(BuildContext context) {
    return null;
  }

  void mergeState(BuildContext context, CategoryBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class CategoryCommand {
  static Future<CategoryBaseState> init (CategoryAbstractProvider categoryState, {Map<String, dynamic> getCategorySetupParams}) async {
    var newState = CategoryBaseState();
    // 
    var getCategoryState = await CategoryCommand.getCategory(categoryState);
    newState.merge(getCategoryState);
    return newState;
  }


  /// 
  static Future<CategoryBaseState> getCategory(CategoryAbstractProvider categoryState) async {
    List<Category> categorys = await CategoryApis.getCategory();

    var newState = _CategoryState(
      categoryArea: AreaState(
        fetched: true,
        valueMap: Category.toIdMap(categorys),
      ),
    );
    return newState;
  }


}