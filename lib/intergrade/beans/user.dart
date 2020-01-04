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

  /// 详细地址
  String address;

  /// 详细地址Like
  String addressLike;

  /// 年龄
  int age;

  /// 年龄Max
  int ageMax;

  /// 年龄Min
  int ageMin;

  /// 头像
  FileSummary avatarImg;

  /// 头像 ID
  String avatarImgId;

  /// 头像 s
  List<String> avatarImgIds;

  /// 出生日期
  DateTime birthdayDate;

  /// 出生日期Max
  DateTime birthdayDateMax;

  /// 出生日期Min
  DateTime birthdayDateMin;

  /// 邮寄地址
  List<int> cascaderPostAddressIds;

  /// cascaderPostAddresss
  List<Region> cascaderPostAddresss;

  /// city
  City city;

  /// 城市 ID
  String cityId;

  /// 城市 s
  List<String> cityIds;

  /// 创建时间
  DateTime createTime;

  /// 创建时间Max
  DateTime createTimeMax;

  /// 创建时间Min
  DateTime createTimeMin;

  /// 是否删除 (0:正常，1删除)
  int deleteFlag;

  /// 邮箱
  String email;

  /// 邮箱Like
  String emailLike;

  /// 级别
  int grade;

  /// 级别Max
  int gradeMax;

  /// 级别Min
  int gradeMin;

  /// 爱好 ids
  List<int> hoppyIds;

  /// hoppys
  List<Hoppy> hoppys;

  /// 国际区号
  String interCode;

  /// 国际区号Like
  String interCodeLike;

  /// 手机号
  String mobile;

  /// 手机号Like
  String mobileLike;

  /// 姓名
  String name;

  /// 用户名nameLike
  String nameLike;

  /// 别名
  String nickName;

  /// 别名Like
  String nickNameLike;

  /// 密码Like
  String passwordLike;

  /// 邮寄地址 ID
  int postAddressId;

  /// 邮寄地址 s
  List<int> postAddressIds;

  /// province
  Province province;

  /// 省份 ID
  String provinceId;

  /// 省份 s
  List<String> provinceIds;

  /// remark
  String remark;

  /// remarkLike
  String remarkLike;

  /// 用户角色 ADMIN,DEFAULT,DEVELOPER
  RoleType roleType;

  /// 用户角色 s
  List<RoleType> roleTypes;

  /// 性别
  bool sex;

  /// 状态 enum
  StatusEnum status;

  /// 状态 s
  List<StatusEnum> statuss;

  /// 更新时间
  DateTime updateTime;

  /// 更新时间Max
  DateTime updateTimeMax;

  /// 更新时间Min
  DateTime updateTimeMin;

  /// 用户ID
  String userId;

  /// 用户ID s
  List<String> userIds;

  /// 用户名
  String username;

  /// 用户名Like
  String usernameLike;

  /// 认证时间
  DateTime valiDatetime;

  /// 认证时间Max
  DateTime valiDatetimeMax;

  /// 认证时间Min
  DateTime valiDatetimeMin;

  /// 用户可访问的节点
  List<int> visitsIds;

  /// 工作时间
  DateTime workTime;

  /// 工作时间Max
  DateTime workTimeMax;

  /// 工作时间Min
  DateTime workTimeMin;

  User({
    this.address,
    this.addressLike,
    this.age,
    this.ageMax,
    this.ageMin,
    this.avatarImg,
    this.avatarImgId,
    this.avatarImgIds,
    this.birthdayDate,
    this.birthdayDateMax,
    this.birthdayDateMin,
    this.cascaderPostAddressIds,
    this.cascaderPostAddresss,
    this.city,
    this.cityId,
    this.cityIds,
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.email,
    this.emailLike,
    this.grade,
    this.gradeMax,
    this.gradeMin,
    this.hoppyIds,
    this.hoppys,
    this.interCode,
    this.interCodeLike,
    this.mobile,
    this.mobileLike,
    this.name,
    this.nameLike,
    this.nickName,
    this.nickNameLike,
    this.passwordLike,
    this.postAddressId,
    this.postAddressIds,
    this.province,
    this.provinceId,
    this.provinceIds,
    this.remark,
    this.remarkLike,
    this.roleType,
    this.roleTypes,
    this.sex,
    this.status,
    this.statuss,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
    this.userId,
    this.userIds,
    this.username,
    this.usernameLike,
    this.valiDatetime,
    this.valiDatetimeMax,
    this.valiDatetimeMin,
    this.visitsIds,
    this.workTime,
    this.workTimeMax,
    this.workTimeMin,
  });

  static User fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return User(
      address: JsonUtil.parseString(json['address']),
      age: JsonUtil.parseInt(json['age']),
      avatarImg: FileSummary.fromJson(json['avatarImg']),
      avatarImgId: JsonUtil.parseString(json['avatarImgId']),
      birthdayDate: JsonUtil.parseDateTime(json['birthdayDate']),
      cascaderPostAddressIds: JsonUtil.parseList<int>(json['cascaderPostAddressIds'], JsonUtil.parseInt),
      cascaderPostAddresss: Region.fromJsonList(json['cascaderPostAddresss']),
      city: City.fromJson(json['city']),
      cityId: JsonUtil.parseString(json['cityId']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      email: JsonUtil.parseString(json['email']),
      grade: JsonUtil.parseInt(json['grade']),
      hoppyIds: JsonUtil.parseList<int>(json['hoppyIds'], JsonUtil.parseInt),
      hoppys: Hoppy.fromJsonList(json['hoppys']),
      interCode: JsonUtil.parseString(json['interCode']),
      mobile: JsonUtil.parseString(json['mobile']),
      name: JsonUtil.parseString(json['name']),
      nickName: JsonUtil.parseString(json['nickName']),
      postAddressId: JsonUtil.parseInt(json['postAddressId']),
      province: Province.fromJson(json['province']),
      provinceId: JsonUtil.parseString(json['provinceId']),
      remark: JsonUtil.parseString(json['remark']),
      roleType: RoleType.fromJson(json['roleType']),
      sex: JsonUtil.parseBool(json['sex']),
      status: StatusEnum.fromJson(json['status']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      userId: JsonUtil.parseString(json['userId']),
      username: JsonUtil.parseString(json['username']),
      valiDatetime: JsonUtil.parseDateTime(json['valiDatetime']),
      workTime: JsonUtil.parseDateTime(json['workTime']),
    );
  }

  static List<User> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, User.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = new Map<String, dynamic>();
    if (this.address != null) {
      result['address'] = JsonUtil.stringToJson(address);
    }
    if (this.addressLike != null) {
      result['addressLike'] = JsonUtil.stringToJson(addressLike);
    }
    if (this.age != null) {
      result['age'] = JsonUtil.intToJson(age);
    }
    if (this.ageMax != null) {
      result['ageMax'] = JsonUtil.intToJson(ageMax);
    }
    if (this.ageMin != null) {
      result['ageMin'] = JsonUtil.intToJson(ageMin);
    }
    if (this.avatarImg != null) {
      result['avatarImg'] = avatarImg.toJson();
    }
    if (this.avatarImgId != null) {
      result['avatarImgId'] = JsonUtil.stringToJson(avatarImgId);
    }
    if (this.avatarImgIds != null) {
      var list = List();
      for (var v in avatarImgIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['avatarImgIds'] = list;
    }
    if (this.birthdayDate != null) {
      result['birthdayDate'] = JsonUtil.dateTimeToJson(birthdayDate);
    }
    if (this.birthdayDateMax != null) {
      result['birthdayDateMax'] = JsonUtil.dateTimeToJson(birthdayDateMax);
    }
    if (this.birthdayDateMin != null) {
      result['birthdayDateMin'] = JsonUtil.dateTimeToJson(birthdayDateMin);
    }
    if (this.cascaderPostAddressIds != null) {
      var list = List();
      for (var v in cascaderPostAddressIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['cascaderPostAddressIds'] = list;
    }
    if (this.cascaderPostAddresss != null) {
      var list = List();
      for (var v in cascaderPostAddresss) {
        list.add(v.toJson());
      }
      result['cascaderPostAddresss'] = list;
    }
    if (this.city != null) {
      result['city'] = city.toJson();
    }
    if (this.cityId != null) {
      result['cityId'] = JsonUtil.stringToJson(cityId);
    }
    if (this.cityIds != null) {
      var list = List();
      for (var v in cityIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['cityIds'] = list;
    }
    if (this.createTime != null) {
      result['createTime'] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result['createTimeMax'] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result['createTimeMin'] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result['deleteFlag'] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.email != null) {
      result['email'] = JsonUtil.stringToJson(email);
    }
    if (this.emailLike != null) {
      result['emailLike'] = JsonUtil.stringToJson(emailLike);
    }
    if (this.grade != null) {
      result['grade'] = JsonUtil.intToJson(grade);
    }
    if (this.gradeMax != null) {
      result['gradeMax'] = JsonUtil.intToJson(gradeMax);
    }
    if (this.gradeMin != null) {
      result['gradeMin'] = JsonUtil.intToJson(gradeMin);
    }
    if (this.hoppyIds != null) {
      var list = List();
      for (var v in hoppyIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['hoppyIds'] = list;
    }
    if (this.hoppys != null) {
      var list = List();
      for (var v in hoppys) {
        list.add(v.toJson());
      }
      result['hoppys'] = list;
    }
    if (this.interCode != null) {
      result['interCode'] = JsonUtil.stringToJson(interCode);
    }
    if (this.interCodeLike != null) {
      result['interCodeLike'] = JsonUtil.stringToJson(interCodeLike);
    }
    if (this.mobile != null) {
      result['mobile'] = JsonUtil.stringToJson(mobile);
    }
    if (this.mobileLike != null) {
      result['mobileLike'] = JsonUtil.stringToJson(mobileLike);
    }
    if (this.name != null) {
      result['name'] = JsonUtil.stringToJson(name);
    }
    if (this.nameLike != null) {
      result['nameLike'] = JsonUtil.stringToJson(nameLike);
    }
    if (this.nickName != null) {
      result['nickName'] = JsonUtil.stringToJson(nickName);
    }
    if (this.nickNameLike != null) {
      result['nickNameLike'] = JsonUtil.stringToJson(nickNameLike);
    }
    if (this.passwordLike != null) {
      result['passwordLike'] = JsonUtil.stringToJson(passwordLike);
    }
    if (this.postAddressId != null) {
      result['postAddressId'] = JsonUtil.intToJson(postAddressId);
    }
    if (this.postAddressIds != null) {
      var list = List();
      for (var v in postAddressIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['postAddressIds'] = list;
    }
    if (this.province != null) {
      result['province'] = province.toJson();
    }
    if (this.provinceId != null) {
      result['provinceId'] = JsonUtil.stringToJson(provinceId);
    }
    if (this.provinceIds != null) {
      var list = List();
      for (var v in provinceIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['provinceIds'] = list;
    }
    if (this.remark != null) {
      result['remark'] = JsonUtil.stringToJson(remark);
    }
    if (this.remarkLike != null) {
      result['remarkLike'] = JsonUtil.stringToJson(remarkLike);
    }
    if (this.roleType != null) {
      result['roleType'] = roleType.toString();
    }
    if (this.roleTypes != null) {
      var list = List();
      for (var v in roleTypes) {
        list.add(v.toString());
      }
      result['roleTypes'] = list;
    }
    if (this.sex != null) {
      result['sex'] = JsonUtil.boolToJson(sex);
    }
    if (this.status != null) {
      result['status'] = status.toString();
    }
    if (this.statuss != null) {
      var list = List();
      for (var v in statuss) {
        list.add(v.toString());
      }
      result['statuss'] = list;
    }
    if (this.updateTime != null) {
      result['updateTime'] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result['updateTimeMax'] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result['updateTimeMin'] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.userId != null) {
      result['userId'] = JsonUtil.stringToJson(userId);
    }
    if (this.userIds != null) {
      var list = List();
      for (var v in userIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result['userIds'] = list;
    }
    if (this.username != null) {
      result['username'] = JsonUtil.stringToJson(username);
    }
    if (this.usernameLike != null) {
      result['usernameLike'] = JsonUtil.stringToJson(usernameLike);
    }
    if (this.valiDatetime != null) {
      result['valiDatetime'] = JsonUtil.dateTimeToJson(valiDatetime);
    }
    if (this.valiDatetimeMax != null) {
      result['valiDatetimeMax'] = JsonUtil.dateTimeToJson(valiDatetimeMax);
    }
    if (this.valiDatetimeMin != null) {
      result['valiDatetimeMin'] = JsonUtil.dateTimeToJson(valiDatetimeMin);
    }
    if (this.visitsIds != null) {
      var list = List();
      for (var v in visitsIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['visitsIds'] = list;
    }
    if (this.workTime != null) {
      result['workTime'] = JsonUtil.dateTimeToJson(workTime);
    }
    if (this.workTimeMax != null) {
      result['workTimeMax'] = JsonUtil.dateTimeToJson(workTimeMax);
    }
    if (this.workTimeMin != null) {
      result['workTimeMin'] = JsonUtil.dateTimeToJson(workTimeMin);
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

}

