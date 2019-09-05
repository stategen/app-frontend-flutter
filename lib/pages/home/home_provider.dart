///  Do not remove this unless you get business authorization.
///  Home
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_frontend_flutter/intergrade/intergrades.dart';

class HomeStateEx {

}

class HomeProvider extends HomeAbstractProvider with HomeStateEx {
  static ChangeNotifierProvider<HomeProvider> create({Widget child}) {
    return ChangeNotifierProvider<HomeProvider>(
      builder: (BuildContext context) => HomeProvider(context: context),
      child: child,
    );
  }

  static HomeProvider of(BuildContext context, {bool listen = true}) {
     return Provider.of<HomeProvider>(context, listen: listen);
  }

  HomeProvider({BuildContext context});
}