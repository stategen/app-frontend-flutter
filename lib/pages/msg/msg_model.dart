///  Do not remove this unless you get business authorization.
///  Msg
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baixingshenghuo_shop/intergrade/intergrades.dart';

class MsgStateEx {

}

class MsgModel extends MsgAbstractModel with MsgStateEx {
  static ChangeNotifierProvider<MsgModel> createProvider() {
    return ChangeNotifierProvider<MsgModel>(
      builder: (_) => MsgModel(),
    );
  }

  static MsgModel getModel(BuildContext context) {
     return Provider.of<MsgModel>(context);
  }
}