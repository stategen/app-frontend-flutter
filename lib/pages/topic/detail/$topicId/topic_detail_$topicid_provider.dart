///  Do not remove this unless you get business authorization.
///  Topic_detail_$topicId
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_frontend_flutter/intergrade/intergrades.dart';

class Topic_detail_$topicIdStateEx {

}

class Topic_detail_$topicIdProvider extends Topic_detail_$topicIdAbstractProvider with Topic_detail_$topicIdStateEx {
  static ChangeNotifierProvider<Topic_detail_$topicIdProvider> create({Widget child}) {
    return ChangeNotifierProvider<Topic_detail_$topicIdProvider>(
      builder: (BuildContext context) => Topic_detail_$topicIdProvider(context: context),
      child: child,
    );
  }

  static Topic_detail_$topicIdProvider of(BuildContext context, {bool listen = true}) {
     return Provider.of<Topic_detail_$topicIdProvider>(context, listen: listen);
  }

  Topic_detail_$topicIdProvider({BuildContext context});
}