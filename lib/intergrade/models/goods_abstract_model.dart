///  Do not remove this unless you get business authorization.
///  Goods
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../beans/goods.dart';
import '../../stgutil/stg_util.dart';
import '../../stgutil/collection_util.dart';
import '../../stgutil/init_state.dart';
import '../apis/goods_apis.dart';

class GoodsBaseState {
  AreaState<Goods> goodsArea;

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


abstract class GoodsAbstractModel with ChangeNotifier, GoodsBaseState {


  void mergeState(BuildContext context, GoodsBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class GoodsCommand {

}