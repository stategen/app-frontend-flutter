///  Do not remove this unless you get business authorization.
///  User_detail_$username
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baixingshenghuo_shop/intergrade/intergrades.dart';

class User_detail_$usernameStateEx {

}

class User_detail_$usernameModel extends User_detail_$usernameAbstractModel with User_detail_$usernameStateEx {
  static ChangeNotifierProvider<User_detail_$usernameModel> createProvider() {
    return ChangeNotifierProvider<User_detail_$usernameModel>(
      builder: (_) => User_detail_$usernameModel(),
    );
  }

  static User_detail_$usernameModel getModel(BuildContext context) {
     return Provider.of<User_detail_$usernameModel>(context);
  }
}