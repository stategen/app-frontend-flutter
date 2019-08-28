///  Do not remove this unless you get business authorization.
///  SimpleResponse
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';

class SimpleResponse {
  /// message
  String message;

  /// success
  bool success;

  SimpleResponse({
    this.message,
    this.success,
  });

  static SimpleResponse fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return SimpleResponse(
      message: JsonUtil.parseString(json['message']),
      success: JsonUtil.parseBool(json['success']),
    );
  }

  static List<SimpleResponse> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, SimpleResponse.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.message != null) {
      result['message'] = JsonUtil.stringToJson(message);
    }
    if (this.success != null) {
      result['success'] = JsonUtil.boolToJson(success);
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<SimpleResponse> simpleResponseList) {
    var result = List<Map<String, dynamic>>();
    if (simpleResponseList != null) {
      for (var simpleResponse in simpleResponseList) {
        if (simpleResponse != null) {
          result.add(simpleResponse.toMap());
        }
      }
    }
    return result;
  }

}

