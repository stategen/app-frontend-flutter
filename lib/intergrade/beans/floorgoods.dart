///  Do not remove this unless you get business authorization.
///  FloorGoods
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/goods.dart';
import '../beans/goodscomment.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class FloorGoodsFields {
  static const advertiseId = 'advertiseId';
  static const advertiseIds = 'advertiseIds';
  static const amount = 'amount';
  static const amountMax = 'amountMax';
  static const amountMin = 'amountMin';
  static const categorySubId = 'categorySubId';
  static const categorySubIdLike = 'categorySubIdLike';
  static const categorySubIds = 'categorySubIds';
  static const comPic = 'comPic';
  static const count = 'count';
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const floorGoodsId = 'floorGoodsId';
  static const floorGoodsIds = 'floorGoodsIds';
  static const floorId = 'floorId';
  static const floorIds = 'floorIds';
  static const goodComments = 'goodComments';
  static const goodsDetail = 'goodsDetail';
  static const goodsDetailLike = 'goodsDetailLike';
  static const goodsId = 'goodsId';
  static const goodsIds = 'goodsIds';
  static const goodsName = 'goodsName';
  static const goodsNameLike = 'goodsNameLike';
  static const goodsSerialNumber = 'goodsSerialNumber';
  static const goodsSerialNumberLike = 'goodsSerialNumberLike';
  static const image = 'image';
  static const image1 = 'image1';
  static const image1Like = 'image1Like';
  static const image2 = 'image2';
  static const image2Like = 'image2Like';
  static const image3 = 'image3';
  static const image3Like = 'image3Like';
  static const image4 = 'image4';
  static const image4Like = 'image4Like';
  static const image5 = 'image5';
  static const image5Like = 'image5Like';
  static const images = 'images';
  static const imagesLike = 'imagesLike';
  static const isCheck = 'isCheck';
  static const isHot = 'isHot';
  static const isOnLine = 'isOnLine';
  static const isOnLineLike = 'isOnLineLike';
  static const mallPrice = 'mallPrice';
  static const name = 'name';
  static const orderNo = 'orderNo';
  static const orderNoMax = 'orderNoMax';
  static const orderNoMin = 'orderNoMin';
  static const orderNos = 'orderNos';
  static const oriPrice = 'oriPrice';
  static const presentPrice = 'presentPrice';
  static const presentPriceMax = 'presentPriceMax';
  static const presentPriceMin = 'presentPriceMin';
  static const price = 'price';
  static const priceMax = 'priceMax';
  static const priceMin = 'priceMin';
  static const shopId = 'shopId';
  static const shopIds = 'shopIds';
  static const state = 'state';
  static const stateMax = 'stateMax';
  static const stateMin = 'stateMin';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
}

class FloorGoods extends Goods with FrontBean {
  /// floorGoodsId
  static const String ID = FloorGoodsFields.floorGoodsId;

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

  /// orderNo s
  List<int> orderNos;

  FloorGoods({
    advertiseId,
    advertiseIds,
    amount,
    amountMax,
    amountMin,
    categorySubId,
    categorySubIdLike,
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
    this.orderNos,
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
  }) : super(advertiseId: advertiseId, advertiseIds: advertiseIds, amount: amount, amountMax: amountMax, amountMin: amountMin, categorySubId: categorySubId, categorySubIdLike: categorySubIdLike, categorySubIds: categorySubIds, comPic: comPic, count: count, createTime: createTime, createTimeMax: createTimeMax, createTimeMin: createTimeMin, deleteFlag: deleteFlag, goodComments: goodComments, goodsDetail: goodsDetail, goodsDetailLike: goodsDetailLike, goodsId: goodsId, goodsIds: goodsIds, goodsName: goodsName, goodsNameLike: goodsNameLike, goodsSerialNumber: goodsSerialNumber, goodsSerialNumberLike: goodsSerialNumberLike, image: image, image1: image1, image1Like: image1Like, image2: image2, image2Like: image2Like, image3: image3, image3Like: image3Like, image4: image4, image4Like: image4Like, image5: image5, image5Like: image5Like, images: images, imagesLike: imagesLike, isCheck: isCheck, isHot: isHot, isOnLine: isOnLine, isOnLineLike: isOnLineLike, mallPrice: mallPrice, name: name, oriPrice: oriPrice, presentPrice: presentPrice, presentPriceMax: presentPriceMax, presentPriceMin: presentPriceMin, price: price, priceMax: priceMax, priceMin: priceMin, shopId: shopId, shopIds: shopIds, state: state, stateMax: stateMax, stateMin: stateMin, updateTime: updateTime, updateTimeMax: updateTimeMax, updateTimeMin: updateTimeMin);

