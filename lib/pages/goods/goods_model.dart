///  Do not remove this unless you get business authorization.
///  Goods
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baixingshenghuo_shop/intergrade/intergrades.dart';

class GoodsStateEx {

}

class GoodsModel extends GoodsAbstractModel with GoodsStateEx {
  static ChangeNotifierProvider<GoodsModel> createProvider() {
    return ChangeNotifierProvider<GoodsModel>(
      builder: (_) => GoodsModel(),
    );
  }

  static GoodsModel getModel(BuildContext context) {
     return Provider.of<GoodsModel>(context);
  }
}