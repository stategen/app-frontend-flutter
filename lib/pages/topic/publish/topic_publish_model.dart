///  Do not remove this unless you get business authorization.
///  Topic_publish
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baixingshenghuo_shop/intergrade/intergrades.dart';

class Topic_publishStateEx {

}

class Topic_publishModel extends Topic_publishAbstractModel with Topic_publishStateEx {
  static ChangeNotifierProvider<Topic_publishModel> createProvider() {
    return ChangeNotifierProvider<Topic_publishModel>(
      builder: (_) => Topic_publishModel(),
    );
  }

  static Topic_publishModel getModel(BuildContext context) {
     return Provider.of<Topic_publishModel>(context);
  }
}