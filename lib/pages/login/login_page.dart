///  Do not remove this unless you get business authorization.
///  Login
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'login_provider.dart';


class LoginPage extends StatelessWidget {
  // 路由路径
  static final String path = '/login';

  // 路由创建方式
  static final Handler handler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return LoginProvider.create(
        child: LoginPage(params: params)
      );
    }
  );

  Map<String, List<String>> params;

  LoginPage({this.params});

  @override
  Widget build(BuildContext context) {
    // 这里提供provider是避免省事，将provider全部配到main下，而不能释放资源
    return LoginProvider.create(
      child: LoginScene(),
    );
  }
}

class LoginScene extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginScene> {

  LoginProvider loginProvider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // state在整个生部周期只需要拿和注册一次
    loginProvider = LoginProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    //var fetched = loginProvider.loginWrapArea.fetched ?? false;
    //if (!fetched) {
    //  loginProvider.xxx(context,);
    //}

    return Text('login Page 创建成功!');
  }

}