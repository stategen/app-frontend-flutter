///  Do not remove this unless you get business authorization.
///  MultipartFile
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';

class MultipartFile {

  static MultipartFile fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return MultipartFile(
    );
  }

  static List<MultipartFile> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, MultipartFile.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
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

  static List<Map<String, dynamic>> toMaps(List<MultipartFile> multipartFileList) {
    var result = List<Map<String, dynamic>>();
    if (multipartFileList != null) {
      for (var multipartFile in multipartFileList) {
        if (multipartFile != null) {
          result.add(multipartFile.toMap());
        }
      }
    }
    return result;
  }

}

