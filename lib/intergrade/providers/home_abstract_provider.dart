///  Do not remove this unless you get business authorization.
///  Home
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../beans/goods.dart';
import '../beans/homewrap.dart';
import '../beans/pagelist.dart';
import '../../stgutil/stg_util.dart';
import '../../stgutil/collection_util.dart';
import '../../stgutil/init_state.dart';
import '../../stgutil/base_provider.dart';
import '../apis/home_apis.dart';

class HomeBaseState {
  AreaState<Goods> goodsArea = AreaState<Goods>.init();
  AreaState<HomeWrap> homeWrapArea = AreaState<HomeWrap>.init();

  void merge(HomeBaseState source) {
    goodsArea != null ? goodsArea.merge(source.goodsArea) : goodsArea = source.goodsArea;
    homeWrapArea != null ? homeWrapArea.merge(source.homeWrapArea) : homeWrapArea = source.homeWrapArea;
  }

}

class _HomeState with HomeBaseState {
  _HomeState({
    AreaState<Goods> goodsArea,
    AreaState<HomeWrap> homeWrapArea,
  }) {
    this.goodsArea = goodsArea;
    this.homeWrapArea = homeWrapArea;
  }

}


abstract class HomeAbstractProvider with ChangeNotifier, BaseProvider, HomeBaseState {


  /// 
  Future<void> homePageBelowConten(BuildContext context, {Map<String, dynamic> payload, int pageSize, int pageNum }) async {
    var newState = await HomeCommand.homePageBelowConten(this, payload: payload, pageSize: pageSize, pageNum: pageNum);
    mergeState(context, newState);
  }

  Future<void> homePageBelowContenNext(BuildContext context) async {
    var newState = await HomeCommand.homePageBelowContenNext(this);
    mergeState(context, newState);
  }

  void mergeState(BuildContext context, HomeBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class HomeCommand {

  /// 
  static Future<HomeBaseState> homePageBelowConten(HomeAbstractProvider homeState, {Map<String, dynamic> payload, int pageSize, int pageNum }) async {
    var oldGoodsArea = homeState.goodsArea;
    payload ??= {};
    payload = {'pageNum': 1, 'pageSize': 10,  ...payload};
    PageList<Goods> goodsPageList = await HomeApis.homePageBelowConten(payload: payload, pageSize: pageSize, pageNum: pageNum);
    var pagination = goodsPageList?.pagination;
    var goodsMap = CollectionUtil.appendOrUpdateMap(oldGoodsArea?.clone()?.valueMap,  Goods.toIdMap(goodsPageList.items));

    var newState = _HomeState(
      goodsArea: AreaState(
        fetched: true,
        valueMap: goodsMap,
        pagination: pagination,
        queryRule: payload,
      ),
    );
    return newState;
  }


  static Future<HomeBaseState> homePageBelowContenNext(HomeAbstractProvider homeState) async {
    var oldGoodsArea = homeState.goodsArea;
    var pagination = oldGoodsArea?.pagination;
    var pageNum = pagination?.current;
    pageNum = (pageNum != null ? pageNum : 0) + 1;
    var totalPages = (pagination.total / (pagination?.pageSize ?? 10)).ceil();
    pageNum = min(pageNum, totalPages);
    var payload = {...oldGoodsArea.queryRule, 'pageNum': pageNum};
    var newAreaState = await HomeCommand.homePageBelowConten(homeState,payload: payload);
    return newAreaState;
  }

}