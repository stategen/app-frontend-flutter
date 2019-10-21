///  Do not remove this unless you get business authorization.
///  GoodsDetail
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'component/details_bottom.dart';
import 'component/details_explain.dart';
import 'component/details_tabbar.dart';
import 'component/details_top_area.dart';
import 'component/details_web.dart';
import 'goodsdetail_provider.dart';


class GoodsDetailPage extends StatefulWidget {
  // 路由路径
  static final String path = '/goodsDetail';

  // 路由创建方式
  static final Handler handler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return GoodsDetailProvider.create(
            child: GoodsDetailPage(params: params)
        );
      }
  );

  Map<String, List<String>> params;
  String goodsId;

  GoodsDetailPage({this.params}){
    this.goodsId = params['goodsId'].first;
  }

  @override
  createState() => _GoodsDetailPageState();

}

class _GoodsDetailPageState extends State<GoodsDetailPage> {

  GoodsDetailProvider goodsDetailProvider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // state在整个生部周期只需要拿和注册一次
    goodsDetailProvider = GoodsDetailProvider.of(context,listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情页面"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: FutureBuilder(
          future: _getGoodsDetail(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Stack(
                children: <Widget>[
                  Container(
                    child: ListView(
                      children: <Widget>[
                        DetailsTopAread(),
                        DetailsExplain(),
                        DetailsTabbar(),
                        DetailsWeb()
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: DetailsBottom(),
                  ),
                ],
              );
            } else {
              return Text('加载中。。。');
            }
          }),
    );
  }


  _getGoodsDetail(BuildContext context) async {
    await goodsDetailProvider.getGoodDetailById(context, goodsId: widget.goodsId);
    return '完成加载';
  }


}