///  Do not remove this unless you get business authorization.
///  GoodsDetail
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../beans/goodswrap.dart';
import '../../stgutil/stg_util.dart';
import '../../stgutil/collection_util.dart';
import '../../stgutil/init_state.dart';
import '../apis/goodsdetail_apis.dart';

class GoodsDetailBaseState {
  AreaState<GoodsWrap> goodsWrapArea;

  void merge(GoodsDetailBaseState source) {
    goodsWrapArea != null ? goodsWrapArea.merge(source.goodsWrapArea) : goodsWrapArea = source.goodsWrapArea;
  }

}

class _GoodsDetailState with GoodsDetailBaseState {
  _GoodsDetailState({
    AreaState<GoodsWrap> goodsWrapArea,
  }) {
    this.goodsWrapArea = goodsWrapArea;
  }

}


abstract class GoodsDetailAbstractModel with ChangeNotifier, GoodsDetailBaseState {


  /// 
  Future<void> getGoodDetailById(BuildContext context, {Map<String, dynamic> payload, String goodId }) async {
    var newState = await GoodsDetailCommand.getGoodDetailById(this, payload: payload, goodId: goodId);
    mergeState(context, newState);
  }

  void mergeState(BuildContext context, GoodsDetailBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class GoodsDetailCommand {

  /// 
  static Future<GoodsDetailBaseState> getGoodDetailById(GoodsDetailAbstractModel goodsDetailState, {Map<String, dynamic> payload, String goodId }) async {
    GoodsWrap goodsWrap = await GoodsDetailApis.getGoodDetailById(null, payload: payload, goodId: goodId);

    var newState = _GoodsDetailState(
      goodsWrapArea: AreaState(
        valueMap: GoodsWrap.toIdMap([goodsWrap]),
      ),
    );
    return newState;
  }


}