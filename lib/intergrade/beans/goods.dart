///  Do not remove this unless you get business authorization.
///  Goods
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/goodscomment.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class Goods with FrontBean {
  /// goodsId
  static const String Goods_ID = 'goodsId';

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
      advertiseId: JsonUtil.parseInt(json['advertiseId']),
      amount: JsonUtil.parseInt(json['amount']),
      categorySubId: JsonUtil.parseString(json['categorySubId']),
      comPic: JsonUtil.parseString(json['comPic']),
      count: JsonUtil.parseInt(json['count']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
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
      oriPrice: JsonUtil.parseDouble(json['oriPrice']),
      presentPrice: JsonUtil.parseDouble(json['presentPrice']),
      price: JsonUtil.parseDouble(json['price']),
      shopId: JsonUtil.parseString(json['shopId']),
      state: JsonUtil.parseInt(json['state']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
    );
  }

  static List<Goods> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Goods.fromJson);
  }

  Map<String, dynamic> toMap() {
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
    if (this.goodComments != null) {
      var list = List();
      for (var v in goodComments) {
        list.add(v.toMap());
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

