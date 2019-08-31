///  Do not remove this unless you get business authorization.
///  User
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/city.dart';
import '../beans/filesummary.dart';
import '../beans/hoppy.dart';
import '../beans/province.dart';
import '../beans/region.dart';
import '../enums/roletype.dart';
import '../enums/statusenum.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class User with FrontBean {
  /// userId
  static const String User_ID = 'userId';

  /// 用户可访问的节点
  List<int> visitsIds;

  /// province
  Province province;

  /// city
  City city;

  /// cascaderPostAddresss
  List<Region> cascaderPostAddresss;

  /// hoppys
  List<Hoppy> hoppys;

  /// 爱好 ids
  List<int> hoppyIds;

  /// 头像
  FileSummary avatarImg;

  /// 用户ID
  String userId;

  /// 用户名
  String username;

  /// 用户角色 ADMIN,DEFAULT,DEVELOPER
  RoleType roleType;

  /// 姓名
  String name;

  /// 别名
  String nickName;

  /// 国际区号
  String interCode;

  /// 手机号
  String mobile;

  /// 年龄
  int age;

  /// 详细地址
  String address;

  /// 头像 ID
  String avatarImgId;

  /// 邮箱
  String email;

  /// 认证时间
  DateTime valiDatetime;

  /// 出生日期
  DateTime birthdayDate;

  /// 工作时间
  DateTime workTime;

  /// 省份 ID
  String provinceId;

  /// 城市 ID
  String cityId;

  /// 状态 enum
  StatusEnum status;

  /// 级别
  int grade;

  /// 性别
  bool sex;

  /// 邮寄地址 ID
  int postAddressId;

  /// remark
  String remark;

  /// 创建时间
  DateTime createTime;

  /// 更新时间
  DateTime updateTime;

  /// 是否删除 (0:正常，1删除)
  int deleteFlag;

  /// 用户ID s
  List<String> userIds;

  /// 用户名Like
  String usernameLike;

  /// 密码Like
  String passwordLike;

  /// 用户角色 s
  List<RoleType> roleTypes;

  /// 用户名nameLike
  String nameLike;

  /// 别名Like
  String nickNameLike;

  /// 国际区号Like
  String interCodeLike;

  /// 手机号Like
  String mobileLike;

  /// 年龄Min
  int ageMin;

  /// 年龄Max
  int ageMax;

  /// 详细地址Like
  String addressLike;

  /// 头像 s
  List<String> avatarImgIds;

  /// 邮箱Like
  String emailLike;

  /// 认证时间Min
  DateTime valiDatetimeMin;

  /// 认证时间Max
  DateTime valiDatetimeMax;

  /// 出生日期Min
  DateTime birthdayDateMin;

  /// 出生日期Max
  DateTime birthdayDateMax;

  /// 工作时间Min
  DateTime workTimeMin;

  /// 工作时间Max
  DateTime workTimeMax;

  /// 省份 s
  List<String> provinceIds;

  /// 城市 s
  List<String> cityIds;

  /// 状态 s
  List<StatusEnum> statuss;

  /// 级别Min
  int gradeMin;

  /// 级别Max
  int gradeMax;

  /// 邮寄地址 s
  List<int> postAddressIds;

  /// remarkLike
  String remarkLike;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// 邮寄地址
  List<int> cascaderPostAddressIds;

  User({
    this.visitsIds,
    this.province,
    this.city,
    this.cascaderPostAddresss,
    this.hoppys,
    this.hoppyIds,
    this.avatarImg,
    this.userId,
    this.username,
    this.roleType,
    this.name,
    this.nickName,
    this.interCode,
    this.mobile,
    this.age,
    this.address,
    this.avatarImgId,
    this.email,
    this.valiDatetime,
    this.birthdayDate,
    this.workTime,
    this.provinceId,
    this.cityId,
    this.status,
    this.grade,
    this.sex,
    this.postAddressId,
    this.remark,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.userIds,
    this.usernameLike,
    this.passwordLike,
    this.roleTypes,
    this.nameLike,
    this.nickNameLike,
    this.interCodeLike,
    this.mobileLike,
    this.ageMin,
    this.ageMax,
    this.addressLike,
    this.avatarImgIds,
    this.emailLike,
    this.valiDatetimeMin,
    this.valiDatetimeMax,
    this.birthdayDateMin,
    this.birthdayDateMax,
    this.workTimeMin,
    this.workTimeMax,
    this.provinceIds,
    this.cityIds,
    this.statuss,
    this.gradeMin,
    this.gradeMax,
    this.postAddressIds,
    this.remarkLike,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
    this.cascaderPostAddressIds,
  });

  static User fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return User(
      visitsIds: JsonUtil.parseList<int>(json['visitsIds'], JsonUtil.parseInt),
      province: Province.fromJson(json['province']),
      city: City.fromJson(json['city']),
      cascaderPostAddresss: Region.fromJsonList(json['cascaderPostAddresss']),
      hoppys: Hoppy.fromJsonList(json['hoppys']),
      hoppyIds: JsonUtil.parseList<int>(json['hoppyIds'], JsonUtil.parseInt),
      avatarImg: FileSummary.fromJson(json['avatarImg']),
      userId: JsonUtil.parseString(json['userId']),
      username: JsonUtil.parseString(json['username']),
      roleType: RoleType.fromJson(json['roleType']),
      name: JsonUtil.parseString(json['name']),
      nickName: JsonUtil.parseString(json['nickName']),
      interCode: JsonUtil.parseString(json['interCode']),
      mobile: JsonUtil.parseString(json['mobile']),
      age: JsonUtil.parseInt(json['age']),
      address: JsonUtil.parseString(json['address']),
      avatarImgId: JsonUtil.parseString(json['avatarImgId']),
      email: JsonUtil.parseString(json['email']),
      valiDatetime: JsonUtil.parseDateTime(json['valiDatetime']),
      birthdayDate: JsonUtil.parseDateTime(json['birthdayDate']),
      workTime: JsonUtil.parseDateTime(json['workTime']),
      provinceId: JsonUtil.parseString(json['provinceId']),
      cityId: JsonUtil.parseString(json['cityId']),
      status: StatusEnum.fromJson(json['status']),
      grade: JsonUtil.parseInt(json['grade']),
      sex: JsonUtil.parseBool(json['sex']),
      postAddressId: JsonUtil.parseInt(json['postAddressId']),
      remark: JsonUtil.parseString(json['remark']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      userIds: JsonUtil.parseList<String>(json['userIds'], JsonUtil.parseString),
      usernameLike: JsonUtil.parseString(json['usernameLike']),
      passwordLike: JsonUtil.parseString(json['passwordLike']),
      roleTypes: RoleType.fromJsonList(json['roleTypes']),
      nameLike: JsonUtil.parseString(json['nameLike']),
      nickNameLike: JsonUtil.parseString(json['nickNameLike']),
      interCodeLike: JsonUtil.parseString(json['interCodeLike']),
      mobileLike: JsonUtil.parseString(json['mobileLike']),
      ageMin: JsonUtil.parseInt(json['ageMin']),
      ageMax: JsonUtil.parseInt(json['ageMax']),
      addressLike: JsonUtil.parseString(json['addressLike']),
      avatarImgIds: JsonUtil.parseList<String>(json['avatarImgIds'], JsonUtil.parseString),
      emailLike: JsonUtil.parseString(json['emailLike']),
      valiDatetimeMin: JsonUtil.parseDateTime(json['valiDatetimeMin']),
      valiDatetimeMax: JsonUtil.parseDateTime(json['valiDatetimeMax']),
      birthdayDateMin: JsonUtil.parseDateTime(json['birthdayDateMin']),
      birthdayDateMax: JsonUtil.parseDateTime(json['birthdayDateMax']),
      workTimeMin: JsonUtil.parseDateTime(json['workTimeMin']),
      workTimeMax: JsonUtil.parseDateTime(json['workTimeMax']),
      provinceIds: JsonUtil.parseList<String>(json['provinceIds'], JsonUtil.parseString),
      cityIds: JsonUtil.parseList<String>(json['cityIds'], JsonUtil.parseString),
      statuss: StatusEnum.fromJsonList(json['statuss']),
      gradeMin: JsonUtil.parseInt(json['gradeMin']),
      gradeMax: JsonUtil.parseInt(json['gradeMax']),
      postAddressIds: JsonUtil.parseList<int>(json['postAddressIds'], JsonUtil.parseInt),
      remarkLike: JsonUtil.parseString(json['remarkLike']),
      createTimeMin: JsonUtil.parseDateTime(json['createTimeMin']),
      createTimeMax: JsonUtil.parseDateTime(json['createTimeMax']),
      updateTimeMin: JsonUtil.parseDateTime(json['updateTimeMin']),
      updateTimeMax: JsonUtil.parseDateTime(json['updateTimeMax']),
      cascaderPostAddressIds: JsonUtil.parseList<int>(json['cascaderPostAddressIds'], JsonUtil.parseInt),
    );
  }

  static List<User> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, User.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.visitsIds != null) {
      var list = List();
      for (var v in visitsIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['visitsIds'] = list;
    }
    if (this.province != null) {
      result['province'] = province.toMap();
    }
    if (this.city != null) {
      result['city'] = city.toMap();
    }
    if (this.cascaderPostAddresss != null) {
      var list = List();
      for (var v in cascaderPostAddresss) {
        list.add(v.toMap());
      }
      result['cascaderPostAddresss'] = list;
    }
    if (this.hoppys != null) {
      var list = List();
      for (var v in hoppys) {
        list.add(v.toMap());
      }
      result['hoppys'] = list;
    }
    if (this.hoppyIds != null) {
      var list = List();
      for (var v in hoppyIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['hoppyIds'] = list;
    }
    if (this.avatarImg != null) {
      result['avatarImg'] = avatarImg.toMap();
    }
    if (this.userId != null) {
      result['userId'] = JsonUtil.stringToJson(userId);
    }
    if (this.username != null) {
      result['username'] = JsonUtil.stringToJson(username);
    }
    if (this.roleType != null) {
      result['roleType'] = roleType.toString();
    }
    if (this.name != null) {
      result['name'] = JsonUtil.stringToJson(name);
    }
    if (this.nickName != null) {
      result['nickName'] = JsonUtil.stringToJson(nickName);
    }
    if (this.interCode != null) {
      result['interCode'] = JsonUtil.stringToJson(interCode);
    }
    if (this.mobile != null) {
      result['mobile'] = JsonUtil.stringToJson(mobile);
    }
    if (this.age != null) {
      result['age'] = JsonUtil.intToJson(age);
    }
    if (this.address != null) {
      result['address'] = JsonUtil.stringToJson(address);
    }
    if (this.avatarImgId != null) {
      result['avatarImgId'] = JsonUtil.stringToJson(avatarImgId);
    }
    if (this.email != null) {
      result['email'] = JsonUtil.stringToJson(email);
    }
    if (this.valiDatetime != null) {
      result['valiDatetime'] = JsonUtil.dateTimeToJson(valiDatetime);
    }
    if (this.birthdayDate != null) {
      result['birthdayDate'] = JsonUtil.dateTimeToJson(birthdayDate);
    }
    if (this.workTime != null) {
      result['workTime'] = JsonUtil.dateTimeToJson(workTime);
    }
    if (this.provinceId != null) {
      result['provinceId'] = JsonUtil.stringToJson(provinceId);
    }
    if (this.cityId != null) {
      result['cityId'] = JsonUtil.stringToJson(cityId);
    }
    if (this.status != null) {
      result['status'] = status.toString();
    }
    if (this.grade != null) {
      result['grade'] = JsonUtil.intToJson(grade);
    }
    if (this.sex != null) {
      result['sex'] = JsonUtil.boolToJson(sex);
    }
    if (this.postAddressId != null) {
      result['postAddressId'] = JsonUtil.intToJson(postAddressId);
    }
    if (this.remark != null) {
      result['remark'] = JsonUtil.stringToJson(remark);
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
    if (this.userIds != null) {
      var list = List();
      for (var v in userIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['userIds'] = list;
    }
    if (this.usernameLike != null) {
      result['usernameLike'] = JsonUtil.stringToJson(usernameLike);
    }
    if (this.passwordLike != null) {
      result['passwordLike'] = JsonUtil.stringToJson(passwordLike);
    }
    if (this.roleTypes != null) {
      var list = List();
      for (var v in roleTypes) {
        list.add(v.toString());
      }
      result['roleTypes'] = list;
    }
    if (this.nameLike != null) {
      result['nameLike'] = JsonUtil.stringToJson(nameLike);
    }
    if (this.nickNameLike != null) {
      result['nickNameLike'] = JsonUtil.stringToJson(nickNameLike);
    }
    if (this.interCodeLike != null) {
      result['interCodeLike'] = JsonUtil.stringToJson(interCodeLike);
    }
    if (this.mobileLike != null) {
      result['mobileLike'] = JsonUtil.stringToJson(mobileLike);
    }
    if (this.ageMin != null) {
      result['ageMin'] = JsonUtil.intToJson(ageMin);
    }
    if (this.ageMax != null) {
      result['ageMax'] = JsonUtil.intToJson(ageMax);
    }
    if (this.addressLike != null) {
      result['addressLike'] = JsonUtil.stringToJson(addressLike);
    }
    if (this.avatarImgIds != null) {
      var list = List();
      for (var v in avatarImgIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['avatarImgIds'] = list;
    }
    if (this.emailLike != null) {
      result['emailLike'] = JsonUtil.stringToJson(emailLike);
    }
    if (this.valiDatetimeMin != null) {
      result['valiDatetimeMin'] = JsonUtil.dateTimeToJson(valiDatetimeMin);
    }
    if (this.valiDatetimeMax != null) {
      result['valiDatetimeMax'] = JsonUtil.dateTimeToJson(valiDatetimeMax);
    }
    if (this.birthdayDateMin != null) {
      result['birthdayDateMin'] = JsonUtil.dateTimeToJson(birthdayDateMin);
    }
    if (this.birthdayDateMax != null) {
      result['birthdayDateMax'] = JsonUtil.dateTimeToJson(birthdayDateMax);
    }
    if (this.workTimeMin != null) {
      result['workTimeMin'] = JsonUtil.dateTimeToJson(workTimeMin);
    }
    if (this.workTimeMax != null) {
      result['workTimeMax'] = JsonUtil.dateTimeToJson(workTimeMax);
    }
    if (this.provinceIds != null) {
      var list = List();
      for (var v in provinceIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['provinceIds'] = list;
    }
    if (this.cityIds != null) {
      var list = List();
      for (var v in cityIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['cityIds'] = list;
    }
    if (this.statuss != null) {
      var list = List();
      for (var v in statuss) {
        list.add(v.toString());
      }
      result['statuss'] = list;
    }
    if (this.gradeMin != null) {
      result['gradeMin'] = JsonUtil.intToJson(gradeMin);
    }
    if (this.gradeMax != null) {
      result['gradeMax'] = JsonUtil.intToJson(gradeMax);
    }
    if (this.postAddressIds != null) {
      var list = List();
      for (var v in postAddressIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['postAddressIds'] = list;
    }
    if (this.remarkLike != null) {
      result['remarkLike'] = JsonUtil.stringToJson(remarkLike);
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
    if (this.cascaderPostAddressIds != null) {
      var list = List();
      for (var v in cascaderPostAddressIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['cascaderPostAddressIds'] = list;
    }
    return result;
  }

  static Map<String, User> toIdMap(List<User> userList) {
    var result = Map<String, User>();
    if (userList != null) {
      for (var user in userList) {
        if (user != null) {
          result[user.userId] = user;
        }
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<User> userList) {
    var result = List<Map<String, dynamic>>();
    if (userList != null) {
      for (var user in userList) {
        if (user != null) {
          result.add(user.toMap());
        }
      }
    }
    return result;
  }

}

