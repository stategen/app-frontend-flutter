///  Do not remove this unless you get business authorization.
///  User_me
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baixingshenghuo_shop/intergrade/intergrades.dart';

class User_meStateEx {

}

class User_meProvider extends User_meAbstractProvider with User_meStateEx {
  static ChangeNotifierProvider<User_meProvider> create({Widget child}) {
    return ChangeNotifierProvider<User_meProvider>(
      builder: (BuildContext context) => User_meProvider(context: context),
      child: child,
    );
  }

  static User_meProvider of(BuildContext context, {bool listen = true}) {
     return Provider.of<User_meProvider>(context, listen: listen);
  }

  User_meProvider({BuildContext context});
}