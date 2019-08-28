///  Do not remove this unless you get business authorization.
///  Topic_detail_$topicId
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baixingshenghuo_shop/intergrade/intergrades.dart';

class Topic_detail_$topicIdStateEx {

}

class Topic_detail_$topicIdModel extends Topic_detail_$topicIdAbstractModel with Topic_detail_$topicIdStateEx {
  static ChangeNotifierProvider<Topic_detail_$topicIdModel> createProvider() {
    return ChangeNotifierProvider<Topic_detail_$topicIdModel>(
      builder: (_) => Topic_detail_$topicIdModel(),
    );
  }

  static Topic_detail_$topicIdModel getModel(BuildContext context) {
     return Provider.of<Topic_detail_$topicIdModel>(context);
  }
}