import 'package:app_frontend_flutter/intergrade/pages.dart';
import 'package:app_frontend_flutter/stgutil/route_util.dart';
import 'package:app_frontend_flutter/pages/index_page.dart';
import 'package:app_frontend_flutter/provide/current_index_provider.dart';
import 'package:flutter/material.dart';
import 'package:app_frontend_flutter/pages/index_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:app_frontend_flutter/provide/cart.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //注入文件
    RouterUtil.configureRoutes();

    return MultiProvider(
      //这里只能提供几个公用的Provider,以免占用资源
      providers: [
        ChangeNotifierProvider(builder: (_) => CartProvider()),
        ChangeNotifierProvider(builder: (_) => CurrentIndexProvide()),
      ],
      child: Container(
        child: MaterialApp(
          title: '百姓生活+',
          onGenerateRoute: RouterUtil.router.generator,
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
