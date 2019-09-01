import 'package:baixingshenghuo_shop/intergrade/pages.dart';
///  Do not remove this unless you get business authorization.
///  Category
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baixingshenghuo_shop/intergrade/intergrades.dart';

class CategoryStateEx {

}

class CategoryProvider extends CategoryAbstractProvider with CategoryStateEx {
  static ChangeNotifierProvider<CategoryProvider> create({Widget child}) {
    return ChangeNotifierProvider<CategoryProvider>(
      builder: (BuildContext context) => CategoryProvider(context: context),
      child: child,
    );
  }

  static CategoryProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<CategoryProvider>(context, listen: listen);
  }

  CategoryProvider({BuildContext context}) {
    //this.init(context);
  }

}