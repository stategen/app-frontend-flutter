///  Do not remove this unless you get business authorization.
///  WxPay
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_frontend_flutter/intergrade/intergrades.dart';

class WxPayStateEx {

}

class WxPayProvider extends WxPayAbstractProvider with WxPayStateEx {
  static ChangeNotifierProvider<WxPayProvider> create({Widget child}) {
    return ChangeNotifierProvider<WxPayProvider>(
      builder: (BuildContext context) => WxPayProvider(context: context),
      child: child,
    );
  }

  static WxPayProvider of(BuildContext context, {bool listen = true}) {
     return Provider.of<WxPayProvider>(context, listen: listen);
  }

  WxPayProvider({BuildContext context});
}