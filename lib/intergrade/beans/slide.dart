///  Do not remove this unless you get business authorization.
///  Slide
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class Slide with FrontBean {
  /// slideId
  static const String Slide_ID = 'slideId';

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// goodsId
  String goodsId;

  /// goodsId s
  List<String> goodsIds;

  /// image
  String image;

  /// orderNo
  int orderNo;

  /// orderNoMax
  int orderNoMax;

  /// orderNoMin
  int orderNoMin;

  /// slideId
  String slideId;

  /// slideId s
  List<String> slideIds;

  /// 更新时间
  DateTime updateTime;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// urlType
  int urlType;

  /// urlType s
  List<int> urlTypes;

  Slide({
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.goodsId,
    this.goodsIds,
    this.image,
    this.orderNo,
    this.orderNoMax,
    this.orderNoMin,
    this.slideId,
    this.slideIds,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
    this.urlType,
    this.urlTypes,
  });

  static Slide fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Slide(
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      goodsId: JsonUtil.parseString(json['goodsId']),
      image: JsonUtil.parseString(json['image']),
      orderNo: JsonUtil.parseInt(json['orderNo']),
      slideId: JsonUtil.parseString(json['slideId']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      urlType: JsonUtil.parseInt(json['urlType']),
    );
  }

  static List<Slide> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Slide.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = new Map<String, dynamic>();
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
    if (this.image != null) {
      result['image'] = JsonUtil.stringToJson(image);
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
    if (this.slideId != null) {
      result['slideId'] = JsonUtil.stringToJson(slideId);
    }
    if (this.slideIds != null) {
      var list = List();
      for (var v in slideIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['slideIds'] = list;
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
    if (this.urlType != null) {
      result['urlType'] = JsonUtil.intToJson(urlType);
    }
    if (this.urlTypes != null) {
      var list = List();
      for (var v in urlTypes) {
        list.add(JsonUtil.intToJson(v));
      }
      result['urlTypes'] = list;
    }
    return result;
  }

  static Map<String, Slide> toIdMap(List<Slide> slideList) {
    var result = Map<String, Slide>();
    if (slideList != null) {
      for (var slide in slideList) {
        if (slide != null) {
          result[slide.slideId] = slide;
        }
      }
    }
    return result;
  }

}

