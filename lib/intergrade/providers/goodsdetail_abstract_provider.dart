///  Do not remove this unless you get business authorization.
///  GoodsDetail
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../beans/goods.dart';
import '../../stgutil/stg_util.dart';
import '../../stgutil/collection_util.dart';
import '../../stgutil/init_state.dart';
import '../../stgutil/base_provider.dart';
import '../apis/goodsdetail_apis.dart';

class GoodsDetailBaseState {
  AreaState<Goods> goodsArea = AreaState<Goods>.init();

  void merge(GoodsDetailBaseState source) {
    goodsArea != null ? goodsArea.merge(source.goodsArea) : goodsArea = source.goodsArea;
  }

}

class _GoodsDetailState with GoodsDetailBaseState {
  _GoodsDetailState({
    AreaState<Goods> goodsArea,
  }) {
    this.goodsArea = goodsArea;
  }

}


abstract class GoodsDetailAbstractProvider with ChangeNotifier, BaseProvider, GoodsDetailBaseState {


  /// 
  Future<void> getGoodDetailById(BuildContext context, {Map<String, dynamic> payload, String goodsId }) async {
    var newState = await GoodsDetailCommand.getGoodDetailById(this, payload: payload, goodsId: goodsId);
    mergeState(context, newState);
  }

  void mergeState(BuildContext context, GoodsDetailBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class GoodsDetailCommand {

  /// 
  static Future<GoodsDetailBaseState> getGoodDetailById(GoodsDetailAbstractProvider goodsDetailState, {Map<String, dynamic> payload, String goodsId }) async {
    Goods goods = await GoodsDetailApis.getGoodDetailById(null, payload: payload, goodsId: goodsId);

    var newState = _GoodsDetailState(
      goodsArea: AreaState(
        fetched: true,
        valueMap: Goods.toIdMap([goods]),
      ),
    );
    return newState;
  }


}