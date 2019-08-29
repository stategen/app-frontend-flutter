///  Do not remove this unless you get business authorization.
///  Msg
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'msg_provider.dart';


class MsgPage extends StatelessWidget {
  static final String path = '/msg';
  static final Handler handler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return MsgProvider.create(
        child: MsgPage(params: params)
      );
    }
  );

  Map<String, List<String>> params;

  MsgPage({this.params});

  @override
  Widget build(BuildContext context) {
    return MsgScene();
  }
}

class MsgScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter msg Page"),
      ),
    );
  }
}