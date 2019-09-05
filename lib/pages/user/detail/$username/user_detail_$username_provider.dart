///  Do not remove this unless you get business authorization.
///  User_detail_$username
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_frontend_flutter/intergrade/intergrades.dart';

class User_detail_$usernameStateEx {

}

class User_detail_$usernameProvider extends User_detail_$usernameAbstractProvider with User_detail_$usernameStateEx {
  static ChangeNotifierProvider<User_detail_$usernameProvider> create({Widget child}) {
    return ChangeNotifierProvider<User_detail_$usernameProvider>(
      builder: (BuildContext context) => User_detail_$usernameProvider(context: context),
      child: child,
    );
  }

  static User_detail_$usernameProvider of(BuildContext context, {bool listen = true}) {
     return Provider.of<User_detail_$usernameProvider>(context, listen: listen);
  }

  User_detail_$usernameProvider({BuildContext context});
}