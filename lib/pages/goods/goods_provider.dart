import 'package:app_frontend_flutter/intergrade/pages.dart';

///  Do not remove this unless you get business authorization.
///  Goods
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_frontend_flutter/intergrade/intergrades.dart';

class GoodsStateEx {
}

class GoodsProvider extends GoodsAbstractProvider with GoodsStateEx {
  static ChangeNotifierProvider<GoodsProvider> create({Widget child}) {
    return ChangeNotifierProvider<GoodsProvider>(
      builder: (BuildContext context) => GoodsProvider(context: context),
      child: child,
    );
  }

  static GoodsProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<GoodsProvider>(context, listen: listen);
  }

  GoodsProvider({BuildContext context});

  fetchFirst(BuildContext context) {
    var categoryProvider = CategoryProvider.of(context, listen: false);
    this.goodsArea.initState();
    var current = categoryProvider.categoryArea.current;
    if (current != null) {
      var categoryId = current.categoryId;
      var categorySubId;
      var categorySubs = current.categorySubs;
      if (categorySubs != null && categorySubs.isNotEmpty) {
        var iterator = categorySubs.iterator;
        while (iterator.moveNext()) {
          if (iterator.current.frontSelected ?? false ) {
            categorySubId = iterator.current.categorySubId;
            break;
          }
        }
      }
      this.getMallGoods(context, categoryId: categoryId, categorySubId: categorySubId);
    }
  }
}