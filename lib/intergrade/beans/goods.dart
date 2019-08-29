///  Do not remove this unless you get business authorization.
///  Goods
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/goodscomment.dart';
import '../../stgutil/json_util.dart';

class Goods {
  /// goodsId
  static const String Goods_ID = 'goodsId';

  /// goodComments
  List<GoodsComment> goodComments;

  /// 商品ID
  String goodsId;

  /// 商品名称
  String goodsName;

  /// categorySubId
  String categorySubId;

  /// 数量 代替count
  int amount;

  /// 价格
  double price;

  /// 图片地址
  String images;

  /// 是否选择
  bool isCheck;

  /// isHot
  bool isHot;

  /// advertiseId
  int advertiseId;

  /// presentPrice
  double presentPrice;

  /// image
  String image;

  /// image1
  String image1;

  /// image2
  String image2;

  /// image3
  String image3;

  /// image4
  String image4;

  /// image5
  String image5;

  /// isOnLine
  String isOnLine;

  /// goodsSerialNumber
  String goodsSerialNumber;

  /// state
  int state;

  /// shopId
  String shopId;

  /// goodsDetail
  String goodsDetail;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// 商品ID s
  List<String> goodsIds;

  /// 商品名称Like
  String goodsNameLike;

  /// categorySubId s
  List<String> categorySubIds;

  /// 数量Min
  int amountMin;

  /// 数量Max
  int amountMax;

  /// 价格Min
  double priceMin;

  /// 价格Max
  double priceMax;

  /// 图片地址Like
  String imagesLike;

  /// advertiseId s
  List<int> advertiseIds;

  /// presentPriceMin
  double presentPriceMin;

  /// presentPriceMax
  double presentPriceMax;

  /// image1Like
  String image1Like;

  /// image2Like
  String image2Like;

  /// image3Like
  String image3Like;

  /// image4Like
  String image4Like;

  /// image5Like
  String image5Like;

  /// isOnLineLike
  String isOnLineLike;

  /// goodsSerialNumberLike
  String goodsSerialNumberLike;

  /// stateMin
  int stateMin;

  /// stateMax
  int stateMax;

  /// shopId s
  List<String> shopIds;

  /// goodsDetailLike
  String goodsDetailLike;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// name
  String name;

  /// count
  int count;

  /// oriPrice
  double oriPrice;

  /// mallPrice
  double mallPrice;

  /// comPic
  String comPic;

  Goods({
    this.goodComments,
    this.goodsId,
    this.goodsName,
    this.categorySubId,
    this.amount,
    this.price,
    this.images,
    this.isCheck,
    this.isHot,
    this.advertiseId,
    this.presentPrice,
    this.image,
    this.image1,
    this.image2,
    this.image3,
    this.image4,
    this.image5,
    this.isOnLine,
    this.goodsSerialNumber,
    this.state,
    this.shopId,
    this.goodsDetail,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.goodsIds,
    this.goodsNameLike,
    this.categorySubIds,
    this.amountMin,
    this.amountMax,
    this.priceMin,
    this.priceMax,
    this.imagesLike,
    this.advertiseIds,
    this.presentPriceMin,
    this.presentPriceMax,
    this.image1Like,
    this.image2Like,
    this.image3Like,
    this.image4Like,
    this.image5Like,
    this.isOnLineLike,
    this.goodsSerialNumberLike,
    this.stateMin,
    this.stateMax,
    this.shopIds,
    this.goodsDetailLike,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
    this.name,
    this.count,
    this.oriPrice,
    this.mallPrice,
    this.comPic,
  });

