///  Do not remove this unless you get business authorization.
///  User_detail_$username
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../enums/roletype.dart';
import '../enums/statusenum.dart';
import '../beans/user.dart';
import '../enums/roletype.dart';
import '../enums/statusenum.dart';
import '../columns/user_columns.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class User_detail_$usernameApiForms {
  /// 爱好 ids 
  static FormItemConfig update_hoppyIds = FormItemConfig.clone(UserColumns.hoppyIds)
    /// ..UIEditor__: UIEditors.BuildCheckboxGroupEditor
    /// ..Editor: UIEditors.BuildCheckboxGroupEditor
  ;
  /// 邮寄地址 
  static FormItemConfig update_cascaderPostAddressIds = FormItemConfig.clone(UserColumns.cascaderPostAddressIds)
    /// ..UIEditor__: UIEditors.BuildCascaderEditor
    /// ..Editor: UIEditors.BuildCascaderEditor
  ;
  /// 用户名 
  static FormItemConfig update_username = FormItemConfig.clone(UserColumns.username)
    /// ..UIEditor__: UIEditors.BuildInputEditor
    /// ..Editor: UIEditors.BuildInputEditor
  ;
  /// 密码，测试，明文 
  static FormItemConfig update_password = FormItemConfig(
    key: 'password',
    title: '密码',
    noJson: true,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    nullTitle: '请选择',

  )
    /// ..UIEditor__: UIEditors.BuildPasswordEditor
    /// ..Editor: UIEditors.BuildPasswordEditor
  ;
  /// 用户角色 ADMIN,DEFAULT,DEVELOPER 
  static FormItemConfig update_roleType = FormItemConfig.clone(UserColumns.roleType)
    /// ..UIEditor__: UIEditors.BuildSelectEditor
    /// ..Editor: UIEditors.BuildSelectEditor
  ;
  /// 姓名 
  static FormItemConfig update_name = FormItemConfig.clone(UserColumns.name)
    /// ..UIEditor__: UIEditors.BuildInputEditor
    /// ..Editor: UIEditors.BuildInputEditor
  ;
  /// 别名 
  static FormItemConfig update_nickName = FormItemConfig.clone(UserColumns.nickName)
    /// ..UIEditor__: UIEditors.BuildInputEditor
    /// ..Editor: UIEditors.BuildInputEditor
  ;
  /// 年龄 
  static FormItemConfig update_age = FormItemConfig.clone(UserColumns.age)
    /// ..UIEditor__: UIEditors.BuildNumberEditor
    /// ..Editor: UIEditors.BuildNumberEditor
  ;
  /// 详细地址 
  static FormItemConfig update_address = FormItemConfig.clone(UserColumns.address)
    /// ..UIEditor__: UIEditors.BuildInputEditor
    /// ..Editor: UIEditors.BuildInputEditor
  ;
  /// 头像 ID 
  static FormItemConfig update_avatarImgId = FormItemConfig.clone(UserColumns.avatarImgId)
    /// ..UIEditor__: UIEditors.BuildImageEditor
    /// ..Editor: UIEditors.BuildImageEditor
  ;
  /// 邮箱 
  static FormItemConfig update_email = FormItemConfig.clone(UserColumns.email)
    /// ..UIEditor__: UIEditors.BuildInputEditor
    /// ..Editor: UIEditors.BuildInputEditor
  ;
  /// 认证时间 TIMESTAMP
  static FormItemConfig update_valiDatetime = FormItemConfig.clone(UserColumns.valiDatetime)
    /// ..UIEditor__: UIEditors.BuildTimeStampEditor
    /// ..Editor: UIEditors.BuildTimeStampEditor
  ;
  /// 出生日期 DATE
  static FormItemConfig update_birthdayDate = FormItemConfig.clone(UserColumns.birthdayDate)
    /// ..UIEditor__: UIEditors.BuildDatePickerEditor
    /// ..Editor: UIEditors.BuildDatePickerEditor
  ;
  /// 工作时间 TIME
  static FormItemConfig update_workTime = FormItemConfig.clone(UserColumns.workTime)
    /// ..UIEditor__: UIEditors.BuildTimePickerEditor
    /// ..Editor: UIEditors.BuildTimePickerEditor
  ;
  /// 省份 ID 
  static FormItemConfig update_provinceId = FormItemConfig.clone(UserColumns.provinceId)
    /// ..UIEditor__: UIEditors.BuildSelectEditor
    /// ..Editor: UIEditors.BuildSelectEditor
  ;
  /// 城市 ID 
  static FormItemConfig update_cityId = FormItemConfig.clone(UserColumns.cityId)
    /// ..UIEditor__: UIEditors.BuildSelectEditor
    /// ..Editor: UIEditors.BuildSelectEditor
  ;
  /// 状态 enum 
  static FormItemConfig update_status = FormItemConfig.clone(UserColumns.status)
    /// ..UIEditor__: UIEditors.BuildRadioGroupEditor
    /// ..Editor: UIEditors.BuildRadioGroupEditor
  ;
  /// 级别 
  static FormItemConfig update_grade = FormItemConfig.clone(UserColumns.grade)
    /// ..UIEditor__: UIEditors.BuildRateEditor
    /// ..Editor: UIEditors.BuildRateEditor
  ;
  /// 性别 
  static FormItemConfig update_sex = FormItemConfig.clone(UserColumns.sex)
    /// ..UIEditor__: UIEditors.BuildSwitchEditor
    /// ..Editor: UIEditors.BuildSwitchEditor
  ;
  /// 邮寄地址 ID 
  static FormItemConfig update_postAddressId = FormItemConfig.clone(UserColumns.postAddressId)
    /// ..UIEditor__: UIEditors.BuildInputEditor
    /// ..Editor: UIEditors.BuildInputEditor
  ;
  /// 用户ID 
  static FormItemConfig update_userId = FormItemConfig.clone(UserColumns.userId)
    /// ..UIEditor__: UIEditors.BuildHiddenEditor
    /// ..Editor: UIEditors.BuildHiddenEditor
  ;

  /// Self-executing
  static void _updateConfirmChanges = confirmChanges([
      update_hoppyIds,
      update_cascaderPostAddressIds,
      update_username,
      update_password,
      update_roleType,
      update_name,
      update_nickName,
      update_age,
      update_address,
      update_avatarImgId,
      update_email,
      update_valiDatetime,
      update_birthdayDate,
      update_workTime,
      update_provinceId,
      update_cityId,
      update_status,
      update_grade,
      update_sex,
      update_postAddressId,
      update_userId,
    ]
  );

}