  static FloorGoods fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return FloorGoods(
      advertiseId: JsonUtil.parseInt(json[FloorGoodsFields.advertiseId]),
      amount: JsonUtil.parseInt(json[FloorGoodsFields.amount]),
      categorySubId: JsonUtil.parseString(json[FloorGoodsFields.categorySubId]),
      comPic: JsonUtil.parseString(json[FloorGoodsFields.comPic]),
      count: JsonUtil.parseInt(json[FloorGoodsFields.count]),
      createTime: JsonUtil.parseDateTime(json[FloorGoodsFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[FloorGoodsFields.deleteFlag]),
      floorGoodsId: JsonUtil.parseString(json[FloorGoodsFields.floorGoodsId]),
      floorId: JsonUtil.parseString(json[FloorGoodsFields.floorId]),
      goodComments: GoodsComment.fromJsonList(json[FloorGoodsFields.goodComments]),
      goodsDetail: JsonUtil.parseString(json[FloorGoodsFields.goodsDetail]),
      goodsId: JsonUtil.parseString(json[FloorGoodsFields.goodsId]),
      goodsName: JsonUtil.parseString(json[FloorGoodsFields.goodsName]),
      goodsSerialNumber: JsonUtil.parseString(json[FloorGoodsFields.goodsSerialNumber]),
      image: JsonUtil.parseString(json[FloorGoodsFields.image]),
      image1: JsonUtil.parseString(json[FloorGoodsFields.image1]),
      image2: JsonUtil.parseString(json[FloorGoodsFields.image2]),
      image3: JsonUtil.parseString(json[FloorGoodsFields.image3]),
      image4: JsonUtil.parseString(json[FloorGoodsFields.image4]),
      image5: JsonUtil.parseString(json[FloorGoodsFields.image5]),
      images: JsonUtil.parseString(json[FloorGoodsFields.images]),
      isCheck: JsonUtil.parseBool(json[FloorGoodsFields.isCheck]),
      isHot: JsonUtil.parseBool(json[FloorGoodsFields.isHot]),
      isOnLine: JsonUtil.parseString(json[FloorGoodsFields.isOnLine]),
      mallPrice: JsonUtil.parseDouble(json[FloorGoodsFields.mallPrice]),
      name: JsonUtil.parseString(json[FloorGoodsFields.name]),
      orderNo: JsonUtil.parseInt(json[FloorGoodsFields.orderNo]),
      oriPrice: JsonUtil.parseDouble(json[FloorGoodsFields.oriPrice]),
      presentPrice: JsonUtil.parseDouble(json[FloorGoodsFields.presentPrice]),
      price: JsonUtil.parseDouble(json[FloorGoodsFields.price]),
      shopId: JsonUtil.parseString(json[FloorGoodsFields.shopId]),
      state: JsonUtil.parseInt(json[FloorGoodsFields.state]),
      updateTime: JsonUtil.parseDateTime(json[FloorGoodsFields.updateTime]),
    );
  }