  static Goods fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Goods(
      goodComments: GoodsComment.fromJsonList(json['goodComments']),
      goodsId: JsonUtil.parseString(json['goodsId']),
      goodsName: JsonUtil.parseString(json['goodsName']),
      categorySubId: JsonUtil.parseString(json['categorySubId']),
      amount: JsonUtil.parseInt(json['amount']),
      price: JsonUtil.parseDouble(json['price']),
      images: JsonUtil.parseString(json['images']),
      isCheck: JsonUtil.parseBool(json['isCheck']),
      isHot: JsonUtil.parseBool(json['isHot']),
      advertiseId: JsonUtil.parseInt(json['advertiseId']),
      presentPrice: JsonUtil.parseDouble(json['presentPrice']),
      image: JsonUtil.parseString(json['image']),
      image1: JsonUtil.parseString(json['image1']),
      image2: JsonUtil.parseString(json['image2']),
      image3: JsonUtil.parseString(json['image3']),
      image4: JsonUtil.parseString(json['image4']),
      image5: JsonUtil.parseString(json['image5']),
      isOnLine: JsonUtil.parseString(json['isOnLine']),
      goodsSerialNumber: JsonUtil.parseString(json['goodsSerialNumber']),
      state: JsonUtil.parseInt(json['state']),
      shopId: JsonUtil.parseString(json['shopId']),
      goodsDetail: JsonUtil.parseString(json['goodsDetail']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      goodsIds: JsonUtil.parseList<String>(json['goodsIds'], JsonUtil.parseString),
      goodsNameLike: JsonUtil.parseString(json['goodsNameLike']),
      categorySubIds: JsonUtil.parseList<String>(json['categorySubIds'], JsonUtil.parseString),
      amountMin: JsonUtil.parseInt(json['amountMin']),
      amountMax: JsonUtil.parseInt(json['amountMax']),
      priceMin: JsonUtil.parseDouble(json['priceMin']),
      priceMax: JsonUtil.parseDouble(json['priceMax']),
      imagesLike: JsonUtil.parseString(json['imagesLike']),
      advertiseIds: JsonUtil.parseList<int>(json['advertiseIds'], JsonUtil.parseInt),
      presentPriceMin: JsonUtil.parseDouble(json['presentPriceMin']),
      presentPriceMax: JsonUtil.parseDouble(json['presentPriceMax']),
      image1Like: JsonUtil.parseString(json['image1Like']),
      image2Like: JsonUtil.parseString(json['image2Like']),
      image3Like: JsonUtil.parseString(json['image3Like']),
      image4Like: JsonUtil.parseString(json['image4Like']),
      image5Like: JsonUtil.parseString(json['image5Like']),
      isOnLineLike: JsonUtil.parseString(json['isOnLineLike']),
      goodsSerialNumberLike: JsonUtil.parseString(json['goodsSerialNumberLike']),
      stateMin: JsonUtil.parseInt(json['stateMin']),
      stateMax: JsonUtil.parseInt(json['stateMax']),
      shopIds: JsonUtil.parseList<String>(json['shopIds'], JsonUtil.parseString),
      goodsDetailLike: JsonUtil.parseString(json['goodsDetailLike']),
      createTimeMin: JsonUtil.parseDateTime(json['createTimeMin']),
      createTimeMax: JsonUtil.parseDateTime(json['createTimeMax']),
      updateTimeMin: JsonUtil.parseDateTime(json['updateTimeMin']),
      updateTimeMax: JsonUtil.parseDateTime(json['updateTimeMax']),
      name: JsonUtil.parseString(json['name']),
      count: JsonUtil.parseInt(json['count']),
      oriPrice: JsonUtil.parseDouble(json['oriPrice']),
      mallPrice: JsonUtil.parseDouble(json['mallPrice']),
      comPic: JsonUtil.parseString(json['comPic']),
    );
  }

  static List<Goods> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Goods.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.goodComments != null) {
      var list = List();
      for (var v in goodComments) {
        list.add(v.toMap());
      }
      result['goodComments'] = list;
    }
    if (this.goodsId != null) {
      result['goodsId'] = JsonUtil.stringToJson(goodsId);
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
    if (this.image != null) {
      result['image'] = JsonUtil.stringToJson(image);
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
    if (this.createTime != null) {
      result['createTime'] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.updateTime != null) {
      result['updateTime'] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.deleteFlag != null) {
      result['deleteFlag'] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.goodsIds != null) {
      var list = List();
      for (var v in goodsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['goodsIds'] = list;
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

  static Map<String, Goods> toIdMap(List<Goods> goodsList) {
    var result = Map<String, Goods>();
    if (goodsList != null) {
      for (var goods in goodsList) {
        if (goods != null) {
          result[goods.goodsId] = goods;
        }
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<Goods> goodsList) {
    var result = List<Map<String, dynamic>>();
    if (goodsList != null) {
      for (var goods in goodsList) {
        if (goods != null) {
          result.add(goods.toMap());
        }
      }
    }
    return result;
  }

}

