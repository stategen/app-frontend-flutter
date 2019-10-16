///  Do not remove this unless you get business authorization.
///  Resource
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class Resource with FrontBean {

  static Resource fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Resource(
    );
  }

  static List<Resource> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Resource.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    return result;
  }

  static Map<int, Resource> toIdMap(List<Resource> resourceList) {
    var result = Map<int, Resource>();
    if (resourceList != null) {
      int index = 0;
      for (var resource in resourceList) {
        result[index] = resource;
        index ++;
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<Resource> resourceList) {
    var result = List<Map<String, dynamic>>();
    if (resourceList != null) {
      for (var resource in resourceList) {
        if (resource != null) {
          result.add(resource.toMap());
        }
      }
    }
    return result;
  }

}

