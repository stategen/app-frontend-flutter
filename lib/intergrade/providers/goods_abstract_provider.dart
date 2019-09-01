///  Do not remove this unless you get business authorization.
///  Goods
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../beans/goods.dart';
import '../beans/pagelist.dart';
import '../../stgutil/stg_util.dart';
import '../../stgutil/collection_util.dart';
import '../../stgutil/init_state.dart';
import '../../stgutil/base_provider.dart';
import '../apis/goods_apis.dart';

class GoodsBaseState {
  AreaState<Goods> goodsArea = AreaState<Goods>.init();

  void merge(GoodsBaseState source) {
    goodsArea != null ? goodsArea.merge(source.goodsArea) : goodsArea = source.goodsArea;
  }

}

class _GoodsState with GoodsBaseState {
  _GoodsState({
    AreaState<Goods> goodsArea,
  }) {
    this.goodsArea = goodsArea;
  }

}


abstract class GoodsAbstractProvider with ChangeNotifier, BaseProvider, GoodsBaseState {


  /// 
  Future<void> getMallGoods(BuildContext context, {Map<String, dynamic> payload, String categoryId, String categorySubId, int pageSize, int pageNum }) async {
    var newState = await GoodsCommand.getMallGoods(this, payload: payload, categoryId: categoryId, categorySubId: categorySubId, pageSize: pageSize, pageNum: pageNum);
    mergeState(context, newState);
  }

  Future<void> getMallGoodsNext(BuildContext context) async {
    var newState = await GoodsCommand.getMallGoodsNext(this);
    mergeState(context, newState);
  }

  void mergeState(BuildContext context, GoodsBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class GoodsCommand {

  /// 
  static Future<GoodsBaseState> getMallGoods(GoodsAbstractProvider goodsState, {Map<String, dynamic> payload, String categoryId, String categorySubId, int pageSize, int pageNum }) async {
    var oldGoodsArea = goodsState.goodsArea;
    payload ??= {};
    payload = {'pageNum': DEFAULT_PAGE_NUM, 'pageSize': DEFAULT_PAGE_SIZE,  ...payload};
    PageList<Goods> goodsPageList = await GoodsApis.getMallGoods(payload: payload, categoryId: categoryId, categorySubId: categorySubId, pageSize: pageSize, pageNum: pageNum);
    var pagination = goodsPageList?.pagination;
    var goodsMap = CollectionUtil.appendOrUpdateMap(oldGoodsArea?.clone()?.valueMap,  Goods.toIdMap(goodsPageList.items));

    var newState = _GoodsState(
      goodsArea: AreaState(
        fetched: true,
        valueMap: goodsMap,
        pagination: pagination,
        queryRule: payload,
      ),
    );
    return newState;
  }


  static Future<GoodsBaseState> getMallGoodsNext(GoodsAbstractProvider goodsState) async {
    var oldGoodsArea = goodsState.goodsArea;
    var pagination = oldGoodsArea?.pagination;
    var pageNum = pagination?.current ?? 0;
    pageNum++;
    var pageSize = pagination?.pageSize ?? DEFAULT_PAGE_SIZE;
    var payload = {...?oldGoodsArea.queryRule, 'pageSize': pageSize, 'pageNum': pageNum};
    var newAreaState = await GoodsCommand.getMallGoods(goodsState,payload: payload);
    return newAreaState;
  }

}