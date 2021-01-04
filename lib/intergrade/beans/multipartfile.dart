///  Do not remove this unless you get business authorization.
///  MultipartFile
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/resource.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class MultipartFileFields {
  static const resource = 'resource';
}

class MultipartFile with FrontBean {
  /// resource
  Resource resource;

  MultipartFile({
    this.resource,
  });

  static MultipartFile fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return MultipartFile(
      resource: Resource.fromJson(json[MultipartFileFields.resource]),
    );
  }

  static List<MultipartFile> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, MultipartFile.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.resource != null) {
      result[MultipartFileFields.resource] = resource.toJson();
    }
    return result;
  }

  static Map<int, MultipartFile> toIdMap(List<MultipartFile> multipartFileList) {
    var result = Map<int, MultipartFile>();
    if (multipartFileList != null) {
      int index = 0;
      for (var multipartFile in multipartFileList) {
        result[index] = multipartFile;
        index ++;
      }
    }
    return result;
  }

}

