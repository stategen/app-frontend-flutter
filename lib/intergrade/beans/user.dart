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

class UserFields {
  static const address = 'address';
  static const addressLike = 'addressLike';
  static const age = 'age';
  static const ageMax = 'ageMax';
  static const ageMin = 'ageMin';
  static const avatarImg = 'avatarImg';
  static const avatarImgId = 'avatarImgId';
  static const avatarImgIds = 'avatarImgIds';
  static const birthdayDate = 'birthdayDate';
  static const birthdayDateMax = 'birthdayDateMax';
  static const birthdayDateMin = 'birthdayDateMin';
  static const cascaderPostAddressIds = 'cascaderPostAddressIds';
  static const cascaderPostAddresss = 'cascaderPostAddresss';
  static const city = 'city';
  static const cityId = 'cityId';
  static const cityIds = 'cityIds';
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const email = 'email';
  static const emailLike = 'emailLike';
  static const grade = 'grade';
  static const gradeMax = 'gradeMax';
  static const gradeMin = 'gradeMin';
  static const hoppyIds = 'hoppyIds';
  static const hoppys = 'hoppys';
  static const interCode = 'interCode';
  static const interCodeLike = 'interCodeLike';
  static const mobile = 'mobile';
  static const mobileLike = 'mobileLike';
  static const name = 'name';
  static const nameLike = 'nameLike';
  static const nickName = 'nickName';
  static const nickNameLike = 'nickNameLike';
  static const passwordLike = 'passwordLike';
  static const postAddressId = 'postAddressId';
  static const postAddressIds = 'postAddressIds';
  static const province = 'province';
  static const provinceId = 'provinceId';
  static const provinceIds = 'provinceIds';
  static const remark = 'remark';
  static const remarkLike = 'remarkLike';
  static const roleType = 'roleType';
  static const roleTypes = 'roleTypes';
  static const sex = 'sex';
  static const status = 'status';
  static const statusLike = 'statusLike';
  static const statuss = 'statuss';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
  static const userId = 'userId';
  static const userIds = 'userIds';
  static const username = 'username';
  static const usernameLike = 'usernameLike';
  static const valiDatetime = 'valiDatetime';
  static const valiDatetimeMax = 'valiDatetimeMax';
  static const valiDatetimeMin = 'valiDatetimeMin';
  static const visitsIds = 'visitsIds';
  static const workTime = 'workTime';
  static const workTimeMax = 'workTimeMax';
  static const workTimeMin = 'workTimeMin';
}

class User with FrontBean {
  /// userId
  static const String ID = UserFields.userId;

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
  bool deleteFlag;

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

