///  Do not remove this unless you get business authorization.
///  Login
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baixingshenghuo_shop/intergrade/intergrades.dart';

class LoginStateEx {

}

class LoginModel extends LoginAbstractModel with LoginStateEx {
  static ChangeNotifierProvider<LoginModel> createProvider() {
    return ChangeNotifierProvider<LoginModel>(
      builder: (_) => LoginModel(),
    );
  }

  static LoginModel getModel(BuildContext context) {
     return Provider.of<LoginModel>(context);
  }
}