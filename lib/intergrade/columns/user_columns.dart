///  Do not remove this unless you get business authorization.
///  User
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/user.dart';
import '../enums/roletype.dart';
import '../enums/statusenum.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class UserColumns{

  /// 详细地址  
  static ColumnConfig address = ColumnConfig(
    key: 'address',
    title: '详细地址',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: User, index: number) =>{
    //  return address.renderColumn(record, null, text, index, address);
    //},
  );

  /// 详细地址Like  
  static ColumnConfig addressLike = ColumnConfig(
    key: 'addressLike',
    title: '详细地址Like',
    noJson: true,
  );

  /// 年龄  
  static ColumnConfig age = ColumnConfig(
    key: 'age',
    title: '年龄',
    // renderColumn: UIColumns.NumberRender,
    nullTitle: '请选择',
    //render: (text: any, record: User, index: number) =>{
    //  return age.renderColumn(record, null, text, index, age);
    //},
  );

  /// 年龄Max  
  static ColumnConfig ageMax = ColumnConfig(
    key: 'ageMax',
    title: '年龄Max',
    noJson: true,
  );

  /// 年龄Min  
  static ColumnConfig ageMin = ColumnConfig(
    key: 'ageMin',
    title: '年龄Min',
    noJson: true,
  );

  /// 头像  
  static ColumnConfig avatarImg = ColumnConfig(
    key: 'avatarImg',
    title: '头像',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: User, index: number) =>{
    //  return avatarImg.renderColumn(record, null, text, index, avatarImg);
    //},
  );

  /// 头像 ID  
  static ColumnConfig avatarImgId = ColumnConfig(
    key: 'avatarImgId',
    title: '头像',
    // renderColumn: UIColumns.ImageRender,
    renderImage: true,
    referConfig: ReferConfig(
      api: 'getFileSummaryOptions',
      referField: 'avatarImg',
    ),
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    nullTitle: '请选择',
    //render: (text: any, record: User, index: number) =>{
    //  return avatarImgId.renderColumn(record, null, text, index, avatarImgId);
    //},
  );

  /// 头像 s  
  static ColumnConfig avatarImgIds = ColumnConfig(
    key: 'avatarImgIds',
    title: '头像',
    noJson: true,
    isArray: true,
  );

  /// 出生日期  DATE
  static ColumnConfig birthdayDate = ColumnConfig(
    key: 'birthdayDate',
    title: '出生日期',
    // renderColumn: UIColumns.DatePickerRender,
    temporalType: TemporalType.DATE,
    format: DATE_FORMAT,
    //render: (text: any, record: User, index: number) =>{
    //  return birthdayDate.renderColumn(record, null, text, index, birthdayDate);
    //},
  );

  /// 出生日期Max  DATE
  static ColumnConfig birthdayDateMax = ColumnConfig(
    key: 'birthdayDateMax',
    title: '出生日期Max',
    noJson: true,
    temporalType: TemporalType.DATE,
    format: DATE_FORMAT,
  );

  /// 出生日期Min  DATE
  static ColumnConfig birthdayDateMin = ColumnConfig(
    key: 'birthdayDateMin',
    title: '出生日期Min',
    noJson: true,
    temporalType: TemporalType.DATE,
    format: DATE_FORMAT,
  );

  /// 邮寄地址  
  static ColumnConfig cascaderPostAddressIds = ColumnConfig(
    key: 'cascaderPostAddressIds',
    title: '邮寄地址',
    // renderColumn: UIColumns.CascaderRender,
    isArray: true,
    referConfig: ReferConfig(
      api: 'getRegionOptions',
      referField: 'cascaderPostAddresss',
      optionConvertor: OptionConvertor(
        parentId: 'parentRegionId',
        label: 'name',
      ),
    ),
    nullTitle: '请选择',
    //render: (text: any, record: User, index: number) =>{
    //  return cascaderPostAddressIds.renderColumn(record, null, text, index, cascaderPostAddressIds);
    //},
  );

  /// cascaderPostAddresss  
  static ColumnConfig cascaderPostAddresss = ColumnConfig(
    key: 'cascaderPostAddresss',
    title: 'cascaderPostAddresss',
    // renderColumn: UIColumns.InputRender,
    isArray: true,
    //render: (text: any, record: User, index: number) =>{
    //  return cascaderPostAddresss.renderColumn(record, null, text, index, cascaderPostAddresss);
    //},
  );

  /// city  
  static ColumnConfig city = ColumnConfig(
    key: 'city',
    title: 'city',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: User, index: number) =>{
    //  return city.renderColumn(record, null, text, index, city);
    //},
  );

  /// 城市 ID  
  static ColumnConfig cityId = ColumnConfig(
    key: 'cityId',
    title: '城市',
    // renderColumn: UIColumns.SelectRender,
    changeBy: 'provinceId',
    referConfig: ReferConfig(
      api: 'getCityOptions',
      referField: 'city',
    ),
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    nullTitle: '请选择',
    //render: (text: any, record: User, index: number) =>{
    //  return cityId.renderColumn(record, null, text, index, cityId);
    //},
  );

  /// 城市 s  
  static ColumnConfig cityIds = ColumnConfig(
    key: 'cityIds',
    title: '城市',
    noJson: true,
    isArray: true,
    changeBy: 'provinceId',
    referConfig: ReferConfig(
      api: 'getCityOptions',
      referField: 'citys',
    ),
    nullTitle: '请选择',
  );

  /// 创建时间  TIMESTAMP
  static ColumnConfig createTime = ColumnConfig(
    key: 'createTime',
    title: '创建时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: User, index: number) =>{
    //  return createTime.renderColumn(record, null, text, index, createTime);
    //},
  );

  /// 创建时间Max  TIMESTAMP
  static ColumnConfig createTimeMax = ColumnConfig(
    key: 'createTimeMax',
    title: '创建时间Max',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 创建时间Min  TIMESTAMP
  static ColumnConfig createTimeMin = ColumnConfig(
    key: 'createTimeMin',
    title: '创建时间Min',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 是否删除 (0:正常，1删除)  
  static ColumnConfig deleteFlag = ColumnConfig(
    key: 'deleteFlag',
    title: '是否删除',
    // renderColumn: UIColumns.InputRender,
    hidden: true,
    //render: (text: any, record: User, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// 邮箱  
  static ColumnConfig email = ColumnConfig(
    key: 'email',
    title: '邮箱',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        required: true,
        message: "不能为null",
      ),
      ValidationRule(
        max: 128,
        message: "最大不能超过{max}",
      ),
      ValidationRule(
        pattern: RegExp(r'.*'),
      ),
    ],
    //render: (text: any, record: User, index: number) =>{
    //  return email.renderColumn(record, null, text, index, email);
    //},
  );

  /// 邮箱Like  
  static ColumnConfig emailLike = ColumnConfig(
    key: 'emailLike',
    title: '邮箱Like',
    noJson: true,
  );

  /// 级别  
  static ColumnConfig grade = ColumnConfig(
    key: 'grade',
    title: '级别',
    // renderColumn: UIColumns.RateRender,
    nullTitle: '请选择',
    //render: (text: any, record: User, index: number) =>{
    //  return grade.renderColumn(record, null, text, index, grade);
    //},
  );

  /// 级别Max  
  static ColumnConfig gradeMax = ColumnConfig(
    key: 'gradeMax',
    title: '级别Max',
    noJson: true,
  );

  /// 级别Min  
  static ColumnConfig gradeMin = ColumnConfig(
    key: 'gradeMin',
    title: '级别Min',
    noJson: true,
  );

  /// 爱好 ids  
  static ColumnConfig hoppyIds = ColumnConfig(
    key: 'hoppyIds',
    title: '爱好',
    // renderColumn: UIColumns.CheckboxGroupRender,
    isArray: true,
    referConfig: ReferConfig(
      api: 'getHoppyOptions',
      referField: 'hoppys',
    ),
    nullTitle: '请选择',
    //render: (text: any, record: User, index: number) =>{
    //  return hoppyIds.renderColumn(record, null, text, index, hoppyIds);
    //},
  );

  /// hoppys  
  static ColumnConfig hoppys = ColumnConfig(
    key: 'hoppys',
    title: 'hoppys',
    // renderColumn: UIColumns.InputRender,
    isArray: true,
    //render: (text: any, record: User, index: number) =>{
    //  return hoppys.renderColumn(record, null, text, index, hoppys);
    //},
  );

  /// 国际区号  
  static ColumnConfig interCode = ColumnConfig(
    key: 'interCode',
    title: '国际区号',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 16,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: User, index: number) =>{
    //  return interCode.renderColumn(record, null, text, index, interCode);
    //},
  );

  /// 国际区号Like  
  static ColumnConfig interCodeLike = ColumnConfig(
    key: 'interCodeLike',
    title: '国际区号Like',
    noJson: true,
  );

  /// 手机号  
  static ColumnConfig mobile = ColumnConfig(
    key: 'mobile',
    title: '手机号',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 16,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: User, index: number) =>{
    //  return mobile.renderColumn(record, null, text, index, mobile);
    //},
  );

  /// 手机号Like  
  static ColumnConfig mobileLike = ColumnConfig(
    key: 'mobileLike',
    title: '手机号Like',
    noJson: true,
  );

  /// 姓名  
  static ColumnConfig name = ColumnConfig(
    key: 'name',
    title: '姓名',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: User, index: number) =>{
    //  return name.renderColumn(record, null, text, index, name);
    //},
  );

  /// 用户名nameLike  
  static ColumnConfig nameLike = ColumnConfig(
    key: 'nameLike',
    title: '用户名nameLike',
    noJson: true,
  );

  /// 别名  
  static ColumnConfig nickName = ColumnConfig(
    key: 'nickName',
    title: '别名',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 32,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: User, index: number) =>{
    //  return nickName.renderColumn(record, null, text, index, nickName);
    //},
  );

  /// 别名Like  
  static ColumnConfig nickNameLike = ColumnConfig(
    key: 'nickNameLike',
    title: '别名Like',
    noJson: true,
  );

  /// 密码Like  
  static ColumnConfig passwordLike = ColumnConfig(
    key: 'passwordLike',
    title: '密码Like',
    noJson: true,
  );

  /// 邮寄地址 ID  
  static ColumnConfig postAddressId = ColumnConfig(
    key: 'postAddressId',
    title: '邮寄地址',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: User, index: number) =>{
    //  return postAddressId.renderColumn(record, null, text, index, postAddressId);
    //},
  );

  /// 邮寄地址 s  
  static ColumnConfig postAddressIds = ColumnConfig(
    key: 'postAddressIds',
    title: '邮寄地址',
    noJson: true,
    isArray: true,
  );

  /// province  
  static ColumnConfig province = ColumnConfig(
    key: 'province',
    title: 'province',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: User, index: number) =>{
    //  return province.renderColumn(record, null, text, index, province);
    //},
  );

  /// 省份 ID  
  static ColumnConfig provinceId = ColumnConfig(
    key: 'provinceId',
    title: '省份',
    // renderColumn: UIColumns.SelectRender,
    referConfig: ReferConfig(
      api: 'getProvinceOptions',
      referField: 'province',
    ),
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    nullTitle: '请选择',
    //render: (text: any, record: User, index: number) =>{
    //  return provinceId.renderColumn(record, null, text, index, provinceId);
    //},
  );

  /// 省份 s  
  static ColumnConfig provinceIds = ColumnConfig(
    key: 'provinceIds',
    title: '省份',
    noJson: true,
    isArray: true,
    referConfig: ReferConfig(
      api: 'getProvinceOptions',
      referField: 'provinces',
    ),
    nullTitle: '请选择',
  );

  /// remark  
  static ColumnConfig remark = ColumnConfig(
    key: 'remark',
    title: 'remark',
    // renderColumn: UIColumns.TextareaRender,
    rules: [
      ValidationRule(
        max: 65535,
        message: "最大不能超过{max}",
      ),
    ],
    nullTitle: '请选择',
    //render: (text: any, record: User, index: number) =>{
    //  return remark.renderColumn(record, null, text, index, remark);
    //},
  );

  /// remarkLike  
  static ColumnConfig remarkLike = ColumnConfig(
    key: 'remarkLike',
    title: 'remarkLike',
    noJson: true,
  );

  /// 用户角色 ADMIN,DEFAULT,DEVELOPER  
  static ColumnConfig roleType = ColumnConfig(
    key: 'roleType',
    title: '用户角色',
    // renderColumn: UIColumns.SelectRender,
    isEnum: true,
    referConfig: ReferConfig(
      options: RoleType.roleTypeOptions,
    ),
    rules: [
      ValidationRule(
        max: 32,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: User, index: number) =>{
    //  return roleType.renderColumn(record, null, text, index, roleType);
    //},
  );

  /// 用户角色 s  
  static ColumnConfig roleTypes = ColumnConfig(
    key: 'roleTypes',
    title: '用户角色',
    noJson: true,
    isEnum: true,
    isArray: true,
    referConfig: ReferConfig(
      options: RoleType.roleTypeOptions,
    ),
  );

  /// 性别  
  static ColumnConfig sex = ColumnConfig(
    key: 'sex',
    title: '性别',
    // renderColumn: UIColumns.SwitchRender,
    falseTitle: '女',
    nullTitle: '请选择',
    trueTitle: '男',
    //render: (text: any, record: User, index: number) =>{
    //  return sex.renderColumn(record, null, text, index, sex);
    //},
  );

  /// 状态 enum  
  static ColumnConfig status = ColumnConfig(
    key: 'status',
    title: '状态',
    // renderColumn: UIColumns.RadioGroupRender,
    isEnum: true,
    referConfig: ReferConfig(
      options: StatusEnum.statusEnumOptions,
    ),
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    nullTitle: '请选择',
    //render: (text: any, record: User, index: number) =>{
    //  return status.renderColumn(record, null, text, index, status);
    //},
  );

  /// 状态Like  
  static ColumnConfig statusLike = ColumnConfig(
    key: 'statusLike',
    title: '状态Like',
    noJson: true,
    isEnum: true,
    referConfig: ReferConfig(
      options: StatusEnum.statusEnumOptions,
    ),
  );

  /// 状态 s  
  static ColumnConfig statuss = ColumnConfig(
    key: 'statuss',
    title: '状态',
    noJson: true,
    isEnum: true,
    isArray: true,
    referConfig: ReferConfig(
      options: StatusEnum.statusEnumOptions,
    ),
    nullTitle: '请选择',
  );

  /// 更新时间  TIMESTAMP
  static ColumnConfig updateTime = ColumnConfig(
    key: 'updateTime',
    title: '更新时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: User, index: number) =>{
    //  return updateTime.renderColumn(record, null, text, index, updateTime);
    //},
  );

  /// 更新时间Max  TIMESTAMP
  static ColumnConfig updateTimeMax = ColumnConfig(
    key: 'updateTimeMax',
    title: '更新时间Max',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 更新时间Min  TIMESTAMP
  static ColumnConfig updateTimeMin = ColumnConfig(
    key: 'updateTimeMin',
    title: '更新时间Min',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 用户ID  
  static ColumnConfig userId = ColumnConfig(
    key: 'userId',
    title: '用户ID',
    // renderColumn: UIColumns.HiddenRender,
    isId: true,
    typeIsHidden: true,
    nullTitle: '请选择',
    //render: (text: any, record: User, index: number) =>{
    //  return userId.renderColumn(record, null, text, index, userId);
    //},
  );

  /// 用户ID s  
  static ColumnConfig userIds = ColumnConfig(
    key: 'userIds',
    title: '用户ID',
    noJson: true,
    isArray: true,
  );

  /// 用户名  
  static ColumnConfig username = ColumnConfig(
    key: 'username',
    title: '用户名',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        required: true,
        message: "不能为null",
      ),
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: User, index: number) =>{
    //  return username.renderColumn(record, null, text, index, username);
    //},
  );

  /// 用户名Like  
  static ColumnConfig usernameLike = ColumnConfig(
    key: 'usernameLike',
    title: '用户名Like',
    noJson: true,
  );

  /// 认证时间  TIMESTAMP
  static ColumnConfig valiDatetime = ColumnConfig(
    key: 'valiDatetime',
    title: '认证时间',
    // renderColumn: UIColumns.TimeStampRender,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: User, index: number) =>{
    //  return valiDatetime.renderColumn(record, null, text, index, valiDatetime);
    //},
  );

  /// 认证时间Max  TIMESTAMP
  static ColumnConfig valiDatetimeMax = ColumnConfig(
    key: 'valiDatetimeMax',
    title: '认证时间Max',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 认证时间Min  TIMESTAMP
  static ColumnConfig valiDatetimeMin = ColumnConfig(
    key: 'valiDatetimeMin',
    title: '认证时间Min',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 用户可访问的节点  
  static ColumnConfig visitsIds = ColumnConfig(
    key: 'visitsIds',
    title: '用户可访问的节点',
    noJson: true,
    isArray: true,
  );

  /// 工作时间  TIME
  static ColumnConfig workTime = ColumnConfig(
    key: 'workTime',
    title: '工作时间',
    // renderColumn: UIColumns.TimePickerRender,
    temporalType: TemporalType.TIME,
    format: TIME_FORMAT,
    //render: (text: any, record: User, index: number) =>{
    //  return workTime.renderColumn(record, null, text, index, workTime);
    //},
  );

  /// 工作时间Max  TIME
  static ColumnConfig workTimeMax = ColumnConfig(
    key: 'workTimeMax',
    title: '工作时间Max',
    noJson: true,
    temporalType: TemporalType.TIME,
    format: TIME_FORMAT,
  );

  /// 工作时间Min  TIME
  static ColumnConfig workTimeMin = ColumnConfig(
    key: 'workTimeMin',
    title: '工作时间Min',
    noJson: true,
    temporalType: TemporalType.TIME,
    format: TIME_FORMAT,
  );

}