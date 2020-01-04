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

  /// floorGoodsId s
  List<String> floorGoodsIds;

  /// floorId
  String floorId;

  /// floorId s
  List<String> floorIds;

  /// orderNo
  int orderNo;

  /// orderNoMax
  int orderNoMax;

  /// orderNoMin
  int orderNoMin;

  FloorGoods({
    advertiseId,
    advertiseIds,
    amount,
    amountMax,
    amountMin,
    categorySubId,
    categorySubIds,
    comPic,
    count,
    createTime,
    createTimeMax,
    createTimeMin,
    deleteFlag,
    this.floorGoodsId,
    this.floorGoodsIds,
    this.floorId,
    this.floorIds,
    goodComments,
    goodsDetail,
    goodsDetailLike,
    goodsId,
    goodsIds,
    goodsName,
    goodsNameLike,
    goodsSerialNumber,
    goodsSerialNumberLike,
    image,
    image1,
    image1Like,
    image2,
    image2Like,
    image3,
    image3Like,
    image4,
    image4Like,
    image5,
    image5Like,
    images,
    imagesLike,
    isCheck,
    isHot,
    isOnLine,
    isOnLineLike,
    mallPrice,
    name,
    this.orderNo,
    this.orderNoMax,
    this.orderNoMin,
    oriPrice,
    presentPrice,
    presentPriceMax,
    presentPriceMin,
    price,
    priceMax,
    priceMin,
    shopId,
    shopIds,
    state,
    stateMax,
    stateMin,
    updateTime,
    updateTimeMax,
    updateTimeMin,
  }) : super(advertiseId: advertiseId, advertiseIds: advertiseIds, amount: amount, amountMax: amountMax, amountMin: amountMin, categorySubId: categorySubId, categorySubIds: categorySubIds, comPic: comPic, count: count, createTime: createTime, createTimeMax: createTimeMax, createTimeMin: createTimeMin, deleteFlag: deleteFlag, goodComments: goodComments, goodsDetail: goodsDetail, goodsDetailLike: goodsDetailLike, goodsId: goodsId, goodsIds: goodsIds, goodsName: goodsName, goodsNameLike: goodsNameLike, goodsSerialNumber: goodsSerialNumber, goodsSerialNumberLike: goodsSerialNumberLike, image: image, image1: image1, image1Like: image1Like, image2: image2, image2Like: image2Like, image3: image3, image3Like: image3Like, image4: image4, image4Like: image4Like, image5: image5, image5Like: image5Like, images: images, imagesLike: imagesLike, isCheck: isCheck, isHot: isHot, isOnLine: isOnLine, isOnLineLike: isOnLineLike, mallPrice: mallPrice, name: name, oriPrice: oriPrice, presentPrice: presentPrice, presentPriceMax: presentPriceMax, presentPriceMin: presentPriceMin, price: price, priceMax: priceMax, priceMin: priceMin, shopId: shopId, shopIds: shopIds, state: state, stateMax: stateMax, stateMin: stateMin, updateTime: updateTime, updateTimeMax: updateTimeMax, updateTimeMin: updateTimeMin);

  static FloorGoods fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return FloorGoods(
      advertiseId: JsonUtil.parseInt(json['advertiseId']),
      amount: JsonUtil.parseInt(json['amount']),
      categorySubId: JsonUtil.parseString(json['categorySubId']),
      comPic: JsonUtil.parseString(json['comPic']),
      count: JsonUtil.parseInt(json['count']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      floorGoodsId: JsonUtil.parseString(json['floorGoodsId']),
      floorId: JsonUtil.parseString(json['floorId']),
      goodComments: GoodsComment.fromJsonList(json['goodComments']),
      goodsDetail: JsonUtil.parseString(json['goodsDetail']),
      goodsId: JsonUtil.parseString(json['goodsId']),
      goodsName: JsonUtil.parseString(json['goodsName']),
      goodsSerialNumber: JsonUtil.parseString(json['goodsSerialNumber']),
      image: JsonUtil.parseString(json['image']),
      image1: JsonUtil.parseString(json['image1']),
      image2: JsonUtil.parseString(json['image2']),
      image3: JsonUtil.parseString(json['image3']),
      image4: JsonUtil.parseString(json['image4']),
      image5: JsonUtil.parseString(json['image5']),
      images: JsonUtil.parseString(json['images']),
      isCheck: JsonUtil.parseBool(json['isCheck']),
      isHot: JsonUtil.parseBool(json['isHot']),
      isOnLine: JsonUtil.parseString(json['isOnLine']),
      mallPrice: JsonUtil.parseDouble(json['mallPrice']),
      name: JsonUtil.parseString(json['name']),
      orderNo: JsonUtil.parseInt(json['orderNo']),
      oriPrice: JsonUtil.parseDouble(json['oriPrice']),
      presentPrice: JsonUtil.parseDouble(json['presentPrice']),
      price: JsonUtil.parseDouble(json['price']),
      shopId: JsonUtil.parseString(json['shopId']),
      state: JsonUtil.parseInt(json['state']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
    );
  }

  static List<FloorGoods> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, FloorGoods.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = new Map<String, dynamic>();
    if (this.advertiseId != null) {
      result['advertiseId'] = JsonUtil.intToJson(advertiseId);
    }
    if (this.advertiseIds != null) {
      var list = List();
      for (var v in advertiseIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['advertiseIds'] = list;
    }
    if (this.amount != null) {
      result['amount'] = JsonUtil.intToJson(amount);
    }
    if (this.amountMax != null) {
      result['amountMax'] = JsonUtil.intToJson(amountMax);
    }
    if (this.amountMin != null) {
      result['amountMin'] = JsonUtil.intToJson(amountMin);
    }
    if (this.categorySubId != null) {
      result['categorySubId'] = JsonUtil.stringToJson(categorySubId);
    }
    if (this.categorySubIds != null) {
      var list = List();
      for (var v in categorySubIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['categorySubIds'] = list;
    }
    if (this.comPic != null) {
      result['comPic'] = JsonUtil.stringToJson(comPic);
    }
    if (this.count != null) {
      result['count'] = JsonUtil.intToJson(count);
    }
    if (this.createTime != null) {
      result['createTime'] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result['createTimeMax'] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result['createTimeMin'] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result['deleteFlag'] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.floorGoodsId != null) {
      result['floorGoodsId'] = JsonUtil.stringToJson(floorGoodsId);
    }
    if (this.floorGoodsIds != null) {
      var list = List();
      for (var v in floorGoodsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['floorGoodsIds'] = list;
    }
    if (this.floorId != null) {
      result['floorId'] = JsonUtil.stringToJson(floorId);
    }
    if (this.floorIds != null) {
      var list = List();
      for (var v in floorIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['floorIds'] = list;
    }
    if (this.goodComments != null) {
      var list = List();
      for (var v in goodComments) {
        list.add(v.toJson());
      }
      result['goodComments'] = list;
    }
    if (this.goodsDetail != null) {
      result['goodsDetail'] = JsonUtil.stringToJson(goodsDetail);
    }
    if (this.goodsDetailLike != null) {
      result['goodsDetailLike'] = JsonUtil.stringToJson(goodsDetailLike);
    }
    if (this.goodsId != null) {
      result['goodsId'] = JsonUtil.stringToJson(goodsId);
    }
    if (this.goodsIds != null) {
      var list = List();
      for (var v in goodsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['goodsIds'] = list;
    }
    if (this.goodsName != null) {
      result['goodsName'] = JsonUtil.stringToJson(goodsName);
    }
    if (this.goodsNameLike != null) {
      result['goodsNameLike'] = JsonUtil.stringToJson(goodsNameLike);
    }
    if (this.goodsSerialNumber != null) {
      result['goodsSerialNumber'] = JsonUtil.stringToJson(goodsSerialNumber);
    }
    if (this.goodsSerialNumberLike != null) {
      result['goodsSerialNumberLike'] = JsonUtil.stringToJson(goodsSerialNumberLike);
    }
    if (this.image != null) {
      result['image'] = JsonUtil.stringToJson(image);
    }
    if (this.image1 != null) {
      result['image1'] = JsonUtil.stringToJson(image1);
    }
    if (this.image1Like != null) {
      result['image1Like'] = JsonUtil.stringToJson(image1Like);
    }
    if (this.image2 != null) {
      result['image2'] = JsonUtil.stringToJson(image2);
    }
    if (this.image2Like != null) {
      result['image2Like'] = JsonUtil.stringToJson(image2Like);
    }
    if (this.image3 != null) {
      result['image3'] = JsonUtil.stringToJson(image3);
    }
    if (this.image3Like != null) {
      result['image3Like'] = JsonUtil.stringToJson(image3Like);
    }
    if (this.image4 != null) {
      result['image4'] = JsonUtil.stringToJson(image4);
    }
    if (this.image4Like != null) {
      result['image4Like'] = JsonUtil.stringToJson(image4Like);
    }
    if (this.image5 != null) {
      result['image5'] = JsonUtil.stringToJson(image5);
    }
    if (this.image5Like != null) {
      result['image5Like'] = JsonUtil.stringToJson(image5Like);
    }
    if (this.images != null) {
      result['images'] = JsonUtil.stringToJson(images);
    }
    if (this.imagesLike != null) {
      result['imagesLike'] = JsonUtil.stringToJson(imagesLike);
    }
    if (this.isCheck != null) {
      result['isCheck'] = JsonUtil.boolToJson(isCheck);
    }
    if (this.isHot != null) {
      result['isHot'] = JsonUtil.boolToJson(isHot);
    }
    if (this.isOnLine != null) {
      result['isOnLine'] = JsonUtil.stringToJson(isOnLine);
    }
    if (this.isOnLineLike != null) {
      result['isOnLineLike'] = JsonUtil.stringToJson(isOnLineLike);
    }
    if (this.mallPrice != null) {
      result['mallPrice'] = JsonUtil.doubleToJson(mallPrice);
    }
    if (this.name != null) {
      result['name'] = JsonUtil.stringToJson(name);
    }
    if (this.orderNo != null) {
      result['orderNo'] = JsonUtil.intToJson(orderNo);
    }
    if (this.orderNoMax != null) {
      result['orderNoMax'] = JsonUtil.intToJson(orderNoMax);
    }
    if (this.orderNoMin != null) {
      result['orderNoMin'] = JsonUtil.intToJson(orderNoMin);
    }
    if (this.oriPrice != null) {
      result['oriPrice'] = JsonUtil.doubleToJson(oriPrice);
    }
    if (this.presentPrice != null) {
      result['presentPrice'] = JsonUtil.doubleToJson(presentPrice);
    }
    if (this.presentPriceMax != null) {
      result['presentPriceMax'] = JsonUtil.doubleToJson(presentPriceMax);
    }
    if (this.presentPriceMin != null) {
      result['presentPriceMin'] = JsonUtil.doubleToJson(presentPriceMin);
    }
    if (this.price != null) {
      result['price'] = JsonUtil.doubleToJson(price);
    }
    if (this.priceMax != null) {
      result['priceMax'] = JsonUtil.doubleToJson(priceMax);
    }
    if (this.priceMin != null) {
      result['priceMin'] = JsonUtil.doubleToJson(priceMin);
    }
    if (this.shopId != null) {
      result['shopId'] = JsonUtil.stringToJson(shopId);
    }
    if (this.shopIds != null) {
      var list = List();
      for (var v in shopIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['shopIds'] = list;
    }
    if (this.state != null) {
      result['state'] = JsonUtil.intToJson(state);
    }
    if (this.stateMax != null) {
      result['stateMax'] = JsonUtil.intToJson(stateMax);
    }
    if (this.stateMin != null) {
      result['stateMin'] = JsonUtil.intToJson(stateMin);
    }
    if (this.updateTime != null) {
      result['updateTime'] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result['updateTimeMax'] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result['updateTimeMin'] = JsonUtil.dateTimeToJson(updateTimeMin);
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

}

