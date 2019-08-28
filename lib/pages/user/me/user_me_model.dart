///  Do not remove this unless you get business authorization.
///  User_me
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baixingshenghuo_shop/intergrade/intergrades.dart';

class User_meStateEx {

}

class User_meModel extends User_meAbstractModel with User_meStateEx {
  static ChangeNotifierProvider<User_meModel> createProvider() {
    return ChangeNotifierProvider<User_meModel>(
      builder: (_) => User_meModel(),
    );
  }

  static User_meModel getModel(BuildContext context) {
     return Provider.of<User_meModel>(context);
  }
}