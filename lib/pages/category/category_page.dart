///  Do not remove this unless you get business authorization.
///  Category
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'category_provider.dart';
import 'package:baixingshenghuo_shop/intergrade/intergrades.dart';
import 'package:baixingshenghuo_shop/intergrade/pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:fluttertoast/fluttertoast.dart';



class CategoryPage extends StatelessWidget {
  static final String path = '/category';
  static final Handler handler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return CategoryProvider.create(
            child: CategoryPage(params: params)
        );
      }
  );

  Map<String, List<String>> params;

  CategoryPage({this.params});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        CategoryProvider.create(),
        GoodsProvider.create(),
      ],
      child: _CategoryPage(),
    );
  }

}

class _CategoryPage extends StatefulWidget {
  @override
  __CategoryPageState createState() => __CategoryPageState();
}

class __CategoryPageState extends State<_CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品分类'),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            LeftCategoryNav(),
            Column(
              children: <Widget>[
                RightCategoryNavState(),
                CategorGoodsList(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//左侧大类导航
class LeftCategoryNav extends StatefulWidget {
  @override
  _LeftCategoryNavState createState() => _LeftCategoryNavState();
}

class _LeftCategoryNavState extends State<LeftCategoryNav> {
  CategoryProvider categoryProvider;
  GoodsProvider goodsProvider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    categoryProvider = CategoryProvider.of(context);
    goodsProvider = GoodsProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    var fetched = categoryProvider.categoryArea.fetched;
    if (!fetched) {
      _getCategory();
    }
    return Container(
      width: ScreenUtil().setWidth(180),
      decoration: BoxDecoration(
          border: Border(
              right: BorderSide(
                width: 0.5,
                color: Colors.black12,
              ))),
      child: fetched ? ListView.builder(
        itemCount: categoryProvider.categoryArea.list.length,
        itemBuilder: (context, index) {
          return _leftInkWell(index);
        },
      ) :
      Text('加载中...'),
    );
  }

  Widget _leftInkWell(int index) {
    bool isClick = false;
    isClick = (index == categoryProvider.categoryArea.index) ? true : false;

    return InkWell(
      onTap: () {
        categoryProvider.categoryArea.index = index;
        categoryProvider.stateChanged();
        goodsProvider.fetchFirst(context);
      },
      child: Container(
        height: ScreenUtil().setHeight(80),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: isClick ? Color.fromRGBO(236, 236, 236, 1.0) : Colors.white,
            border: Border(
              bottom: BorderSide(
                  width: 0.5, color: Color.fromRGBO(236, 236, 236, 1.0)),
            )),
        child: Text(
          categoryProvider.categoryArea.list[index].mallCategoryName,
          style: TextStyle(fontSize: ScreenUtil().setSp(30)),
        ),
      ),
    );
  }

  //内部方法调试接口
  _getCategory() async {
    await categoryProvider.getCategory(context);
    goodsProvider.fetchFirst(context);
  }

}

class RightCategoryNavState extends StatefulWidget {
  @override
  _RightCategoryNavStateState createState() => _RightCategoryNavStateState();
}

class _RightCategoryNavStateState extends State<RightCategoryNavState> {

  CategoryProvider categoryProvider;
  GoodsProvider goodsProvider;
  final all = [CategorySub(mallSubName: "全部")];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    categoryProvider = CategoryProvider.of(context);
    goodsProvider = GoodsProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    var category = categoryProvider.categoryArea.current;
    var withAll = [...all];
    var subs = category?.bxMallSubDto;
    subs != null ? withAll.addAll(subs) : null;

    return Container(
        height: ScreenUtil().setHeight(90),
        width: ScreenUtil().setWidth(570),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(width: 1, color: Colors.black12),
            )),
        child: category != null ? ListView.builder(
          //滚动方像
          scrollDirection: Axis.horizontal,
          //个数
          itemCount: withAll.length,
          itemBuilder: (context, index) {
            return _rightInwell(
                index, withAll);
          },
        ) : Text('暂无数据')
    );
  }

  Widget _rightInwell(int index, List<CategorySub> withAll) {
    var item = withAll[index];
    bool isClick = item.frontSelected ?? false;
    return InkWell(
      onTap: () {
        var indexs = withAll
            ?.asMap()
            ?.keys
            ?.toList() ?? [];
        indexs.forEach((idx) {
          var frontSelected = (idx == index);
          withAll[idx].frontSelected = frontSelected;
        });
        goodsProvider.fetchFirst(context);
      },

      child: Container(
        padding: EdgeInsets.fromLTRB(
            5.0, ScreenUtil().setHeight(25), 5.0, ScreenUtil().setHeight(25)),
//        alignment: Alignment.center,
        child: Text(
          item.mallSubName,
          style: TextStyle(
            fontSize: ScreenUtil().setSp(28),
            color: isClick ? Colors.pink : Colors.black,
          ),
        ),
      ),
    );
  }
}

