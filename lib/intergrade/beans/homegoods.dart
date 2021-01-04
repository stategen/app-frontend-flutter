///  Do not remove this unless you get business authorization.
///  HomeGoods
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/goods.dart';
import '../beans/goodscomment.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class HomeGoodsFields {
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
  static const recommendId = 'recommendId';
  static const recommendIds = 'recommendIds';
  static const shopId = 'shopId';
  static const shopIds = 'shopIds';
  static const state = 'state';
  static const stateMax = 'stateMax';
  static const stateMin = 'stateMin';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
}

class HomeGoods extends Goods with FrontBean {
  /// recommendId
  static const String ID = HomeGoodsFields.recommendId;

  /// orderNo
  int orderNo;

  /// orderNoMax
  int orderNoMax;

  /// orderNoMin
  int orderNoMin;

  /// orderNo s
  List<int> orderNos;

  /// recommendId
  String recommendId;

  /// recommendId s
  List<String> recommendIds;

  HomeGoods({
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
    this.recommendId,
    this.recommendIds,
    shopId,
    shopIds,
    state,
    stateMax,
    stateMin,
    updateTime,
    updateTimeMax,
    updateTimeMin,
  }) : super(advertiseId: advertiseId, advertiseIds: advertiseIds, amount: amount, amountMax: amountMax, amountMin: amountMin, categorySubId: categorySubId, categorySubIdLike: categorySubIdLike, categorySubIds: categorySubIds, comPic: comPic, count: count, createTime: createTime, createTimeMax: createTimeMax, createTimeMin: createTimeMin, deleteFlag: deleteFlag, goodComments: goodComments, goodsDetail: goodsDetail, goodsDetailLike: goodsDetailLike, goodsId: goodsId, goodsIds: goodsIds, goodsName: goodsName, goodsNameLike: goodsNameLike, goodsSerialNumber: goodsSerialNumber, goodsSerialNumberLike: goodsSerialNumberLike, image: image, image1: image1, image1Like: image1Like, image2: image2, image2Like: image2Like, image3: image3, image3Like: image3Like, image4: image4, image4Like: image4Like, image5: image5, image5Like: image5Like, images: images, imagesLike: imagesLike, isCheck: isCheck, isHot: isHot, isOnLine: isOnLine, isOnLineLike: isOnLineLike, mallPrice: mallPrice, name: name, oriPrice: oriPrice, presentPrice: presentPrice, presentPriceMax: presentPriceMax, presentPriceMin: presentPriceMin, price: price, priceMax: priceMax, priceMin: priceMin, shopId: shopId, shopIds: shopIds, state: state, stateMax: stateMax, stateMin: stateMin, updateTime: updateTime, updateTimeMax: updateTimeMax, updateTimeMin: updateTimeMin);

  static HomeGoods fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return HomeGoods(
      advertiseId: JsonUtil.parseInt(json[HomeGoodsFields.advertiseId]),
      amount: JsonUtil.parseInt(json[HomeGoodsFields.amount]),
      categorySubId: JsonUtil.parseString(json[HomeGoodsFields.categorySubId]),
      comPic: JsonUtil.parseString(json[HomeGoodsFields.comPic]),
      count: JsonUtil.parseInt(json[HomeGoodsFields.count]),
      createTime: JsonUtil.parseDateTime(json[HomeGoodsFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[HomeGoodsFields.deleteFlag]),
      goodComments: GoodsComment.fromJsonList(json[HomeGoodsFields.goodComments]),
      goodsDetail: JsonUtil.parseString(json[HomeGoodsFields.goodsDetail]),
      goodsId: JsonUtil.parseString(json[HomeGoodsFields.goodsId]),
      goodsName: JsonUtil.parseString(json[HomeGoodsFields.goodsName]),
      goodsSerialNumber: JsonUtil.parseString(json[HomeGoodsFields.goodsSerialNumber]),
      image: JsonUtil.parseString(json[HomeGoodsFields.image]),
      image1: JsonUtil.parseString(json[HomeGoodsFields.image1]),
      image2: JsonUtil.parseString(json[HomeGoodsFields.image2]),
      image3: JsonUtil.parseString(json[HomeGoodsFields.image3]),
      image4: JsonUtil.parseString(json[HomeGoodsFields.image4]),
      image5: JsonUtil.parseString(json[HomeGoodsFields.image5]),
      images: JsonUtil.parseString(json[HomeGoodsFields.images]),
      isCheck: JsonUtil.parseBool(json[HomeGoodsFields.isCheck]),
      isHot: JsonUtil.parseBool(json[HomeGoodsFields.isHot]),
      isOnLine: JsonUtil.parseString(json[HomeGoodsFields.isOnLine]),
      mallPrice: JsonUtil.parseDouble(json[HomeGoodsFields.mallPrice]),
      name: JsonUtil.parseString(json[HomeGoodsFields.name]),
      orderNo: JsonUtil.parseInt(json[HomeGoodsFields.orderNo]),
      oriPrice: JsonUtil.parseDouble(json[HomeGoodsFields.oriPrice]),
      presentPrice: JsonUtil.parseDouble(json[HomeGoodsFields.presentPrice]),
      price: JsonUtil.parseDouble(json[HomeGoodsFields.price]),
      recommendId: JsonUtil.parseString(json[HomeGoodsFields.recommendId]),
      shopId: JsonUtil.parseString(json[HomeGoodsFields.shopId]),
      state: JsonUtil.parseInt(json[HomeGoodsFields.state]),
      updateTime: JsonUtil.parseDateTime(json[HomeGoodsFields.updateTime]),
    );
  }

