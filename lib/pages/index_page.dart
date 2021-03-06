import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:app_frontend_flutter/pages/member_page.dart';
import 'package:app_frontend_flutter/provide/current_index_provider.dart';

import 'package:app_frontend_flutter/pages/home/home_page.dart';
import 'package:app_frontend_flutter/pages/cart_page.dart';
import 'package:app_frontend_flutter/pages/category/category_page.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';



class IndexPage extends StatelessWidget {

  final Map<BottomNavigationBarItem, Widget> taps = {
    //设置底部导航栏 Tabbar
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('首页'),
    ):
    HomePage(),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      title: Text('分类'),
    ):
    CategoryPage(),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart),
      title: Text('购物车'),
    ):
    CartPage(),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: Text('会员中心'),
    ):
    MemberPage(),
  };



  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)
      ..init(context); //设置屏幕适配
    var currentIndexProvide = Provider.of<CurrentIndexProvide>(context);
    int currenIndex = currentIndexProvide.currentIndex;
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 245, 245, 1),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currenIndex,
        items: taps.keys.toList(),
        onTap: (index) {
          currentIndexProvide.changeIndex(index);
        },
      ),
      //保持页面的状态
      body: IndexedStack(
          index: currenIndex,
          children: taps.values.toList(),
      ),
    );
  }
}