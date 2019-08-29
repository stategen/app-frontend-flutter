///  Do not remove this unless you get business authorization.
///  GoodsDetail
///  init by [stategen.progen] ,can be edit manually ,keep when "keep this"
///  由 [stategen.progen]代码生成器初始化，可以手工修改,但如果遇到 keep this ,请保留导出设置以备外部自动化调用
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'goodsdetail_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:baixingshenghuo_shop/provide/details_info.dart';
import './component/details_top_area.dart';
import './component/details_explain.dart';
import './component/details_tabbar.dart';
import './component/details_web.dart';
import './component/details_bottom.dart';



class GoodsDetailPage extends StatelessWidget {
  static final String path = '/goodsDetail';
  static final Handler handler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return GoodsDetailProvider.create(
          child: GoodsDetailPage(params: params)
      );
    }
  );

  
  String goodsId;
  Map<String, List<String>> params;
  GoodsDetailPage({this.params}){
    this.goodsId = params['id'].first;
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
          future: _getGoodsInfo(context),
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


  Future _getGoodsInfo(BuildContext context) async {
    GoodsDetailProvider goodsDetailProvider =GoodsDetailProvider.of(context,listen:false);
    await goodsDetailProvider.getGoodDetailById(context,goodId:goodsId);
    return '完成加载';
  }

}

