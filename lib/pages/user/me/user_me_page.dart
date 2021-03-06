///  Do not remove this unless you get business authorization.
///  User_me
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'user_me_provider.dart';


class User_mePage extends StatelessWidget {
  static final String path = '/user/me';
  static final Handler handler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return User_meProvider.create(
        child: User_mePage(params: params)
      );
    }
  );

  Map<String, List<String>> params;

  User_mePage({this.params});

  @override
  Widget build(BuildContext context) {
    return User_meScene();
  }
}

class User_meScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter user_me Page"),
      ),
    );
  }
}