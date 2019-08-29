///  Do not remove this unless you get business authorization.
///  Home
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';


class HomePage extends StatelessWidget {
  static final String path = '/home';
  static final Handler handler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return HomePage(params: params);
    }
  );

  Map<String, List<String>> params;

  HomePage({this.params});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        HomeModel.createProvider(),
      ],
      child: HomeScene(),
    );
  }
}

class HomeScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter home Page"),
      ),
    );
  }
}