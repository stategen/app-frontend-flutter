///  Do not remove this unless you get business authorization.
///  FileSummary
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class FileSummaryFields {
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const fileId = 'fileId';
  static const fileIds = 'fileIds';
  static const name = 'name';
  static const nameLike = 'nameLike';
  static const size = 'size';
  static const sizeMax = 'sizeMax';
  static const sizeMin = 'sizeMin';
  static const type = 'type';
  static const typeLike = 'typeLike';
  static const types = 'types';
  static const uid = 'uid';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
  static const url = 'url';
  static const userId = 'userId';
  static const userIds = 'userIds';
}

class FileSummary with FrontBean {
  /// fileId
  static const String ID = FileSummaryFields.fileId;

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 是否删除 (0:正常，1删除)
  int deleteFlag;

  /// fileId
  String fileId;

  /// fileId s
  List<String> fileIds;

  /// name
  String name;

  /// nameLike
  String nameLike;

  /// size
  int size;

  /// sizeMax
  int sizeMax;

  /// sizeMin
  int sizeMin;

  /// type
  String type;

  /// typeLike
  String typeLike;

  /// type s
  List<String> types;

  /// uid
  String uid;

  /// 更新时间
  DateTime updateTime;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// url
  String url;

  /// userId
  String userId;

  /// userId s
  List<String> userIds;

  FileSummary({
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.fileId,
    this.fileIds,
    this.name,
    this.nameLike,
    this.size,
    this.sizeMax,
    this.sizeMin,
    this.type,
    this.typeLike,
    this.types,
    this.uid,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
    this.url,
    this.userId,
    this.userIds,
  });

  static FileSummary fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return FileSummary(
      createTime: JsonUtil.parseDateTime(json[FileSummaryFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[FileSummaryFields.deleteFlag]),
      fileId: JsonUtil.parseString(json[FileSummaryFields.fileId]),
      name: JsonUtil.parseString(json[FileSummaryFields.name]),
      size: JsonUtil.parseInt(json[FileSummaryFields.size]),
      type: JsonUtil.parseString(json[FileSummaryFields.type]),
      uid: JsonUtil.parseString(json[FileSummaryFields.uid]),
      updateTime: JsonUtil.parseDateTime(json[FileSummaryFields.updateTime]),
      url: JsonUtil.parseString(json[FileSummaryFields.url]),
      userId: JsonUtil.parseString(json[FileSummaryFields.userId]),
    );
  }

  static List<FileSummary> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, FileSummary.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.createTime != null) {
      result[FileSummaryFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[FileSummaryFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[FileSummaryFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[FileSummaryFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.fileId != null) {
      result[FileSummaryFields.fileId] = JsonUtil.stringToJson(fileId);
    }
    if (this.fileIds != null) {
      var list = List();
      for (var v in fileIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[FileSummaryFields.fileIds] = list;
    }
    if (this.name != null) {
      result[FileSummaryFields.name] = JsonUtil.stringToJson(name);
    }
    if (this.nameLike != null) {
      result[FileSummaryFields.nameLike] = JsonUtil.stringToJson(nameLike);
    }
    if (this.size != null) {
      result[FileSummaryFields.size] = JsonUtil.intToJson(size);
    }
    if (this.sizeMax != null) {
      result[FileSummaryFields.sizeMax] = JsonUtil.intToJson(sizeMax);
    }
    if (this.sizeMin != null) {
      result[FileSummaryFields.sizeMin] = JsonUtil.intToJson(sizeMin);
    }
    if (this.type != null) {
      result[FileSummaryFields.type] = JsonUtil.stringToJson(type);
    }
    if (this.typeLike != null) {
      result[FileSummaryFields.typeLike] = JsonUtil.stringToJson(typeLike);
    }
    if (this.types != null) {
      var list = List();
      for (var v in types) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[FileSummaryFields.types] = list;
    }
    if (this.uid != null) {
      result[FileSummaryFields.uid] = JsonUtil.stringToJson(uid);
    }
    if (this.updateTime != null) {
      result[FileSummaryFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[FileSummaryFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[FileSummaryFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.url != null) {
      result[FileSummaryFields.url] = JsonUtil.stringToJson(url);
    }
    if (this.userId != null) {
      result[FileSummaryFields.userId] = JsonUtil.stringToJson(userId);
    }
    if (this.userIds != null) {
      var list = List();
      for (var v in userIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[FileSummaryFields.userIds] = list;
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

}

