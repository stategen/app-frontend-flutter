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

class HomeWrapFields {
  static const advertesPicture = 'advertesPicture';
  static const category = 'category';
  static const floors = 'floors';
  static const recommend = 'recommend';
  static const shopInfo = 'shopInfo';
  static const slides = 'slides';
}

class HomeWrap with FrontBean {
  /// advertesPicture
  HomeAdvertise advertesPicture;

  /// category
  List<Category> category;

  /// floors
  List<Floor> floors;

  /// recommend
  List<HomeGoods> recommend;

  /// shopInfo
  HomeShop shopInfo;

  /// slides
  List<Slide> slides;

  HomeWrap({
    this.advertesPicture,
    this.category,
    this.floors,
    this.recommend,
    this.shopInfo,
    this.slides,
  });

  static HomeWrap fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return HomeWrap(
      advertesPicture: HomeAdvertise.fromJson(json[HomeWrapFields.advertesPicture]),
      category: Category.fromJsonList(json[HomeWrapFields.category]),
      floors: Floor.fromJsonList(json[HomeWrapFields.floors]),
      recommend: HomeGoods.fromJsonList(json[HomeWrapFields.recommend]),
      shopInfo: HomeShop.fromJson(json[HomeWrapFields.shopInfo]),
      slides: Slide.fromJsonList(json[HomeWrapFields.slides]),
    );
  }

  static List<HomeWrap> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, HomeWrap.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.advertesPicture != null) {
      result[HomeWrapFields.advertesPicture] = advertesPicture.toJson();
    }
    if (this.category != null) {
      var list = List();
      for (var v in category) {
        list.add(v.toJson());
      }
      result[HomeWrapFields.category] = list;
    }
    if (this.floors != null) {
      var list = List();
      for (var v in floors) {
        list.add(v.toJson());
      }
      result[HomeWrapFields.floors] = list;
    }
    if (this.recommend != null) {
      var list = List();
      for (var v in recommend) {
        list.add(v.toJson());
      }
      result[HomeWrapFields.recommend] = list;
    }
    if (this.shopInfo != null) {
      result[HomeWrapFields.shopInfo] = shopInfo.toJson();
    }
    if (this.slides != null) {
      var list = List();
      for (var v in slides) {
        list.add(v.toJson());
      }
      result[HomeWrapFields.slides] = list;
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

}

