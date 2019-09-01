///  Do not remove this unless you get business authorization.
///  HomeWrap
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/category.dart';
import '../beans/floor.dart';
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

  /// floors
  List<Floor> floors;

  /// category
  List<Category> category;

  HomeWrap({
    this.slides,
    this.shopInfo,
    this.recommend,
    this.advertesPicture,
    this.floors,
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
      floors: Floor.fromJsonList(json['floors']),
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
    if (this.floors != null) {
      var list = List();
      for (var v in floors) {
        list.add(v.toMap());
      }
      result['floors'] = list;
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