//商品列表
class CategorGoodsList extends StatefulWidget {
  @override
  _CategorGoodsListState createState() => _CategorGoodsListState();
}

class _CategorGoodsListState extends State<CategorGoodsList> {
  GlobalKey<RefreshFooterState> _footerKey = GlobalKey<RefreshFooterState>();
  var scrollcontroller = ScrollController();

  CategoryProvider categoryProvider;
  GoodsProvider goodsProvider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    categoryProvider = CategoryProvider.of(context);
    goodsProvider = GoodsProvider.of(context);
  }


  @override
  Widget build(BuildContext context) {
    var goodsList = goodsProvider.goodsArea?.list;
    try {
      if (goodsProvider.goodsArea?.pagination?.current == 1) {
        //列表位置放放到最上面
        scrollcontroller.jumpTo(0.0);
      }
    } catch (error) {
      print('第一次进入页面初始化：${error}');
    }
    //容错处理
    if (goodsList != null && goodsList.isNotEmpty) {
      return Expanded(
        child: Container(
          width: ScreenUtil().setWidth(570),
          child: EasyRefresh(
            refreshFooter: ClassicsFooter(
              key: _footerKey,
              bgColor: Colors.white,
              textColor: Colors.pink,
              moreInfoColor: Colors.pink,
              showMore: true,
              noMoreText: '没有更多商品了',
              moreInfo: '加载中...',
              loadingText: '请稍后',
              loadText: '上拉加载',
              loadReadyText: '释放开始加载',
            ),
            child: ListView.builder(
              controller: scrollcontroller,
              itemBuilder: (context, index) {
                return _listItemWidget(goodsList, index);
              },
              itemCount: goodsList.length,
            ),

            loadMore: () async {
              _getMoreList();
            },
          ),
        ),
      );
    } else {
      return Center(
        child: Container(
          child: Text(
            "暂无数据",
            style: TextStyle(fontSize: 30),
          ),
        ),
      );
    }
//    }
//    );
  }

  _showToast(String message) {
    return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        //显示位置
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.pink,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  void _getMoreList() async {
    goodsProvider.getMallGoodsNext(context);
    _showToast("加载中");
  }

  //组合
  Widget _listItemWidget(List newlist, int index) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border:
            Border(bottom: BorderSide(color: Colors.black12, width: 1))),
        child: Row(
          children: <Widget>[
            _goodsImage(newlist, index),
            Column(
              children: <Widget>[
                _goodsName(newlist, index),
                _goodsPrice(newlist, index),
              ],
            )
          ],
        ),
      ),
    );
  }

  //商品价格
  Widget _goodsPrice(List newlist, int index) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: ScreenUtil().setWidth(370),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 5.0),
            width: ScreenUtil().setWidth(180),
            child: Text(
              "价格:￥${newlist[index].presentPrice}",
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(26), color: Colors.pink),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 1.0),
            width: ScreenUtil().setWidth(180),
            child: Text(
              "价格:￥${newlist[index].oriPrice}",
              style: TextStyle(
                fontSize: ScreenUtil().setSp(20),
                color: Colors.black26,
                decoration: TextDecoration.lineThrough,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }

  //商品名字
  Widget _goodsName(List newlist, int index) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: ScreenUtil().setWidth(370),
      child: Text(
        newlist[index].goodsName,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: ScreenUtil().setSp(28)),
      ),
    );
  }

  //图片
  Widget _goodsImage(List newlist, int index) {
    return Container(
      width: ScreenUtil().setWidth(200),
      child: Image.network(newlist[index].image),
    );
  }
}
