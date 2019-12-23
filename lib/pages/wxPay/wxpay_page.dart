///  Do not remove this unless you get business authorization.
///  WxPay
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'wxpay_provider.dart';


class WxPayPage extends StatefulWidget {
  // 路由路径
  static final String path = '/wxPay';

  // 路由创建方式
  static final Handler handler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return WxPayProvider.create(
        child: WxPayPage(params: params)
      );
    }
  );

  Map<String, List<String>> params;

  WxPayPage({this.params});

  @override
  createState() => _WxPayPageState();

}

class _WxPayPageState extends State<WxPayPage> {

  WxPayProvider wxPayProvider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // state在整个生部周期只需要拿和注册一次
    wxPayProvider = WxPayProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    //var fetched = wxPayProvider.wxPayWrapArea.fetched ?? false;
    //if (!fetched) {
    //  wxPayProvider.xxx(context,);
    //}

    return Scaffold(
      appBar: AppBar(
        title: Text("WxPayPage"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Stack(
        children: <Widget>[
          Container(
          ),
          Positioned(
            bottom: 0,
            left: 0,
          ),
        ],
      ),
    );
  }

}