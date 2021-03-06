///  Do not remove this unless you get business authorization.
///  AntdPageList
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/pagination.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class AntdPageListFields {
  static const list = 'list';
  static const pagination = 'pagination';
}

class AntdPageList<E> with FrontBean {
  /// list
  List<E> list;

  /// pagination
  Pagination pagination;

  AntdPageList({
    this.list,
    this.pagination,
  });

  static AntdPageList<E> fromJson<E>(Map<String, dynamic> json, FromJsonListFn<E> genericFromJsonListFn) {
    if (json == null) {
      return null;
    }
    return AntdPageList<E>(
      list: genericFromJsonListFn(List<Map<String,dynamic>>.from(json[AntdPageListFields.list])),
      pagination: Pagination.fromJson(json[AntdPageListFields.pagination]),
    );
  }

  static List<AntdPageList<E>> fromJsonList<E>(List jsonList, FromJsonListFn<E> genericFromJsonListFn) {
    List<AntdPageList<E>> result;
    if (jsonList != null){
      List<Map<String, dynamic>> jsonMapList;
      if (jsonList is List<Map<String, dynamic>>){
        jsonMapList = List<Map<String, dynamic>>.from(jsonList);
      } else {
        jsonMapList= jsonList;
      }
      result = List(jsonMapList.length);
      for (var json in jsonList) {
        result.add(AntdPageList.fromJson(json, genericFromJsonListFn));
      }
    }
    return result;
  }

  static Map<int, AntdPageList> toIdMap(List<AntdPageList> antdPageListList) {
    var result = Map<int, AntdPageList>();
    if (antdPageListList != null) {
      int index = 0;
      for (var antdPageList in antdPageListList) {
        result[index] = antdPageList;
        index ++;
      }
    }
    return result;
  }

}

