import 'package:baixingshenghuo_shop/intergrade/pages.dart';
import 'package:flutter/material.dart';
import 'package:baixingshenghuo_shop/pages/index_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:fluro/fluro.dart';
import 'package:baixingshenghuo_shop/routers/routers.dart';
import 'package:baixingshenghuo_shop/routers/application.dart';
import 'package:baixingshenghuo_shop/provide/cart.dart';
import 'package:baixingshenghuo_shop/provide/currentIndex.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //状态管理
    //分类管理
    //商品详情
    //购物车
    var cartProvide = CartProvider();
    var currentIndexProvide = CurrentIndexProvide();

//路由跳转
    final router = Router();
    //注入文件
    Routers.configureRoutes(router);
    Application.router = router;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => cartProvide),
        ChangeNotifierProvider(builder: (_) => currentIndexProvide),
        HomeProvider.create(),
      ],
      child: Container(
        child: MaterialApp(
          title: '百姓生活+',
          onGenerateRoute: Application.router.generator,
          //去掉DEBUG字样
          debugShowCheckedModeBanner: false,
          //设置主题
          theme: ThemeData(primaryColor: Colors.pink),
          home: IndexPage(),
        ),
      ),
    );

//    return
  }
}
