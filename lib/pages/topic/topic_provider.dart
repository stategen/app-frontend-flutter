///  Do not remove this unless you get business authorization.
///  Topic
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_frontend_flutter/intergrade/intergrades.dart';

class TopicStateEx {

}

class TopicProvider extends TopicAbstractProvider with TopicStateEx {
  static ChangeNotifierProvider<TopicProvider> create({Widget child}) {
    return ChangeNotifierProvider<TopicProvider>(
      builder: (BuildContext context) => TopicProvider(context: context),
      child: child,
    );
  }

  static TopicProvider of(BuildContext context, {bool listen = true}) {
     return Provider.of<TopicProvider>(context, listen: listen);
  }

  TopicProvider({BuildContext context});
}