  static List<FloorGoods> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, FloorGoods.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.advertiseId != null) {
      result[FloorGoodsFields.advertiseId] = JsonUtil.intToJson(advertiseId);
    }
    if (this.advertiseIds != null) {
      var list = List();
      for (var v in advertiseIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result[FloorGoodsFields.advertiseIds] = list;
    }
    if (this.amount != null) {
      result[FloorGoodsFields.amount] = JsonUtil.intToJson(amount);
    }
    if (this.amountMax != null) {
      result[FloorGoodsFields.amountMax] = JsonUtil.intToJson(amountMax);
    }
    if (this.amountMin != null) {
      result[FloorGoodsFields.amountMin] = JsonUtil.intToJson(amountMin);
    }
    if (this.categorySubId != null) {
      result[FloorGoodsFields.categorySubId] = JsonUtil.stringToJson(categorySubId);
    }
    if (this.categorySubIdLike != null) {
      result[FloorGoodsFields.categorySubIdLike] = JsonUtil.stringToJson(categorySubIdLike);
    }
    if (this.categorySubIds != null) {
      var list = List();
      for (var v in categorySubIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[FloorGoodsFields.categorySubIds] = list;
    }
    if (this.comPic != null) {
      result[FloorGoodsFields.comPic] = JsonUtil.stringToJson(comPic);
    }
    if (this.count != null) {
      result[FloorGoodsFields.count] = JsonUtil.intToJson(count);
    }
    if (this.createTime != null) {
      result[FloorGoodsFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[FloorGoodsFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[FloorGoodsFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[FloorGoodsFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.floorGoodsId != null) {
      result[FloorGoodsFields.floorGoodsId] = JsonUtil.stringToJson(floorGoodsId);
    }
    if (this.floorGoodsIds != null) {
      var list = List();
      for (var v in floorGoodsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[FloorGoodsFields.floorGoodsIds] = list;
    }
    if (this.floorId != null) {
      result[FloorGoodsFields.floorId] = JsonUtil.stringToJson(floorId);
    }
    if (this.floorIds != null) {
      var list = List();
      for (var v in floorIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[FloorGoodsFields.floorIds] = list;
    }
    if (this.goodComments != null) {
      var list = List();
      for (var v in goodComments) {
        list.add(v.toJson());
      }
      result[FloorGoodsFields.goodComments] = list;
    }
    if (this.goodsDetail != null) {
      result[FloorGoodsFields.goodsDetail] = JsonUtil.stringToJson(goodsDetail);
    }
    if (this.goodsDetailLike != null) {
      result[FloorGoodsFields.goodsDetailLike] = JsonUtil.stringToJson(goodsDetailLike);
    }
    if (this.goodsId != null) {
      result[FloorGoodsFields.goodsId] = JsonUtil.stringToJson(goodsId);
    }
    if (this.goodsIds != null) {
      var list = List();
      for (var v in goodsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[FloorGoodsFields.goodsIds] = list;
    }
    if (this.goodsName != null) {
      result[FloorGoodsFields.goodsName] = JsonUtil.stringToJson(goodsName);
    }
    if (this.goodsNameLike != null) {
      result[FloorGoodsFields.goodsNameLike] = JsonUtil.stringToJson(goodsNameLike);
    }
    if (this.goodsSerialNumber != null) {
      result[FloorGoodsFields.goodsSerialNumber] = JsonUtil.stringToJson(goodsSerialNumber);
    }
    if (this.goodsSerialNumberLike != null) {
      result[FloorGoodsFields.goodsSerialNumberLike] = JsonUtil.stringToJson(goodsSerialNumberLike);
    }
    if (this.image != null) {
      result[FloorGoodsFields.image] = JsonUtil.stringToJson(image);
    }
    if (this.image1 != null) {
      result[FloorGoodsFields.image1] = JsonUtil.stringToJson(image1);
    }
    if (this.image1Like != null) {
      result[FloorGoodsFields.image1Like] = JsonUtil.stringToJson(image1Like);
    }
    if (this.image2 != null) {
      result[FloorGoodsFields.image2] = JsonUtil.stringToJson(image2);
    }
    if (this.image2Like != null) {
      result[FloorGoodsFields.image2Like] = JsonUtil.stringToJson(image2Like);
    }
    if (this.image3 != null) {
      result[FloorGoodsFields.image3] = JsonUtil.stringToJson(image3);
    }
    if (this.image3Like != null) {
      result[FloorGoodsFields.image3Like] = JsonUtil.stringToJson(image3Like);
    }
    if (this.image4 != null) {
      result[FloorGoodsFields.image4] = JsonUtil.stringToJson(image4);
    }
    if (this.image4Like != null) {
      result[FloorGoodsFields.image4Like] = JsonUtil.stringToJson(image4Like);
    }
    if (this.image5 != null) {
      result[FloorGoodsFields.image5] = JsonUtil.stringToJson(image5);
    }
    if (this.image5Like != null) {
      result[FloorGoodsFields.image5Like] = JsonUtil.stringToJson(image5Like);
    }
    if (this.images != null) {
      result[FloorGoodsFields.images] = JsonUtil.stringToJson(images);
    }
    if (this.imagesLike != null) {
      result[FloorGoodsFields.imagesLike] = JsonUtil.stringToJson(imagesLike);
    }
    if (this.isCheck != null) {
      result[FloorGoodsFields.isCheck] = JsonUtil.boolToJson(isCheck);
    }
    if (this.isHot != null) {
      result[FloorGoodsFields.isHot] = JsonUtil.boolToJson(isHot);
    }
    if (this.isOnLine != null) {
      result[FloorGoodsFields.isOnLine] = JsonUtil.stringToJson(isOnLine);
    }
    if (this.isOnLineLike != null) {
      result[FloorGoodsFields.isOnLineLike] = JsonUtil.stringToJson(isOnLineLike);
    }
    if (this.mallPrice != null) {
      result[FloorGoodsFields.mallPrice] = JsonUtil.doubleToJson(mallPrice);
    }
    if (this.name != null) {
      result[FloorGoodsFields.name] = JsonUtil.stringToJson(name);
    }
    if (this.orderNo != null) {
      result[FloorGoodsFields.orderNo] = JsonUtil.intToJson(orderNo);
    }
    if (this.orderNoMax != null) {
      result[FloorGoodsFields.orderNoMax] = JsonUtil.intToJson(orderNoMax);
    }
    if (this.orderNoMin != null) {
      result[FloorGoodsFields.orderNoMin] = JsonUtil.intToJson(orderNoMin);
    }
    if (this.orderNos != null) {
      var list = List();
      for (var v in orderNos) {
        list.add(JsonUtil.intToJson(v));
      }
      result[FloorGoodsFields.orderNos] = list;
    }
    if (this.oriPrice != null) {
      result[FloorGoodsFields.oriPrice] = JsonUtil.doubleToJson(oriPrice);
    }
    if (this.presentPrice != null) {
      result[FloorGoodsFields.presentPrice] = JsonUtil.doubleToJson(presentPrice);
    }
    if (this.presentPriceMax != null) {
      result[FloorGoodsFields.presentPriceMax] = JsonUtil.doubleToJson(presentPriceMax);
    }
    if (this.presentPriceMin != null) {
      result[FloorGoodsFields.presentPriceMin] = JsonUtil.doubleToJson(presentPriceMin);
    }
    if (this.price != null) {
      result[FloorGoodsFields.price] = JsonUtil.doubleToJson(price);
    }
    if (this.priceMax != null) {
      result[FloorGoodsFields.priceMax] = JsonUtil.doubleToJson(priceMax);
    }
    if (this.priceMin != null) {
      result[FloorGoodsFields.priceMin] = JsonUtil.doubleToJson(priceMin);
    }
    if (this.shopId != null) {
      result[FloorGoodsFields.shopId] = JsonUtil.stringToJson(shopId);
    }
    if (this.shopIds != null) {
      var list = List();
      for (var v in shopIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[FloorGoodsFields.shopIds] = list;
    }
    if (this.state != null) {
      result[FloorGoodsFields.state] = JsonUtil.intToJson(state);
    }
    if (this.stateMax != null) {
      result[FloorGoodsFields.stateMax] = JsonUtil.intToJson(stateMax);
    }
    if (this.stateMin != null) {
      result[FloorGoodsFields.stateMin] = JsonUtil.intToJson(stateMin);
    }
    if (this.updateTime != null) {
      result[FloorGoodsFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[FloorGoodsFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[FloorGoodsFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
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

