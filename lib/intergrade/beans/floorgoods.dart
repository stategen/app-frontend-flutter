///  Do not remove this unless you get business authorization.
///  FloorGoods
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/goods.dart';
import '../beans/goodscomment.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class FloorGoods extends Goods with FrontBean {
  /// floorGoodsId
  static const String FloorGoods_ID = 'floorGoodsId';

  /// floorGoodsId
  String floorGoodsId;

  /// floorId
  String floorId;

  /// orderNo
  int orderNo;

  /// floorGoodsId s
  List<String> floorGoodsIds;

  /// floorId s
  List<String> floorIds;

  /// orderNoMin
  int orderNoMin;

  /// orderNoMax
  int orderNoMax;

  FloorGoods({
    this.floorGoodsId,
    this.floorId,
    goodsId,
    image,
    this.orderNo,
    createTime,
    updateTime,
    deleteFlag,
    this.floorGoodsIds,
    this.floorIds,
    goodsIds,
    this.orderNoMin,
    this.orderNoMax,
    createTimeMin,
    createTimeMax,
    updateTimeMin,
    updateTimeMax,
    goodComments,
    goodsName,
    categorySubId,
    amount,
    price,
    images,
    isCheck,
    isHot,
    advertiseId,
    presentPrice,
    image1,
    image2,
    image3,
    image4,
    image5,
    isOnLine,
    goodsSerialNumber,
    state,
    shopId,
    goodsDetail,
    goodsNameLike,
    categorySubIds,
    amountMin,
    amountMax,
    priceMin,
    priceMax,
    imagesLike,
    advertiseIds,
    presentPriceMin,
    presentPriceMax,
    image1Like,
    image2Like,
    image3Like,
    image4Like,
    image5Like,
    isOnLineLike,
    goodsSerialNumberLike,
    stateMin,
    stateMax,
    shopIds,
    goodsDetailLike,
    name,
    count,
    oriPrice,
    mallPrice,
    comPic,
  }) : super(goodComments: goodComments, goodsId: goodsId, goodsName: goodsName, categorySubId: categorySubId, amount: amount, price: price, images: images, isCheck: isCheck, isHot: isHot, advertiseId: advertiseId, presentPrice: presentPrice, image: image, image1: image1, image2: image2, image3: image3, image4: image4, image5: image5, isOnLine: isOnLine, goodsSerialNumber: goodsSerialNumber, state: state, shopId: shopId, goodsDetail: goodsDetail, createTime: createTime, updateTime: updateTime, deleteFlag: deleteFlag, goodsIds: goodsIds, goodsNameLike: goodsNameLike, categorySubIds: categorySubIds, amountMin: amountMin, amountMax: amountMax, priceMin: priceMin, priceMax: priceMax, imagesLike: imagesLike, advertiseIds: advertiseIds, presentPriceMin: presentPriceMin, presentPriceMax: presentPriceMax, image1Like: image1Like, image2Like: image2Like, image3Like: image3Like, image4Like: image4Like, image5Like: image5Like, isOnLineLike: isOnLineLike, goodsSerialNumberLike: goodsSerialNumberLike, stateMin: stateMin, stateMax: stateMax, shopIds: shopIds, goodsDetailLike: goodsDetailLike, createTimeMin: createTimeMin, createTimeMax: createTimeMax, updateTimeMin: updateTimeMin, updateTimeMax: updateTimeMax, name: name, count: count, oriPrice: oriPrice, mallPrice: mallPrice, comPic: comPic);

  static FloorGoods fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return FloorGoods(
      floorGoodsId: JsonUtil.parseString(json['floorGoodsId']),
      floorId: JsonUtil.parseString(json['floorId']),
      goodsId: JsonUtil.parseString(json['goodsId']),
      image: JsonUtil.parseString(json['image']),
      orderNo: JsonUtil.parseInt(json['orderNo']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
    );
  }

  static List<FloorGoods> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, FloorGoods.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.floorGoodsId != null) {
      result['floorGoodsId'] = JsonUtil.stringToJson(floorGoodsId);
    }
    if (this.floorId != null) {
      result['floorId'] = JsonUtil.stringToJson(floorId);
    }
    if (this.goodsId != null) {
      result['goodsId'] = JsonUtil.stringToJson(goodsId);
    }
    if (this.image != null) {
      result['image'] = JsonUtil.stringToJson(image);
    }
    if (this.orderNo != null) {
      result['orderNo'] = JsonUtil.intToJson(orderNo);
    }
    if (this.createTime != null) {
      result['createTime'] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.updateTime != null) {
      result['updateTime'] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.deleteFlag != null) {
      result['deleteFlag'] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.floorGoodsIds != null) {
      var list = List();
      for (var v in floorGoodsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['floorGoodsIds'] = list;
    }
    if (this.floorIds != null) {
      var list = List();
      for (var v in floorIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['floorIds'] = list;
    }
    if (this.goodsIds != null) {
      var list = List();
      for (var v in goodsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['goodsIds'] = list;
    }
    if (this.orderNoMin != null) {
      result['orderNoMin'] = JsonUtil.intToJson(orderNoMin);
    }
    if (this.orderNoMax != null) {
      result['orderNoMax'] = JsonUtil.intToJson(orderNoMax);
    }
    if (this.createTimeMin != null) {
      result['createTimeMin'] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.createTimeMax != null) {
      result['createTimeMax'] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.updateTimeMin != null) {
      result['updateTimeMin'] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.updateTimeMax != null) {
      result['updateTimeMax'] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.goodComments != null) {
      var list = List();
      for (var v in goodComments) {
        list.add(v.toMap());
      }
      result['goodComments'] = list;
    }
    if (this.goodsName != null) {
      result['goodsName'] = JsonUtil.stringToJson(goodsName);
    }
    if (this.categorySubId != null) {
      result['categorySubId'] = JsonUtil.stringToJson(categorySubId);
    }
    if (this.amount != null) {
      result['amount'] = JsonUtil.intToJson(amount);
    }
    if (this.price != null) {
      result['price'] = JsonUtil.doubleToJson(price);
    }
    if (this.images != null) {
      result['images'] = JsonUtil.stringToJson(images);
    }
    if (this.isCheck != null) {
      result['isCheck'] = JsonUtil.boolToJson(isCheck);
    }
    if (this.isHot != null) {
      result['isHot'] = JsonUtil.boolToJson(isHot);
    }
    if (this.advertiseId != null) {
      result['advertiseId'] = JsonUtil.intToJson(advertiseId);
    }
    if (this.presentPrice != null) {
      result['presentPrice'] = JsonUtil.doubleToJson(presentPrice);
    }
    if (this.image1 != null) {
      result['image1'] = JsonUtil.stringToJson(image1);
    }
    if (this.image2 != null) {
      result['image2'] = JsonUtil.stringToJson(image2);
    }
    if (this.image3 != null) {
      result['image3'] = JsonUtil.stringToJson(image3);
    }
    if (this.image4 != null) {
      result['image4'] = JsonUtil.stringToJson(image4);
    }
    if (this.image5 != null) {
      result['image5'] = JsonUtil.stringToJson(image5);
    }
    if (this.isOnLine != null) {
      result['isOnLine'] = JsonUtil.stringToJson(isOnLine);
    }
    if (this.goodsSerialNumber != null) {
      result['goodsSerialNumber'] = JsonUtil.stringToJson(goodsSerialNumber);
    }
    if (this.state != null) {
      result['state'] = JsonUtil.intToJson(state);
    }
    if (this.shopId != null) {
      result['shopId'] = JsonUtil.stringToJson(shopId);
    }
    if (this.goodsDetail != null) {
      result['goodsDetail'] = JsonUtil.stringToJson(goodsDetail);
    }
    if (this.goodsNameLike != null) {
      result['goodsNameLike'] = JsonUtil.stringToJson(goodsNameLike);
    }
    if (this.categorySubIds != null) {
      var list = List();
      for (var v in categorySubIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['categorySubIds'] = list;
    }
    if (this.amountMin != null) {
      result['amountMin'] = JsonUtil.intToJson(amountMin);
    }
    if (this.amountMax != null) {
      result['amountMax'] = JsonUtil.intToJson(amountMax);
    }
    if (this.priceMin != null) {
      result['priceMin'] = JsonUtil.doubleToJson(priceMin);
    }
    if (this.priceMax != null) {
      result['priceMax'] = JsonUtil.doubleToJson(priceMax);
    }
    if (this.imagesLike != null) {
      result['imagesLike'] = JsonUtil.stringToJson(imagesLike);
    }
    if (this.advertiseIds != null) {
      var list = List();
      for (var v in advertiseIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['advertiseIds'] = list;
    }
    if (this.presentPriceMin != null) {
      result['presentPriceMin'] = JsonUtil.doubleToJson(presentPriceMin);
    }
    if (this.presentPriceMax != null) {
      result['presentPriceMax'] = JsonUtil.doubleToJson(presentPriceMax);
    }
    if (this.image1Like != null) {
      result['image1Like'] = JsonUtil.stringToJson(image1Like);
    }
    if (this.image2Like != null) {
      result['image2Like'] = JsonUtil.stringToJson(image2Like);
    }
    if (this.image3Like != null) {
      result['image3Like'] = JsonUtil.stringToJson(image3Like);
    }
    if (this.image4Like != null) {
      result['image4Like'] = JsonUtil.stringToJson(image4Like);
    }
    if (this.image5Like != null) {
      result['image5Like'] = JsonUtil.stringToJson(image5Like);
    }
    if (this.isOnLineLike != null) {
      result['isOnLineLike'] = JsonUtil.stringToJson(isOnLineLike);
    }
    if (this.goodsSerialNumberLike != null) {
      result['goodsSerialNumberLike'] = JsonUtil.stringToJson(goodsSerialNumberLike);
    }
    if (this.stateMin != null) {
      result['stateMin'] = JsonUtil.intToJson(stateMin);
    }
    if (this.stateMax != null) {
      result['stateMax'] = JsonUtil.intToJson(stateMax);
    }
    if (this.shopIds != null) {
      var list = List();
      for (var v in shopIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['shopIds'] = list;
    }
    if (this.goodsDetailLike != null) {
      result['goodsDetailLike'] = JsonUtil.stringToJson(goodsDetailLike);
    }
    if (this.name != null) {
      result['name'] = JsonUtil.stringToJson(name);
    }
    if (this.count != null) {
      result['count'] = JsonUtil.intToJson(count);
    }
    if (this.oriPrice != null) {
      result['oriPrice'] = JsonUtil.doubleToJson(oriPrice);
    }
    if (this.mallPrice != null) {
      result['mallPrice'] = JsonUtil.doubleToJson(mallPrice);
    }
    if (this.comPic != null) {
      result['comPic'] = JsonUtil.stringToJson(comPic);
    }
    return result;
  }

  static Map<String, FloorGoods> toIdMap(List<FloorGoods> floorGoodsList) {
    var result = Map<String, FloorGoods>();
    if (floorGoodsList != null) {
      for (var floorGoods in floorGoodsList) {
        if (floorGoods != null) {
          result[floorGoods.floorGoodsId] = floorGoods;
        }
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<FloorGoods> floorGoodsList) {
    var result = List<Map<String, dynamic>>();
    if (floorGoodsList != null) {
      for (var floorGoods in floorGoodsList) {
        if (floorGoods != null) {
          result.add(floorGoods.toMap());
        }
      }
    }
    return result;
  }

}

