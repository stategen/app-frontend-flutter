///  Do not remove this unless you get business authorization.
///  GoodsDetail
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baixingshenghuo_shop/intergrade/intergrades.dart';

class GoodsDetailStateEx {
  bool isLeft = true;
  bool isRight = false;


}

class GoodsDetailProvider extends GoodsDetailAbstractProvider with GoodsDetailStateEx {
  static ChangeNotifierProvider<GoodsDetailProvider> create({Widget child}) {
    return ChangeNotifierProvider<GoodsDetailProvider>(
      builder: (_) => GoodsDetailProvider(),
      child: child,
    );
  }

  static GoodsDetailProvider of(BuildContext context, {bool listen = true }) {
    return Provider.of<GoodsDetailProvider>(context, listen: listen);
  }

  //TabBar切换方法
  changeLeftAndRight(String changeState) {
    if (changeState == 'left') {
      isLeft = true;
      isRight = false;
    } else {
      isLeft = false;
      isRight = true;
    }


    notifyListeners();
  }
}