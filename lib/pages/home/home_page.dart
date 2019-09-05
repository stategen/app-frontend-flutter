///  Do not remove this unless you get business authorization.
///  Home
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
///
///
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'home_provider.dart';
import 'package:baixingshenghuo_shop/intergrade/beans/goods.dart';
import 'package:baixingshenghuo_shop/intergrade/intergrades.dart';
import 'package:baixingshenghuo_shop/intergrade/pages.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:baixingshenghuo_shop/stgutil/route_util.dart';


class HomePage extends StatelessWidget {
  static final String path = '/home';
  static final Handler handler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return HomeProvider.create(
        child: HomePage(params: params)
      );
    }
  );


  Map<String, List<String>> params;

  HomePage({this.params});


  @override
  Widget build(BuildContext context) {
    return HomeProvider.create(
      child: HomeScene(),
    );
  }
}


class HomeScene extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//保持页面状态
class _HomePageState extends State<HomeScene> with AutomaticKeepAliveClientMixin {
//火爆专区的列表

  GlobalKey<RefreshFooterState> _footerKey = GlobalKey<RefreshFooterState>();

  //保持页面状态
  @override
  bool get wantKeepAlive => true;
  String homePageContent = '正在获取数据';
  HomeProvider homeProvider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    homeProvider = HomeProvider.of(context);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var fetched = homeProvider.homeWrapArea.fetched ?? false;
    if (!fetched) {
      homeProvider.homePageContent(context, lon: 104.050699, lat: 30.690167);
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('百姓生活+'),
        ),
        //解决异步请求再渲染，不需要异步渲染
        body: FutureBuilder(
          initialData: homeProvider.homeWrapArea,
          builder: (context, snapshot) {
            if (fetched) {
              HomeWrap homeWrap = homeProvider.homeWrapArea.current;

              List<Slide> swiper = homeWrap.slides;
              List<Category> navigatorList = homeWrap.category;
              String adPicture = homeWrap.advertesPicture.pictureAddress;
              String leaderImage = homeWrap.shopInfo.leaderImage;
              String leaderPhone = homeWrap.shopInfo.leaderPhone;
              List<HomeGoods> recommendList = homeWrap.recommend;

              List<Floor> floors =homeWrap.floors;
              List<Widget> floorWidgets = [];
              floors?.forEach((floor) {
                floorWidgets.add(FloorTitle(pictureAddress: floor.advertisePicture?.pictureAddress));
                floorWidgets.add(FloorContent(floorGoodsList: floor.floorGoodss));
              });

              return EasyRefresh(
                refreshFooter: ClassicsFooter(
                  key: _footerKey,
                  bgColor: Colors.white,
                  textColor: Colors.pink,
                  moreInfoColor: Colors.pink,
                  showMore: true,
                  noMoreText: '',
                  moreInfo: '加载中...',
                  loadingText: '请稍后',
                  loadText: '上拉加载',
                  loadReadyText: '释放开始加载',
                ),
                child: ListView(
                  children: <Widget>[
                    SwiperDiy(swperDateList: swiper),
                    TopNavigator(navigatorList: navigatorList),
                    AdBanner(
                      adPicture: adPicture,
                    ),
                    LeaderPhone(
                      leaderImage: leaderImage,
                      leaderPhone: leaderPhone,
                    ),
                    Recommend(recommendList: recommendList),
                    ...floorWidgets,
                    _hotGoods(),
                  ],
                ),

                loadMore: () async {
                  homeProvider.homePageBelowContenNext(context);
                },
              );
            } else {
              return Center(
                child: Text(
                  '加载中...',
                  style: TextStyle(fontSize: ScreenUtil().setSp(28)),
                ),
              );
            }
          },
        ));
  }

  //使用变量的方式创建
  Widget hotTitle = Container(
    margin: EdgeInsets.only(top: 10.0),
    alignment: Alignment.center,
    color: Colors.transparent,
    child: Text('火爆专区'),
  );

  //使用方法创建
  Widget _wrapList() {
    List<Goods> hotGoodsList = homeProvider.goodsArea.list;

    if (hotGoodsList.isNotEmpty) {
      List<Widget> listWidget = hotGoodsList.map((value) {
        return InkWell(
          onTap: () {
            //路由跳转
            RouterUtil.router
                .navigateTo(context, '/${GoodsDetailPage.path}?id=${value.goodsId}', transition:
            TransitionType.native);
          },
          child: Container(
            width: ScreenUtil().setWidth(370),
            color: Colors.white,
            padding: EdgeInsets.all(5.0),
            //设置内边距
            margin: EdgeInsets.only(bottom: 3.0),
            child: Column(
              children: <Widget>[
                Image.network(
                  value.image,
                  width: ScreenUtil().setWidth(388),
                ),
                Text(
                  value.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: ScreenUtil().setSp(26)),
                ),
                Row(
                  children: <Widget>[
                    Text('￥${value.mallPrice}'),
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        '￥${value.price}',
                        style: TextStyle(
                            color: Colors.black26,
                            decoration: TextDecoration.lineThrough,
                            fontSize: ScreenUtil().setSp(20)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }).toList();

      return Wrap(
        //列数
        spacing: 2,
        children: listWidget,
      );
    } else {
      return Text('');
    }
  }

  Widget _hotGoods() {
    return Container(
      child: Column(
        children: <Widget>[
          hotTitle,
          _wrapList(),
        ],
      ),
    );
  }
}

//首页轮播组件
class SwiperDiy extends StatelessWidget {
  final List<Slide> swperDateList;

  SwiperDiy({Key key, this.swperDateList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(333),
      width: ScreenUtil().setWidth(750),
      child: Swiper(
        itemCount: swperDateList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                RouterUtil.router.navigateTo(context, '/${GoodsDetailPage.path}?id=${swperDateList[index].goodsId}',
                    transition: TransitionType.native);
              },
              child: Image.network(
                "${swperDateList[index].image}",
                fit: BoxFit.fill,
              )
          );
        },
        pagination: SwiperPagination(),
        //自动播放
        autoplay: true,
      ),
    );
  }
}

//导航控件
class TopNavigator extends StatelessWidget {
  final List<Category> navigatorList;

  TopNavigator({Key key, this.navigatorList}) : super(key: key);

  Widget _gridViewItemUi(BuildContext context, Category item) {
    //能接受一个单击事件
    return InkWell(
      onTap: () {

      },
      child: Column(
        children: <Widget>[
          Image.network(
            item.image,
            width: ScreenUtil().setWidth(95),
          ),
          Text(item.categoryName),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
//    if (this.navigatorList.length > 10){
//      this.navigatorList.removeRange(10, navigatorList.length);
//
//    }

    double itemInts = this.navigatorList.length / 5;

    double TopNavigatorHeight = itemInts.ceil() * ScreenUtil().setHeight(190);
    return Container(
      height: ScreenUtil().setWidth(480),
//      padding: EdgeInsets.all(ScreenUtil().setHeight(3.0)),
      padding: EdgeInsets.fromLTRB(
          ScreenUtil().setWidth(3.0),
          ScreenUtil().setWidth(20.0),
          ScreenUtil().setWidth(3.0),
          ScreenUtil().setWidth(10.0)),
      child: GridView.count(
        //设置 列表不能滑动
        physics: const NeverScrollableScrollPhysics(),
        //每行展示几个
        crossAxisCount: 5,
        //设置item之间的间距
        padding: EdgeInsets.all(
          ScreenUtil().setWidth(5.0),
        ),
        //设置每一个item
        children: navigatorList.map((item) {
          return _gridViewItemUi(context, item);
        }).toList(),
      ),
    );
  }
}

//广告区域
class AdBanner extends StatelessWidget {
  final String adPicture;

  AdBanner({Key key, this.adPicture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        adPicture,
      ),
    );
  }
}

//店长电话模块
class LeaderPhone extends StatelessWidget {
  final String leaderImage; //背景图片
  final String leaderPhone; //电话号码

  LeaderPhone({Key key, this.leaderImage, this.leaderPhone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: _launchURL,
        child: Image.network(leaderImage),
      ),
    );
  }

  void _launchURL() async {
    String url = 'tel:' + leaderPhone;
    print("${url}");
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'url不能访问，异常';
    }
  }
}

//商品推荐类
class Recommend extends StatelessWidget {
  final List<HomeGoods> recommendList;

  Recommend({Key key, this.recommendList}) : super(key: key);

//标题
  Widget _titleWidget() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(10.0, 2.0, 0, 5.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border:
          Border(bottom: BorderSide(width: 0.5, color: Colors.black12))),
      child: Text(
        '商品推荐',
        style: TextStyle(color: Colors.pink),
      ),
    );
  }

  //商品 item

  Widget _item(context, index) {
    return InkWell(
        onTap: () {
          RouterUtil.router.navigateTo(
              context, '/${GoodsDetailPage.path}?id=${recommendList[index].goodsId}', transition: TransitionType.native);
        },
        child: Container(
          height: ScreenUtil().setHeight(330),
          width: ScreenUtil().setWidth(250),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                left: BorderSide(width: 0.5, color: Colors.black12),
              )),
          child: Column(
            children: <Widget>[
              Image.network(recommendList[index].image),
              Text('￥${recommendList[index].mallPrice}'),
              Text(
                '￥${recommendList[index].price}',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ));
  }

  //横向类表方法

  Widget _recommedList() {
    return Container(
      height: ScreenUtil().setWidth(330),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recommendList.length,
        //构造器
        itemBuilder: (context, index) {
          return _item(context, index);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(390),
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          _titleWidget(),
          _recommedList(),
        ],
      ),
    );
  }
}

