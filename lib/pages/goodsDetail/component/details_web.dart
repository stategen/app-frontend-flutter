import 'package:baixingshenghuo_shop/intergrade/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:baixingshenghuo_shop/provide/details_info.dart';
import 'package:flutter_html/flutter_html.dart';

class DetailsWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var goodsDetailProvider =GoodsDetailProvider.of(context);
    var goodsDetails = goodsDetailProvider.goodsWrapArea.valueMap[0].goodInfo.goodsDetail;
    final isLeft = goodsDetailProvider.isLeft;
    if (goodsDetailProvider != null) {
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
