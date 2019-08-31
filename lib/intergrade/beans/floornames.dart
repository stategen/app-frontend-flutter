///  Do not remove this unless you get business authorization.
///  FloorNames
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class FloorNames with FrontBean {
  /// floor1
  String floor1;

  /// floor2
  String floor2;

  /// floor3
  String floor3;

  FloorNames({
    this.floor1,
    this.floor2,
    this.floor3,
  });

  static FloorNames fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return FloorNames(
      floor1: JsonUtil.parseString(json['floor1']),
      floor2: JsonUtil.parseString(json['floor2']),
      floor3: JsonUtil.parseString(json['floor3']),
    );
  }

  static List<FloorNames> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, FloorNames.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.floor1 != null) {
      result['floor1'] = JsonUtil.stringToJson(floor1);
    }
    if (this.floor2 != null) {
      result['floor2'] = JsonUtil.stringToJson(floor2);
    }
    if (this.floor3 != null) {
      result['floor3'] = JsonUtil.stringToJson(floor3);
    }
    return result;
  }

  static Map<int, FloorNames> toIdMap(List<FloorNames> floorNamesList) {
    var result = Map<int, FloorNames>();
    if (floorNamesList != null) {
      int index = 0;
      for (var floorNames in floorNamesList) {
        result[index] = floorNames;
        index ++;
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<FloorNames> floorNamesList) {
    var result = List<Map<String, dynamic>>();
    if (floorNamesList != null) {
      for (var floorNames in floorNamesList) {
        if (floorNames != null) {
          result.add(floorNames.toMap());
        }
      }
    }
    return result;
  }

}