//楼层标题

class FloorTitle extends StatelessWidget {
  final String pictureAddress;

  FloorTitle({Key key, this.pictureAddress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Image.network(pictureAddress),
    );
  }
}

//楼层商品列表
class FloorContent extends StatelessWidget {
  final List<FloorGoods> floorGoodsList;

  FloorContent({Key key, this.floorGoodsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _firstRow(context),
          _otherGoods(context),
        ],
      ),
    );
  }

  Widget _firstRow(context) {
    return Row(
      children: <Widget>[
        _goodsItem(context, floorGoodsList[0]),
        Column(
          children: <Widget>[
            _goodsItem(context, floorGoodsList[1]),
            _goodsItem(context, floorGoodsList[2]),
          ],
        )
      ],
    );
  }

  Widget _otherGoods(context) {
    List<Widget> children = [];
    for (var i = 3; i <= 4; i++) {
      if (i < floorGoodsList.length) {
        children.add(_goodsItem(context, floorGoodsList[i]));
      }
    }

    return Row(
      children: children,
    );
  }

  Widget _goodsItem(context, FloorGoods goods) {
    var image = goods.image;
    if (image == null) {
      debugPrintStack(label: goods.toString());
    }
    return Container(
      width: ScreenUtil().setWidth(375),
      child: InkWell(
          onTap: () {
            RouterUtil.router.navigateTo(
                context, '/${GoodsDetailPage.path}?id=${goods.goodsId}', transition: TransitionType.native);
          },
          child: Image.network(goods.image)

      ),
    );
  }
}
