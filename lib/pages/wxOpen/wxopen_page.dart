///  Do not remove this unless you get business authorization.
///  WxOpen
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'wxopen_provider.dart';


class WxOpenPage extends StatefulWidget {
  // 路由路径
  static final String path = '/wxOpen';

  // 路由创建方式
  static final Handler handler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return WxOpenProvider.create(
        child: WxOpenPage(params: params)
      );
    }
  );

  Map<String, List<String>> params;

  WxOpenPage({this.params});

  @override
  createState() => _WxOpenPageState();

}

class _WxOpenPageState extends State<WxOpenPage> {

  WxOpenProvider wxOpenProvider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // state在整个生部周期只需要拿和注册一次
    wxOpenProvider = WxOpenProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    //var fetched = wxOpenProvider.wxOpenWrapArea.fetched ?? false;
    //if (!fetched) {
    //  wxOpenProvider.xxx(context,);
    //}

    return Scaffold(
      appBar: AppBar(
        title: Text("WxOpenPage"),
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