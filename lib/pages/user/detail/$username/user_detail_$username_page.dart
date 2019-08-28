///  Do not remove this unless you get business authorization.
///  User_detail_$username
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'user_detail_\$username_model.dart';


class User_detail_$usernamePage extends StatelessWidget {
  static final String path = '/user/detail/\$username';
  static final Handler handler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return User_detail_$usernamePage(params: params);
    }
  );

  Map<String, List<String>> params;

  User_detail_$usernamePage({this.params});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        User_detail_$usernameModel.createProvider(),
      ],
      child: User_detail_$usernameScene(),
    );
  }
}

class User_detail_$usernameScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter user_detail_\$username Page"),
      ),
    );
  }
}