///  Do not remove this unless you get business authorization.
///  Topic_publish
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'topic_publish_model.dart';


class Topic_publishPage extends StatelessWidget {
  static final String path = '/topic/publish';
  static final Handler handler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return Topic_publishPage(params: params);
    }
  );

  Map<String, List<String>> params;

  Topic_publishPage({this.params});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Topic_publishModel.createProvider(),
      ],
      child: Topic_publishScene(),
    );
  }
}

class Topic_publishScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter topic_publish Page"),
      ),
    );
  }
}