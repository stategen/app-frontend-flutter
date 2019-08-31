///  Do not remove this unless you get business authorization.
///  HomeWrap
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/category.dart';
import '../beans/flooradvertisepricture.dart';
import '../beans/floorgoods.dart';
import '../beans/floornames.dart';
import '../beans/homeadvertise.dart';
import '../beans/homegoods.dart';
import '../beans/homeshop.dart';
import '../beans/slide.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class HomeWrap with FrontBean {
  /// slides
  List<Slide> slides;

  /// shopInfo
  HomeShop shopInfo;

  /// recommend
  List<HomeGoods> recommend;

  /// advertesPicture
  HomeAdvertise advertesPicture;

  /// floor1
  List<FloorGoods> floor1;

  /// floor2
  List<FloorGoods> floor2;

  /// floor3
  List<FloorGoods> floor3;

  /// floor1Pic
  FloorAdvertisePricture floor1Pic;

  /// floor2Pic
  FloorAdvertisePricture floor2Pic;

  /// floor3Pic
  FloorAdvertisePricture floor3Pic;

  /// floorName
  FloorNames floorName;

  /// category
  List<Category> category;

  HomeWrap({
    this.slides,
    this.shopInfo,
    this.recommend,
    this.advertesPicture,
    this.floor1,
    this.floor2,
    this.floor3,
    this.floor1Pic,
    this.floor2Pic,
    this.floor3Pic,
    this.floorName,
    this.category,
  });

  static HomeWrap fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return HomeWrap(
      slides: Slide.fromJsonList(json['slides']),
      shopInfo: HomeShop.fromJson(json['shopInfo']),
      recommend: HomeGoods.fromJsonList(json['recommend']),
      advertesPicture: HomeAdvertise.fromJson(json['advertesPicture']),
      floor1: FloorGoods.fromJsonList(json['floor1']),
      floor2: FloorGoods.fromJsonList(json['floor2']),
      floor3: FloorGoods.fromJsonList(json['floor3']),
      floor1Pic: FloorAdvertisePricture.fromJson(json['floor1Pic']),
      floor2Pic: FloorAdvertisePricture.fromJson(json['floor2Pic']),
      floor3Pic: FloorAdvertisePricture.fromJson(json['floor3Pic']),
      floorName: FloorNames.fromJson(json['floorName']),
      category: Category.fromJsonList(json['category']),
    );
  }

  static List<HomeWrap> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, HomeWrap.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.slides != null) {
      var list = List();
      for (var v in slides) {
        list.add(v.toMap());
      }
      result['slides'] = list;
    }
    if (this.shopInfo != null) {
      result['shopInfo'] = shopInfo.toMap();
    }
    if (this.recommend != null) {
      var list = List();
      for (var v in recommend) {
        list.add(v.toMap());
      }
      result['recommend'] = list;
    }
    if (this.advertesPicture != null) {
      result['advertesPicture'] = advertesPicture.toMap();
    }
    if (this.floor1 != null) {
      var list = List();
      for (var v in floor1) {
        list.add(v.toMap());
      }
      result['floor1'] = list;
    }
    if (this.floor2 != null) {
      var list = List();
      for (var v in floor2) {
        list.add(v.toMap());
      }
      result['floor2'] = list;
    }
    if (this.floor3 != null) {
      var list = List();
      for (var v in floor3) {
        list.add(v.toMap());
      }
      result['floor3'] = list;
    }
    if (this.floor1Pic != null) {
      result['floor1Pic'] = floor1Pic.toMap();
    }
    if (this.floor2Pic != null) {
      result['floor2Pic'] = floor2Pic.toMap();
    }
    if (this.floor3Pic != null) {
      result['floor3Pic'] = floor3Pic.toMap();
    }
    if (this.floorName != null) {
      result['floorName'] = floorName.toMap();
    }
    if (this.category != null) {
      var list = List();
      for (var v in category) {
        list.add(v.toMap());
      }
      result['category'] = list;
    }
    return result;
  }

  static Map<int, HomeWrap> toIdMap(List<HomeWrap> homeWrapList) {
    var result = Map<int, HomeWrap>();
    if (homeWrapList != null) {
      int index = 0;
      for (var homeWrap in homeWrapList) {
        result[index] = homeWrap;
        index ++;
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<HomeWrap> homeWrapList) {
    var result = List<Map<String, dynamic>>();
    if (homeWrapList != null) {
      for (var homeWrap in homeWrapList) {
        if (homeWrap != null) {
          result.add(homeWrap.toMap());
        }
      }
    }
    return result;
  }

}

