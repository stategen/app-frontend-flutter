import 'package:app_frontend_flutter/intergrade/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:flutter_html/flutter_html.dart';

class DetailsWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var goodsDetailProvider =GoodsDetailProvider.of(context);
    if (goodsDetailProvider != null) {
      var goods= goodsDetailProvider.goodsArea.list[0];
      var goodsDetails = goods.goodsDetail;
      var comments =goods.goodComments;

      final isLeft = goodsDetailProvider.isLeft;
      if (isLeft) {
        return Container(
          margin: EdgeInsets.only(top: 3),
          child: Html(data: goodsDetails),
        );
      } else {
        return Container(
          width: ScreenUtil().setWidth(750),
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text('暂无评论'),
        );
      }
    } else {
      return Text('正在加载中...');
    }
  }
}
