///  Do not remove this unless you get business authorization.
///  Msg
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baixingshenghuo_shop/intergrade/intergrades.dart';

class MsgStateEx {

}

class MsgProvider extends MsgAbstractProvider with MsgStateEx {
  static ChangeNotifierProvider<MsgProvider> create({Widget child}) {
    return ChangeNotifierProvider<MsgProvider>(
      builder: (BuildContext context) => MsgProvider(context: context),
      child: child,
    );
  }

  static MsgProvider of(BuildContext context, {bool listen = true}) {
     return Provider.of<MsgProvider>(context, listen: listen);
  }

  MsgProvider({BuildContext context});
}