  static List<HomeGoods> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, HomeGoods.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.advertiseId != null) {
      result[HomeGoodsFields.advertiseId] = JsonUtil.intToJson(advertiseId);
    }
    if (this.advertiseIds != null) {
      var list = List();
      for (var v in advertiseIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result[HomeGoodsFields.advertiseIds] = list;
    }
    if (this.amount != null) {
      result[HomeGoodsFields.amount] = JsonUtil.intToJson(amount);
    }
    if (this.amountMax != null) {
      result[HomeGoodsFields.amountMax] = JsonUtil.intToJson(amountMax);
    }
    if (this.amountMin != null) {
      result[HomeGoodsFields.amountMin] = JsonUtil.intToJson(amountMin);
    }
    if (this.categorySubId != null) {
      result[HomeGoodsFields.categorySubId] = JsonUtil.stringToJson(categorySubId);
    }
    if (this.categorySubIdLike != null) {
      result[HomeGoodsFields.categorySubIdLike] = JsonUtil.stringToJson(categorySubIdLike);
    }
    if (this.categorySubIds != null) {
      var list = List();
      for (var v in categorySubIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[HomeGoodsFields.categorySubIds] = list;
    }
    if (this.comPic != null) {
      result[HomeGoodsFields.comPic] = JsonUtil.stringToJson(comPic);
    }
    if (this.count != null) {
      result[HomeGoodsFields.count] = JsonUtil.intToJson(count);
    }
    if (this.createTime != null) {
      result[HomeGoodsFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[HomeGoodsFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[HomeGoodsFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[HomeGoodsFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.goodComments != null) {
      var list = List();
      for (var v in goodComments) {
        list.add(v.toJson());
      }
      result[HomeGoodsFields.goodComments] = list;
    }
    if (this.goodsDetail != null) {
      result[HomeGoodsFields.goodsDetail] = JsonUtil.stringToJson(goodsDetail);
    }
    if (this.goodsDetailLike != null) {
      result[HomeGoodsFields.goodsDetailLike] = JsonUtil.stringToJson(goodsDetailLike);
    }
    if (this.goodsId != null) {
      result[HomeGoodsFields.goodsId] = JsonUtil.stringToJson(goodsId);
    }
    if (this.goodsIds != null) {
      var list = List();
      for (var v in goodsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[HomeGoodsFields.goodsIds] = list;
    }
    if (this.goodsName != null) {
      result[HomeGoodsFields.goodsName] = JsonUtil.stringToJson(goodsName);
    }
    if (this.goodsNameLike != null) {
      result[HomeGoodsFields.goodsNameLike] = JsonUtil.stringToJson(goodsNameLike);
    }
    if (this.goodsSerialNumber != null) {
      result[HomeGoodsFields.goodsSerialNumber] = JsonUtil.stringToJson(goodsSerialNumber);
    }
    if (this.goodsSerialNumberLike != null) {
      result[HomeGoodsFields.goodsSerialNumberLike] = JsonUtil.stringToJson(goodsSerialNumberLike);
    }
    if (this.image != null) {
      result[HomeGoodsFields.image] = JsonUtil.stringToJson(image);
    }
    if (this.image1 != null) {
      result[HomeGoodsFields.image1] = JsonUtil.stringToJson(image1);
    }
    if (this.image1Like != null) {
      result[HomeGoodsFields.image1Like] = JsonUtil.stringToJson(image1Like);
    }
    if (this.image2 != null) {
      result[HomeGoodsFields.image2] = JsonUtil.stringToJson(image2);
    }
    if (this.image2Like != null) {
      result[HomeGoodsFields.image2Like] = JsonUtil.stringToJson(image2Like);
    }
    if (this.image3 != null) {
      result[HomeGoodsFields.image3] = JsonUtil.stringToJson(image3);
    }
    if (this.image3Like != null) {
      result[HomeGoodsFields.image3Like] = JsonUtil.stringToJson(image3Like);
    }
    if (this.image4 != null) {
      result[HomeGoodsFields.image4] = JsonUtil.stringToJson(image4);
    }
    if (this.image4Like != null) {
      result[HomeGoodsFields.image4Like] = JsonUtil.stringToJson(image4Like);
    }
    if (this.image5 != null) {
      result[HomeGoodsFields.image5] = JsonUtil.stringToJson(image5);
    }
    if (this.image5Like != null) {
      result[HomeGoodsFields.image5Like] = JsonUtil.stringToJson(image5Like);
    }
    if (this.images != null) {
      result[HomeGoodsFields.images] = JsonUtil.stringToJson(images);
    }
    if (this.imagesLike != null) {
      result[HomeGoodsFields.imagesLike] = JsonUtil.stringToJson(imagesLike);
    }
    if (this.isCheck != null) {
      result[HomeGoodsFields.isCheck] = JsonUtil.boolToJson(isCheck);
    }
    if (this.isHot != null) {
      result[HomeGoodsFields.isHot] = JsonUtil.boolToJson(isHot);
    }
    if (this.isOnLine != null) {
      result[HomeGoodsFields.isOnLine] = JsonUtil.stringToJson(isOnLine);
    }
    if (this.isOnLineLike != null) {
      result[HomeGoodsFields.isOnLineLike] = JsonUtil.stringToJson(isOnLineLike);
    }
    if (this.mallPrice != null) {
      result[HomeGoodsFields.mallPrice] = JsonUtil.doubleToJson(mallPrice);
    }
    if (this.name != null) {
      result[HomeGoodsFields.name] = JsonUtil.stringToJson(name);
    }
    if (this.orderNo != null) {
      result[HomeGoodsFields.orderNo] = JsonUtil.intToJson(orderNo);
    }
    if (this.orderNoMax != null) {
      result[HomeGoodsFields.orderNoMax] = JsonUtil.intToJson(orderNoMax);
    }
    if (this.orderNoMin != null) {
      result[HomeGoodsFields.orderNoMin] = JsonUtil.intToJson(orderNoMin);
    }
    if (this.orderNos != null) {
      var list = List();
      for (var v in orderNos) {
        list.add(JsonUtil.intToJson(v));
      }
      result[HomeGoodsFields.orderNos] = list;
    }
    if (this.oriPrice != null) {
      result[HomeGoodsFields.oriPrice] = JsonUtil.doubleToJson(oriPrice);
    }
    if (this.presentPrice != null) {
      result[HomeGoodsFields.presentPrice] = JsonUtil.doubleToJson(presentPrice);
    }
    if (this.presentPriceMax != null) {
      result[HomeGoodsFields.presentPriceMax] = JsonUtil.doubleToJson(presentPriceMax);
    }
    if (this.presentPriceMin != null) {
      result[HomeGoodsFields.presentPriceMin] = JsonUtil.doubleToJson(presentPriceMin);
    }
    if (this.price != null) {
      result[HomeGoodsFields.price] = JsonUtil.doubleToJson(price);
    }
    if (this.priceMax != null) {
      result[HomeGoodsFields.priceMax] = JsonUtil.doubleToJson(priceMax);
    }
    if (this.priceMin != null) {
      result[HomeGoodsFields.priceMin] = JsonUtil.doubleToJson(priceMin);
    }
    if (this.recommendId != null) {
      result[HomeGoodsFields.recommendId] = JsonUtil.stringToJson(recommendId);
    }
    if (this.recommendIds != null) {
      var list = List();
      for (var v in recommendIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[HomeGoodsFields.recommendIds] = list;
    }
    if (this.shopId != null) {
      result[HomeGoodsFields.shopId] = JsonUtil.stringToJson(shopId);
    }
    if (this.shopIds != null) {
      var list = List();
      for (var v in shopIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[HomeGoodsFields.shopIds] = list;
    }
    if (this.state != null) {
      result[HomeGoodsFields.state] = JsonUtil.intToJson(state);
    }
    if (this.stateMax != null) {
      result[HomeGoodsFields.stateMax] = JsonUtil.intToJson(stateMax);
    }
    if (this.stateMin != null) {
      result[HomeGoodsFields.stateMin] = JsonUtil.intToJson(stateMin);
    }
    if (this.updateTime != null) {
      result[HomeGoodsFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[HomeGoodsFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[HomeGoodsFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    return result;
  }

  static Map<String, HomeGoods> toIdMap(List<HomeGoods> homeGoodsList) {
    var result = Map<String, HomeGoods>();
    if (homeGoodsList != null) {
      for (var homeGoods in homeGoodsList) {
        if (homeGoods != null) {
          result[homeGoods.recommendId] = homeGoods;
        }
      }
    }
    return result;
  }

}

