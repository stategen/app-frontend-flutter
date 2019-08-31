///  Do not remove this unless you get business authorization.
///  Slide
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class Slide with FrontBean {
  /// slideId
  static const String Slide_ID = 'slideId';

  /// slideId
  String slideId;

  /// goodsId
  String goodsId;

  /// image
  String image;

  /// urlType
  int urlType;

  /// orderNo
  int orderNo;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// slideId s
  List<String> slideIds;

  /// goodsId s
  List<String> goodsIds;

  /// urlType s
  List<int> urlTypes;

  /// orderNoMin
  int orderNoMin;

  /// orderNoMax
  int orderNoMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 更新时间Max
  DateTime updateTimeMax;

  Slide({
    this.slideId,
    this.goodsId,
    this.image,
    this.urlType,
    this.orderNo,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.slideIds,
    this.goodsIds,
    this.urlTypes,
    this.orderNoMin,
    this.orderNoMax,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
  });

  static Slide fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Slide(
      slideId: JsonUtil.parseString(json['slideId']),
      goodsId: JsonUtil.parseString(json['goodsId']),
      image: JsonUtil.parseString(json['image']),
      urlType: JsonUtil.parseInt(json['urlType']),
      orderNo: JsonUtil.parseInt(json['orderNo']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      slideIds: JsonUtil.parseList<String>(json['slideIds'], JsonUtil.parseString),
      goodsIds: JsonUtil.parseList<String>(json['goodsIds'], JsonUtil.parseString),
      urlTypes: JsonUtil.parseList<int>(json['urlTypes'], JsonUtil.parseInt),
      orderNoMin: JsonUtil.parseInt(json['orderNoMin']),
      orderNoMax: JsonUtil.parseInt(json['orderNoMax']),
      createTimeMin: JsonUtil.parseDateTime(json['createTimeMin']),
      createTimeMax: JsonUtil.parseDateTime(json['createTimeMax']),
      updateTimeMin: JsonUtil.parseDateTime(json['updateTimeMin']),
      updateTimeMax: JsonUtil.parseDateTime(json['updateTimeMax']),
    );
  }

  static List<Slide> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Slide.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.slideId != null) {
      result['slideId'] = JsonUtil.stringToJson(slideId);
    }
    if (this.goodsId != null) {
      result['goodsId'] = JsonUtil.stringToJson(goodsId);
    }
    if (this.image != null) {
      result['image'] = JsonUtil.stringToJson(image);
    }
    if (this.urlType != null) {
      result['urlType'] = JsonUtil.intToJson(urlType);
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
    if (this.slideIds != null) {
      var list = List();
      for (var v in slideIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['slideIds'] = list;
    }
    if (this.goodsIds != null) {
      var list = List();
      for (var v in goodsIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['goodsIds'] = list;
    }
    if (this.urlTypes != null) {
      var list = List();
      for (var v in urlTypes) {
        list.add(JsonUtil.intToJson(v));
      }
      result['urlTypes'] = list;
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

  static List<Map<String, dynamic>> toMaps(List<Slide> slideList) {
    var result = List<Map<String, dynamic>>();
    if (slideList != null) {
      for (var slide in slideList) {
        if (slide != null) {
          result.add(slide.toMap());
        }
      }
    }
    return result;
  }

}

