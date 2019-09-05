///  Do not remove this unless you get business authorization.
///  Topic_publish
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_frontend_flutter/intergrade/intergrades.dart';

class Topic_publishStateEx {

}

class Topic_publishProvider extends Topic_publishAbstractProvider with Topic_publishStateEx {
  static ChangeNotifierProvider<Topic_publishProvider> create({Widget child}) {
    return ChangeNotifierProvider<Topic_publishProvider>(
      builder: (BuildContext context) => Topic_publishProvider(context: context),
      child: child,
    );
  }

  static Topic_publishProvider of(BuildContext context, {bool listen = true}) {
     return Provider.of<Topic_publishProvider>(context, listen: listen);
  }

  Topic_publishProvider({BuildContext context});
}