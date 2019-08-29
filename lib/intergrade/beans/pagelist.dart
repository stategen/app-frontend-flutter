///  Do not remove this unless you get business authorization.
///  PageList
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/pagination.dart';
import '../../stgutil/json_util.dart';

class PageList<E> {
  /// pageSize
  int pageSize;

  /// pageNum
  int pageNum;

  /// totalCount
  int totalCount;

  /// totalPages
  int totalPages;

  /// items
  List<E> items;

  /// pagination
  Pagination pagination;

  PageList({
    this.pageSize,
    this.pageNum,
    this.totalCount,
    this.totalPages,
    this.items,
    this.pagination,
  });

  static PageList fromJson(Map<String, dynamic> json, FromJsonListFn genericFromJsonListFn) {
    if (json == null) {
      return null;
    }
    return PageList(
      pageSize: JsonUtil.parseInt(json['pageSize']),
      pageNum: JsonUtil.parseInt(json['pageNum']),
      totalCount: JsonUtil.parseInt(json['totalCount']),
      totalPages: JsonUtil.parseInt(json['totalPages']),
      items: genericFromJsonListFn(json['items']),
      pagination: Pagination.fromJson(json['pagination']),
    );
  }

  static List<PageList> fromJsonList(List jsonList, FromJsonListFn genericFromJsonListFn) {
    List<PageList> result;
    if (jsonList != null){
      List<Map<String, dynamic>> jsonMapList;
      if (jsonList is List<Map<String, dynamic>>){
        jsonMapList = List<Map<String, dynamic>>.from(jsonList);
      } else {
        jsonMapList= jsonList;
      }
      result = List(jsonMapList.length);
      for (var json in jsonList) {
        result.add(PageList.fromJson(json, genericFromJsonListFn));
      }
    }
    return result;
  }

  static Map<int, PageList> toIdMap(List<PageList> pageListList) {
    var result = Map<int, PageList>();
    if (pageListList != null) {
      int index = 0;
      for (var pageList in pageListList) {
        result[index] = pageList;
        index ++;
      }
    }
    return result;
  }

}

