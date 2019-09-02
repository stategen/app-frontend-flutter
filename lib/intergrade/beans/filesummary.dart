///  Do not remove this unless you get business authorization.
///  FileSummary
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class FileSummary with FrontBean {
  /// fileId
  static const String FileSummary_ID = 'fileId';

  /// fileId
  String fileId;

  /// url
  String url;

  /// size
  int size;

  /// name
  String name;

  /// type
  String type;

  /// userId
  String userId;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除 (0:正常，1删除)
  int deleteFlag;

  /// fileId s
  List<String> fileIds;

  /// sizeMin
  int sizeMin;

  /// sizeMax
  int sizeMax;

  /// nameLike
  String nameLike;

  /// type s
  List<String> types;

  /// userId s
  List<String> userIds;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// uid
  String uid;

  FileSummary({
    this.fileId,
    this.url,
    this.size,
    this.name,
    this.type,
    this.userId,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.fileIds,
    this.sizeMin,
    this.sizeMax,
    this.nameLike,
    this.types,
    this.userIds,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
    this.uid,
  });

  static FileSummary fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return FileSummary(
      fileId: JsonUtil.parseString(json['fileId']),
      url: JsonUtil.parseString(json['url']),
      size: JsonUtil.parseInt(json['size']),
      name: JsonUtil.parseString(json['name']),
      type: JsonUtil.parseString(json['type']),
      userId: JsonUtil.parseString(json['userId']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
    );
  }

  static List<FileSummary> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, FileSummary.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.fileId != null) {
      result['fileId'] = JsonUtil.stringToJson(fileId);
    }
    if (this.url != null) {
      result['url'] = JsonUtil.stringToJson(url);
    }
    if (this.size != null) {
      result['size'] = JsonUtil.intToJson(size);
    }
    if (this.name != null) {
      result['name'] = JsonUtil.stringToJson(name);
    }
    if (this.type != null) {
      result['type'] = JsonUtil.stringToJson(type);
    }
    if (this.userId != null) {
      result['userId'] = JsonUtil.stringToJson(userId);
    }
    if (this.createTime != null) {
      result['createTime'] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.updateTime != null) {
      result['updateTime'] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.deleteFlag != null) {
      result['deleteFlag'] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.fileIds != null) {
      var list = List();
      for (var v in fileIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['fileIds'] = list;
    }
    if (this.sizeMin != null) {
      result['sizeMin'] = JsonUtil.intToJson(sizeMin);
    }
    if (this.sizeMax != null) {
      result['sizeMax'] = JsonUtil.intToJson(sizeMax);
    }
    if (this.nameLike != null) {
      result['nameLike'] = JsonUtil.stringToJson(nameLike);
    }
    if (this.types != null) {
      var list = List();
      for (var v in types) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['types'] = list;
    }
    if (this.userIds != null) {
      var list = List();
      for (var v in userIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['userIds'] = list;
    }
    if (this.createTimeMin != null) {
      result['createTimeMin'] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.createTimeMax != null) {
      result['createTimeMax'] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.updateTimeMin != null) {
      result['updateTimeMin'] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.updateTimeMax != null) {
      result['updateTimeMax'] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.uid != null) {
      result['uid'] = JsonUtil.stringToJson(uid);
    }
    return result;
  }

  static Map<String, FileSummary> toIdMap(List<FileSummary> fileSummaryList) {
    var result = Map<String, FileSummary>();
    if (fileSummaryList != null) {
      for (var fileSummary in fileSummaryList) {
        if (fileSummary != null) {
          result[fileSummary.fileId] = fileSummary;
        }
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<FileSummary> fileSummaryList) {
    var result = List<Map<String, dynamic>>();
    if (fileSummaryList != null) {
      for (var fileSummary in fileSummaryList) {
        if (fileSummary != null) {
          result.add(fileSummary.toMap());
        }
      }
    }
    return result;
  }

}

