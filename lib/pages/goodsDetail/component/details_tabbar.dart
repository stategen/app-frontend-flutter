import 'package:app_frontend_flutter/intergrade/pages.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsTabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var goodsDetailProvider =GoodsDetailProvider.of(context);
    //状态及时改变
    final isLeft = goodsDetailProvider.isLeft;
    final isRight = goodsDetailProvider.isRight;
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: <Widget>[
          _myTabBarLeft(context, isLeft),
          _myTabBarRight(context, isRight)
        ],
      ),
    );
  }

  //操作状态需要上下文 (右侧)
  Widget _myTabBarRight(BuildContext context, bool isRight) {
    var goodsDetailProvider =GoodsDetailProvider.of(context);
    return InkWell(
      onTap: () {
        goodsDetailProvider.changeLeftAndRight('right');
      },
      child: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        width: ScreenUtil().setWidth(375),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                bottom: BorderSide(
              width: 1.0,
              color: isRight ? Colors.pink : Colors.black12,
            ))),
        child: Text(
          '评论',
          style: TextStyle(color: isRight ? Colors.pink : Colors.black),
        ),
      ),
    );
  }
}

//左边按钮
Widget _myTabBarLeft(BuildContext context, bool isLeft) {
  var goodsDetailProvider =GoodsDetailProvider.of(context);
  return InkWell(

    onTap: () {
      goodsDetailProvider.changeLeftAndRight('left');
    },
    child: Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      width: ScreenUtil().setWidth(375),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(
            width: 1.0,
            color: isLeft ? Colors.pink : Colors.black12,
          ))),
      child: Text(
        '详情',
        style: TextStyle(color: isLeft ? Colors.pink : Colors.black),
      ),
    ),
  );
}
