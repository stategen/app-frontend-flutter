///  Do not remove this unless you get business authorization.
///  Goods
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'goods_model.dart';


class GoodsPage extends StatelessWidget {
  static final String path = '/goods';
  static final Handler handler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return GoodsPage(params: params);
    }
  );

  Map<String, List<String>> params;

  GoodsPage({this.params});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        GoodsModel.createProvider(),
      ],
      child: GoodsScene(),
    );
  }
}

class GoodsScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter goods Page"),
      ),
    );
  }
}