  /// 状态Like
  StatusEnum statusLike;

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
    this.statusLike,
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
      address: JsonUtil.parseString(json[UserFields.address]),
      age: JsonUtil.parseInt(json[UserFields.age]),
      avatarImg: FileSummary.fromJson(json[UserFields.avatarImg]),
      avatarImgId: JsonUtil.parseString(json[UserFields.avatarImgId]),
      birthdayDate: JsonUtil.parseDateTime(json[UserFields.birthdayDate]),
      cascaderPostAddressIds: JsonUtil.parseList<int>(json[UserFields.cascaderPostAddressIds], JsonUtil.parseInt),
      cascaderPostAddresss: Region.fromJsonList(json[UserFields.cascaderPostAddresss]),
      city: City.fromJson(json[UserFields.city]),
      cityId: JsonUtil.parseString(json[UserFields.cityId]),
      createTime: JsonUtil.parseDateTime(json[UserFields.createTime]),
      deleteFlag: JsonUtil.parseBool(json[UserFields.deleteFlag]),
      email: JsonUtil.parseString(json[UserFields.email]),
      grade: JsonUtil.parseInt(json[UserFields.grade]),
      hoppyIds: JsonUtil.parseList<int>(json[UserFields.hoppyIds], JsonUtil.parseInt),
      hoppys: Hoppy.fromJsonList(json[UserFields.hoppys]),
      interCode: JsonUtil.parseString(json[UserFields.interCode]),
      mobile: JsonUtil.parseString(json[UserFields.mobile]),
      name: JsonUtil.parseString(json[UserFields.name]),
      nickName: JsonUtil.parseString(json[UserFields.nickName]),
      postAddressId: JsonUtil.parseInt(json[UserFields.postAddressId]),
      province: Province.fromJson(json[UserFields.province]),
      provinceId: JsonUtil.parseString(json[UserFields.provinceId]),
      remark: JsonUtil.parseString(json[UserFields.remark]),
      roleType: RoleType.fromJson(json[UserFields.roleType]),
      sex: JsonUtil.parseBool(json[UserFields.sex]),
      status: StatusEnum.fromJson(json[UserFields.status]),
      updateTime: JsonUtil.parseDateTime(json[UserFields.updateTime]),
      userId: JsonUtil.parseString(json[UserFields.userId]),
      username: JsonUtil.parseString(json[UserFields.username]),
      valiDatetime: JsonUtil.parseDateTime(json[UserFields.valiDatetime]),
      workTime: JsonUtil.parseDateTime(json[UserFields.workTime]),
    );
  }

  static List<User> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, User.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.address != null) {
      result[UserFields.address] = JsonUtil.stringToJson(address);
    }
    if (this.addressLike != null) {
      result[UserFields.addressLike] = JsonUtil.stringToJson(addressLike);
    }
    if (this.age != null) {
      result[UserFields.age] = JsonUtil.intToJson(age);
    }
    if (this.ageMax != null) {
      result[UserFields.ageMax] = JsonUtil.intToJson(ageMax);
    }
    if (this.ageMin != null) {
      result[UserFields.ageMin] = JsonUtil.intToJson(ageMin);
    }
    if (this.avatarImg != null) {
      result[UserFields.avatarImg] = avatarImg.toJson();
    }
    if (this.avatarImgId != null) {
      result[UserFields.avatarImgId] = JsonUtil.stringToJson(avatarImgId);
    }
    if (this.avatarImgIds != null) {
      var list = List();
      for (var v in avatarImgIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[UserFields.avatarImgIds] = list;
    }
    if (this.birthdayDate != null) {
      result[UserFields.birthdayDate] = JsonUtil.dateTimeToJson(birthdayDate);
    }
    if (this.birthdayDateMax != null) {
      result[UserFields.birthdayDateMax] = JsonUtil.dateTimeToJson(birthdayDateMax);
    }
    if (this.birthdayDateMin != null) {
      result[UserFields.birthdayDateMin] = JsonUtil.dateTimeToJson(birthdayDateMin);
    }
    if (this.cascaderPostAddressIds != null) {
      var list = List();
      for (var v in cascaderPostAddressIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result[UserFields.cascaderPostAddressIds] = list;
    }
    if (this.cascaderPostAddresss != null) {
      var list = List();
      for (var v in cascaderPostAddresss) {
        list.add(v.toJson());
      }
      result[UserFields.cascaderPostAddresss] = list;
    }
    if (this.city != null) {
      result[UserFields.city] = city.toJson();
    }
    if (this.cityId != null) {
      result[UserFields.cityId] = JsonUtil.stringToJson(cityId);
    }
    if (this.cityIds != null) {
      var list = List();
      for (var v in cityIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[UserFields.cityIds] = list;
    }
    if (this.createTime != null) {
      result[UserFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[UserFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[UserFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[UserFields.deleteFlag] = JsonUtil.boolToJson(deleteFlag);
    }
    if (this.email != null) {
      result[UserFields.email] = JsonUtil.stringToJson(email);
    }
    if (this.emailLike != null) {
      result[UserFields.emailLike] = JsonUtil.stringToJson(emailLike);
    }
    if (this.grade != null) {
      result[UserFields.grade] = JsonUtil.intToJson(grade);
    }
    if (this.gradeMax != null) {
      result[UserFields.gradeMax] = JsonUtil.intToJson(gradeMax);
    }
    if (this.gradeMin != null) {
      result[UserFields.gradeMin] = JsonUtil.intToJson(gradeMin);
    }
    if (this.hoppyIds != null) {
      var list = List();
      for (var v in hoppyIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result[UserFields.hoppyIds] = list;
    }
    if (this.hoppys != null) {
      var list = List();
      for (var v in hoppys) {
        list.add(v.toJson());
      }
      result[UserFields.hoppys] = list;
    }
    if (this.interCode != null) {
      result[UserFields.interCode] = JsonUtil.stringToJson(interCode);
    }
    if (this.interCodeLike != null) {
      result[UserFields.interCodeLike] = JsonUtil.stringToJson(interCodeLike);
    }
    if (this.mobile != null) {
      result[UserFields.mobile] = JsonUtil.stringToJson(mobile);
    }
    if (this.mobileLike != null) {
      result[UserFields.mobileLike] = JsonUtil.stringToJson(mobileLike);
    }
    if (this.name != null) {
      result[UserFields.name] = JsonUtil.stringToJson(name);
    }
    if (this.nameLike != null) {
      result[UserFields.nameLike] = JsonUtil.stringToJson(nameLike);
    }
    if (this.nickName != null) {
      result[UserFields.nickName] = JsonUtil.stringToJson(nickName);
    }
    if (this.nickNameLike != null) {
      result[UserFields.nickNameLike] = JsonUtil.stringToJson(nickNameLike);
    }
    if (this.passwordLike != null) {
      result[UserFields.passwordLike] = JsonUtil.stringToJson(passwordLike);
    }
    if (this.postAddressId != null) {
      result[UserFields.postAddressId] = JsonUtil.intToJson(postAddressId);
    }
    if (this.postAddressIds != null) {
      var list = List();
      for (var v in postAddressIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result[UserFields.postAddressIds] = list;
    }
    if (this.province != null) {
      result[UserFields.province] = province.toJson();
    }
    if (this.provinceId != null) {
      result[UserFields.provinceId] = JsonUtil.stringToJson(provinceId);
    }
    if (this.provinceIds != null) {
      var list = List();
      for (var v in provinceIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[UserFields.provinceIds] = list;
    }
    if (this.remark != null) {
      result[UserFields.remark] = JsonUtil.stringToJson(remark);
    }
    if (this.remarkLike != null) {
      result[UserFields.remarkLike] = JsonUtil.stringToJson(remarkLike);
    }
    if (this.roleType != null) {
      result[UserFields.roleType] = roleType.toString();
    }
    if (this.roleTypes != null) {
      var list = List();
      for (var v in roleTypes) {
        list.add(v.toString());
      }
      result[UserFields.roleTypes] = list;
    }
    if (this.sex != null) {
      result[UserFields.sex] = JsonUtil.boolToJson(sex);
    }
    if (this.status != null) {
      result[UserFields.status] = status.toString();
    }
    if (this.statusLike != null) {
      result[UserFields.statusLike] = statusLike.toString();
    }
    if (this.statuss != null) {
      var list = List();
      for (var v in statuss) {
        list.add(v.toString());
      }
      result[UserFields.statuss] = list;
    }
    if (this.updateTime != null) {
      result[UserFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[UserFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[UserFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.userId != null) {
      result[UserFields.userId] = JsonUtil.stringToJson(userId);
    }
    if (this.userIds != null) {
      var list = List();
      for (var v in userIds) {
        list.add(JsonUtil.stringToJson(v));
      }
      result[UserFields.userIds] = list;
    }
    if (this.username != null) {
      result[UserFields.username] = JsonUtil.stringToJson(username);
    }
    if (this.usernameLike != null) {
      result[UserFields.usernameLike] = JsonUtil.stringToJson(usernameLike);
    }
    if (this.valiDatetime != null) {
      result[UserFields.valiDatetime] = JsonUtil.dateTimeToJson(valiDatetime);
    }
    if (this.valiDatetimeMax != null) {
      result[UserFields.valiDatetimeMax] = JsonUtil.dateTimeToJson(valiDatetimeMax);
    }
    if (this.valiDatetimeMin != null) {
      result[UserFields.valiDatetimeMin] = JsonUtil.dateTimeToJson(valiDatetimeMin);
    }
    if (this.visitsIds != null) {
      var list = List();
      for (var v in visitsIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result[UserFields.visitsIds] = list;
    }
    if (this.workTime != null) {
      result[UserFields.workTime] = JsonUtil.dateTimeToJson(workTime);
    }
    if (this.workTimeMax != null) {
      result[UserFields.workTimeMax] = JsonUtil.dateTimeToJson(workTimeMax);
    }
    if (this.workTimeMin != null) {
      result[UserFields.workTimeMin] = JsonUtil.dateTimeToJson(workTimeMin);
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

