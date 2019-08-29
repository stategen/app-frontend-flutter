///  Do not remove this unless you get business authorization.
///  Topic_detail_$topicId
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'topic_detail_\$topicid_provider.dart';


class Topic_detail_$topicIdPage extends StatelessWidget {
  static final String path = '/topic/detail/\$topicId';
  static final Handler handler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return Topic_detail_$topicIdProvider.create(
        child: Topic_detail_$topicIdPage(params: params)
      );
    }
  );

  Map<String, List<String>> params;

  Topic_detail_$topicIdPage({this.params});

  @override
  Widget build(BuildContext context) {
    return Topic_detail_$topicIdScene();
  }
}

class Topic_detail_$topicIdScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter topic_detail_\$topicid Page"),
      ),
    );
  }
}