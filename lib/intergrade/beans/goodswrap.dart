///  Do not remove this unless you get business authorization.
///  GoodsWrap
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/advertisepicture.dart';
import '../beans/goods.dart';
import '../beans/goodscomment.dart';
import '../../stgutil/json_util.dart';

class GoodsWrap {
  /// goodInfo
  Goods goodInfo;

  /// goodComments
  List<GoodsComment> goodComments;

  /// advertesPicture
  AdvertisePicture advertesPicture;

  GoodsWrap({
    this.goodInfo,
    this.goodComments,
    this.advertesPicture,
  });

  static GoodsWrap fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return GoodsWrap(
      goodInfo: Goods.fromJson(json['goodInfo']),
      goodComments: GoodsComment.fromJsonList(json['goodComments']),
      advertesPicture: AdvertisePicture.fromJson(json['advertesPicture']),
    );
  }

  static List<GoodsWrap> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, GoodsWrap.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.goodInfo != null) {
      result['goodInfo'] = goodInfo.toMap();
    }
    if (this.goodComments != null) {
      var list = List();
      for (var v in goodComments) {
        list.add(v.toMap());
      }
      result['goodComments'] = list;
    }
    if (this.advertesPicture != null) {
      result['advertesPicture'] = advertesPicture.toMap();
    }
    return result;
  }

  static Map<int, GoodsWrap> toIdMap(List<GoodsWrap> goodsWrapList) {
    var result = Map<int, GoodsWrap>();
    if (goodsWrapList != null) {
      int index = 0;
      for (var goodsWrap in goodsWrapList) {
        result[index] = goodsWrap;
        index ++;
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<GoodsWrap> goodsWrapList) {
    var result = List<Map<String, dynamic>>();
    if (goodsWrapList != null) {
      for (var goodsWrap in goodsWrapList) {
        if (goodsWrap != null) {
          result.add(goodsWrap.toMap());
        }
      }
    }
    return result;
  }

}

