///  Do not remove this unless you get business authorization.
///  AntdPageList
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/pagination.dart';
import '../../stgutil/json_util.dart';

class AntdPageList<E> {
  /// pagination
  Pagination pagination;

  /// list
  List<E> list;

  AntdPageList({
    this.pagination,
    this.list,
  });

  static AntdPageList fromJson(Map<String, dynamic> json, FromJsonListFn genericFromJsonListFn) {
    if (json == null) {
      return null;
    }
    return AntdPageList(
      pagination: Pagination.fromJson(json['pagination']),
      list: genericFromJsonListFn(json['list']),
    );
  }

  static List<AntdPageList> fromJsonList(List jsonList, FromJsonListFn genericFromJsonListFn) {
    List<AntdPageList> result;
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

