///  Do not remove this unless you get business authorization.
///  Response
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../enums/responsestatus.dart';
import '../beans/simpleresponse.dart';
import '../../stgutil/json_util.dart';

class Response<T> extends SimpleResponse {
  /// code
  int code;

  /// exeptionClass
  String exeptionClass;

  /// data
  T data;

  /// status
  ResponseStatus status;

  Response({
    this.code,
    this.exeptionClass,
    this.data,
    this.status,
    message,
    success,
  }) : super(message: message, success: success);

  static Response fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Response(
      code: JsonUtil.parseInt(json['code']),
      exeptionClass: JsonUtil.parseString(json['exeptionClass']),
      data: json['data'],
      status: ResponseStatus.fromJson(json['status']),
      message: JsonUtil.parseString(json['message']),
      success: JsonUtil.parseBool(json['success']),
    );
  }

  static List<Response> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Response.fromJson);
  }

}

