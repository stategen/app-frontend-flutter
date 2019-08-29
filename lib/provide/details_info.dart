import 'package:flutter/material.dart';

//数据model
import 'package:baixingshenghuo_shop/model/details_model.dart';

//后台获取数据
import 'package:baixingshenghuo_shop/service/service_method.dart';

//Json Data
import 'dart:convert';

class DetailsInfoProvide with ChangeNotifier {
  DetailsModel goodsInfo;
  bool isLeft = true;
  bool isRight = false;

  //TabBar切换方法
  changeLeftAndRight(String changeState) {
    if (changeState == 'left') {
      isLeft = true;
      isRight = false;
    } else {
      isLeft = false;
      isRight = true;
    }


    notifyListeners();
  }

  //后台获取商品数据
  getGoodsInfo(String id) async {
    var formData = {'goodId': id};

    var value =await request('getGoodDetailById', formData: formData);
      var data ;
      if (value is Map){
        data = json.decode(json.encode(value));
      } else {
        data = json.decode(value.toString());
      }
      if (data != null) {
        goodsInfo = DetailsModel.fromJson(data);
        debugPrintStack(label: "$data");
        notifyListeners();
      }
  }
}
