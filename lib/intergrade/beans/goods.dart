///  Do not remove this unless you get business authorization.
///  Goods
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/goodscomment.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class GoodsFields {
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

class Goods with FrontBean {
  /// goodsId
  static const String ID = GoodsFields.goodsId;

  /// advertiseId
  int advertiseId;

  /// advertiseId s
  List<int> advertiseIds;

  /// 数量 代替count
  int amount;

  /// 数量Max
  int amountMax;

  /// 数量Min
  int amountMin;

  /// categorySubId
  String categorySubId;

  /// categorySubIdLike
  String categorySubIdLike;

  /// categorySubId s
  List<String> categorySubIds;

  /// comPic
  String comPic;

  /// count
  int count;

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// goodComments
  List<GoodsComment> goodComments;

  /// goodsDetail
  String goodsDetail;

  /// goodsDetailLike
  String goodsDetailLike;

  /// 商品ID
  String goodsId;

  /// 商品ID s
  List<String> goodsIds;

  /// 商品名称
  String goodsName;

  /// 商品名称Like
  String goodsNameLike;

  /// goodsSerialNumber
  String goodsSerialNumber;

  /// goodsSerialNumberLike
  String goodsSerialNumberLike;

  /// image
  String image;

  /// image1
  String image1;

  /// image1Like
  String image1Like;

  /// image2
  String image2;

  /// image2Like
  String image2Like;

  /// image3
  String image3;

  /// image3Like
  String image3Like;

  /// image4
  String image4;

  /// image4Like
  String image4Like;

  /// image5
  String image5;

  /// image5Like
  String image5Like;

  /// 图片地址
  String images;

  /// 图片地址Like
  String imagesLike;

  /// 是否选择
  bool isCheck;

  /// isHot
  bool isHot;

  /// isOnLine
  String isOnLine;

  /// isOnLineLike
  String isOnLineLike;

  /// mallPrice
  double mallPrice;

  /// name
  String name;

  /// oriPrice
  double oriPrice;

  /// presentPrice
  double presentPrice;

  /// presentPriceMax
  double presentPriceMax;

  /// presentPriceMin
  double presentPriceMin;

  /// 价格
  double price;

  /// 价格Max
  double priceMax;

  /// 价格Min
  double priceMin;

  /// shopId
  String shopId;

  /// shopId s
  List<String> shopIds;

  /// state
  int state;

  /// stateMax
  int stateMax;

  /// stateMin
  int stateMin;

  /// 更新时间
  DateTime updateTime;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  Goods({
    this.advertiseId,
    this.advertiseIds,
    this.amount,
    this.amountMax,
    this.amountMin,
    this.categorySubId,
    this.categorySubIdLike,
    this.categorySubIds,
    this.comPic,
    this.count,
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.goodComments,
    this.goodsDetail,
    this.goodsDetailLike,
    this.goodsId,
    this.goodsIds,
    this.goodsName,
    this.goodsNameLike,
    this.goodsSerialNumber,
    this.goodsSerialNumberLike,
    this.image,
    this.image1,
    this.image1Like,
    this.image2,
    this.image2Like,
    this.image3,
    this.image3Like,
    this.image4,
    this.image4Like,
    this.image5,
    this.image5Like,
    this.images,
    this.imagesLike,
    this.isCheck,
    this.isHot,
    this.isOnLine,
    this.isOnLineLike,
    this.mallPrice,
    this.name,
    this.oriPrice,
    this.presentPrice,
    this.presentPriceMax,
    this.presentPriceMin,
    this.price,
    this.priceMax,
    this.priceMin,
    this.shopId,
    this.shopIds,
    this.state,
    this.stateMax,
    this.stateMin,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
  });

  static Goods fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Goods(
      advertiseId: JsonUtil.parseInt(json[GoodsFields.advertiseId]),
      amount: JsonUtil.parseInt(json[GoodsFields.amount]),
      categorySubId: JsonUtil.parseString(json[GoodsFields.categorySubId]),
      comPic: JsonUtil.parseString(json[GoodsFields.comPic]),
      count: JsonUtil.parseInt(json[GoodsFields.count]),
      createTime: JsonUtil.parseDateTime(json[GoodsFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[GoodsFields.deleteFlag]),
      goodComments: GoodsComment.fromJsonList(json[GoodsFields.goodComments]),
      goodsDetail: JsonUtil.parseString(json[GoodsFields.goodsDetail]),
      goodsId: JsonUtil.parseString(json[GoodsFields.goodsId]),
      goodsName: JsonUtil.parseString(json[GoodsFields.goodsName]),
      goodsSerialNumber: JsonUtil.parseString(json[GoodsFields.goodsSerialNumber]),
      image: JsonUtil.parseString(json[GoodsFields.image]),
      image1: JsonUtil.parseString(json[GoodsFields.image1]),
      image2: JsonUtil.parseString(json[GoodsFields.image2]),
      image3: JsonUtil.parseString(json[GoodsFields.image3]),
      image4: JsonUtil.parseString(json[GoodsFields.image4]),
      image5: JsonUtil.parseString(json[GoodsFields.image5]),
      images: JsonUtil.parseString(json[GoodsFields.images]),
      isCheck: JsonUtil.parseBool(json[GoodsFields.isCheck]),
      isHot: JsonUtil.parseBool(json[GoodsFields.isHot]),
      isOnLine: JsonUtil.parseString(json[GoodsFields.isOnLine]),
      mallPrice: JsonUtil.parseDouble(json[GoodsFields.mallPrice]),
      name: JsonUtil.parseString(json[GoodsFields.name]),
      oriPrice: JsonUtil.parseDouble(json[GoodsFields.oriPrice]),
      presentPrice: JsonUtil.parseDouble(json[GoodsFields.presentPrice]),
      price: JsonUtil.parseDouble(json[GoodsFields.price]),
      shopId: JsonUtil.parseString(json[GoodsFields.shopId]),
      state: JsonUtil.parseInt(json[GoodsFields.state]),
      updateTime: JsonUtil.parseDateTime(json[GoodsFields.updateTime]),
    );
  }

  static List<Goods> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Goods.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.advertiseId != null) {
      result[GoodsFields.advertiseId] = JsonUtil.intToJson(advertiseId);
    }
    if (this.advertiseIds != null) {
      var list = List();
      for (var v in advertiseIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result[GoodsFields.advertiseIds] = list;
    }
    if (this.amount != null) {
      result[GoodsFields.amount] = JsonUtil.intToJson(amount);
    }
    if (this.amountMax != null) {
      result[GoodsFields.amountMax] = JsonUtil.intToJson(amountMax);
    }
    if (this.amountMin != null) {
      result[GoodsFields.amountMin] = JsonUtil.intToJson(amountMin);
    }
    if (this.categorySubId != null) {
      result[GoodsFields.categorySubId] = JsonUtil.stringToJson(categorySubId);
    }
    if (this.categorySubIdLike != null) {
      result[GoodsFields.categorySubIdLike] = JsonUtil.stringToJson(categorySubIdLike);
    }
    if (this.categorySubIds != null) {
      var list = List();
      for (var v in categorySubIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[GoodsFields.categorySubIds] = list;
    }
    if (this.comPic != null) {
      result[GoodsFields.comPic] = JsonUtil.stringToJson(comPic);
    }
    if (this.count != null) {
      result[GoodsFields.count] = JsonUtil.intToJson(count);
    }
    if (this.createTime != null) {
      result[GoodsFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[GoodsFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[GoodsFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[GoodsFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.goodComments != null) {
      var list = List();
      for (var v in goodComments) {
        list.add(v.toJson());
      }
      result[GoodsFields.goodComments] = list;
    }
    if (this.goodsDetail != null) {
      result[GoodsFields.goodsDetail] = JsonUtil.stringToJson(goodsDetail);
    }
    if (this.goodsDetailLike != null) {
      result[GoodsFields.goodsDetailLike] = JsonUtil.stringToJson(goodsDetailLike);
    }
    if (this.goodsId != null) {
      result[GoodsFields.goodsId] = JsonUtil.stringToJson(goodsId);
    }
    if (this.goodsIds != null) {
      var list = List();
      for (var v in goodsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[GoodsFields.goodsIds] = list;
    }
    if (this.goodsName != null) {
      result[GoodsFields.goodsName] = JsonUtil.stringToJson(goodsName);
    }
    if (this.goodsNameLike != null) {
      result[GoodsFields.goodsNameLike] = JsonUtil.stringToJson(goodsNameLike);
    }
    if (this.goodsSerialNumber != null) {
      result[GoodsFields.goodsSerialNumber] = JsonUtil.stringToJson(goodsSerialNumber);
    }
    if (this.goodsSerialNumberLike != null) {
      result[GoodsFields.goodsSerialNumberLike] = JsonUtil.stringToJson(goodsSerialNumberLike);
    }
    if (this.image != null) {
      result[GoodsFields.image] = JsonUtil.stringToJson(image);
    }
    if (this.image1 != null) {
      result[GoodsFields.image1] = JsonUtil.stringToJson(image1);
    }
    if (this.image1Like != null) {
      result[GoodsFields.image1Like] = JsonUtil.stringToJson(image1Like);
    }
    if (this.image2 != null) {
      result[GoodsFields.image2] = JsonUtil.stringToJson(image2);
    }
    if (this.image2Like != null) {
      result[GoodsFields.image2Like] = JsonUtil.stringToJson(image2Like);
    }
    if (this.image3 != null) {
      result[GoodsFields.image3] = JsonUtil.stringToJson(image3);
    }
    if (this.image3Like != null) {
      result[GoodsFields.image3Like] = JsonUtil.stringToJson(image3Like);
    }
    if (this.image4 != null) {
      result[GoodsFields.image4] = JsonUtil.stringToJson(image4);
    }
    if (this.image4Like != null) {
      result[GoodsFields.image4Like] = JsonUtil.stringToJson(image4Like);
    }
    if (this.image5 != null) {
      result[GoodsFields.image5] = JsonUtil.stringToJson(image5);
    }
    if (this.image5Like != null) {
      result[GoodsFields.image5Like] = JsonUtil.stringToJson(image5Like);
    }
    if (this.images != null) {
      result[GoodsFields.images] = JsonUtil.stringToJson(images);
    }
    if (this.imagesLike != null) {
      result[GoodsFields.imagesLike] = JsonUtil.stringToJson(imagesLike);
    }
    if (this.isCheck != null) {
      result[GoodsFields.isCheck] = JsonUtil.boolToJson(isCheck);
    }
    if (this.isHot != null) {
      result[GoodsFields.isHot] = JsonUtil.boolToJson(isHot);
    }
    if (this.isOnLine != null) {
      result[GoodsFields.isOnLine] = JsonUtil.stringToJson(isOnLine);
    }
    if (this.isOnLineLike != null) {
      result[GoodsFields.isOnLineLike] = JsonUtil.stringToJson(isOnLineLike);
    }
    if (this.mallPrice != null) {
      result[GoodsFields.mallPrice] = JsonUtil.doubleToJson(mallPrice);
    }
    if (this.name != null) {
      result[GoodsFields.name] = JsonUtil.stringToJson(name);
    }
    if (this.oriPrice != null) {
      result[GoodsFields.oriPrice] = JsonUtil.doubleToJson(oriPrice);
    }
    if (this.presentPrice != null) {
      result[GoodsFields.presentPrice] = JsonUtil.doubleToJson(presentPrice);
    }
    if (this.presentPriceMax != null) {
      result[GoodsFields.presentPriceMax] = JsonUtil.doubleToJson(presentPriceMax);
    }
    if (this.presentPriceMin != null) {
      result[GoodsFields.presentPriceMin] = JsonUtil.doubleToJson(presentPriceMin);
    }
    if (this.price != null) {
      result[GoodsFields.price] = JsonUtil.doubleToJson(price);
    }
    if (this.priceMax != null) {
      result[GoodsFields.priceMax] = JsonUtil.doubleToJson(priceMax);
    }
    if (this.priceMin != null) {
      result[GoodsFields.priceMin] = JsonUtil.doubleToJson(priceMin);
    }
    if (this.shopId != null) {
      result[GoodsFields.shopId] = JsonUtil.stringToJson(shopId);
    }
    if (this.shopIds != null) {
      var list = List();
      for (var v in shopIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[GoodsFields.shopIds] = list;
    }
    if (this.state != null) {
      result[GoodsFields.state] = JsonUtil.intToJson(state);
    }
    if (this.stateMax != null) {
      result[GoodsFields.stateMax] = JsonUtil.intToJson(stateMax);
    }
    if (this.stateMin != null) {
      result[GoodsFields.stateMin] = JsonUtil.intToJson(stateMin);
    }
    if (this.updateTime != null) {
      result[GoodsFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[GoodsFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[GoodsFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
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

}

