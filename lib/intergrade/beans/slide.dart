///  Do not remove this unless you get business authorization.
///  Slide
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class SlideFields {
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const goodsId = 'goodsId';
  static const goodsIds = 'goodsIds';
  static const image = 'image';
  static const orderNo = 'orderNo';
  static const orderNoMax = 'orderNoMax';
  static const orderNoMin = 'orderNoMin';
  static const orderNos = 'orderNos';
  static const slideId = 'slideId';
  static const slideIds = 'slideIds';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
  static const urlType = 'urlType';
  static const urlTypeMax = 'urlTypeMax';
  static const urlTypeMin = 'urlTypeMin';
  static const urlTypes = 'urlTypes';
}

class Slide with FrontBean {
  /// slideId
  static const String ID = SlideFields.slideId;

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

  /// orderNo s
  List<int> orderNos;

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

  /// urlTypeMax
  int urlTypeMax;

  /// urlTypeMin
  int urlTypeMin;

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
    this.orderNos,
    this.slideId,
    this.slideIds,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
    this.urlType,
    this.urlTypeMax,
    this.urlTypeMin,
    this.urlTypes,
  });

  static Slide fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Slide(
      createTime: JsonUtil.parseDateTime(json[SlideFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[SlideFields.deleteFlag]),
      goodsId: JsonUtil.parseString(json[SlideFields.goodsId]),
      image: JsonUtil.parseString(json[SlideFields.image]),
      orderNo: JsonUtil.parseInt(json[SlideFields.orderNo]),
      slideId: JsonUtil.parseString(json[SlideFields.slideId]),
      updateTime: JsonUtil.parseDateTime(json[SlideFields.updateTime]),
      urlType: JsonUtil.parseInt(json[SlideFields.urlType]),
    );
  }

  static List<Slide> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Slide.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.createTime != null) {
      result[SlideFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[SlideFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[SlideFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[SlideFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.goodsId != null) {
      result[SlideFields.goodsId] = JsonUtil.stringToJson(goodsId);
    }
    if (this.goodsIds != null) {
      var list = List();
      for (var v in goodsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[SlideFields.goodsIds] = list;
    }
    if (this.image != null) {
      result[SlideFields.image] = JsonUtil.stringToJson(image);
    }
    if (this.orderNo != null) {
      result[SlideFields.orderNo] = JsonUtil.intToJson(orderNo);
    }
    if (this.orderNoMax != null) {
      result[SlideFields.orderNoMax] = JsonUtil.intToJson(orderNoMax);
    }
    if (this.orderNoMin != null) {
      result[SlideFields.orderNoMin] = JsonUtil.intToJson(orderNoMin);
    }
    if (this.orderNos != null) {
      var list = List();
      for (var v in orderNos) {
        list.add(JsonUtil.intToJson(v));
      }
      result[SlideFields.orderNos] = list;
    }
    if (this.slideId != null) {
      result[SlideFields.slideId] = JsonUtil.stringToJson(slideId);
    }
    if (this.slideIds != null) {
      var list = List();
      for (var v in slideIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[SlideFields.slideIds] = list;
    }
    if (this.updateTime != null) {
      result[SlideFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[SlideFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[SlideFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.urlType != null) {
      result[SlideFields.urlType] = JsonUtil.intToJson(urlType);
    }
    if (this.urlTypeMax != null) {
      result[SlideFields.urlTypeMax] = JsonUtil.intToJson(urlTypeMax);
    }
    if (this.urlTypeMin != null) {
      result[SlideFields.urlTypeMin] = JsonUtil.intToJson(urlTypeMin);
    }
    if (this.urlTypes != null) {
      var list = List();
      for (var v in urlTypes) {
        list.add(JsonUtil.intToJson(v));
      }
      result[SlideFields.urlTypes] = list;
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

