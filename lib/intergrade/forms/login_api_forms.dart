///  Do not remove this unless you get business authorization.
///  Login
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/simpleresponse.dart';
import '../beans/user.dart';
import '../columns/simpleresponse_columns.dart';
import '../columns/user_columns.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class LoginApiForms {
  /// 用户名 
  static FormItemConfig login_username = FormItemConfig(
    key: 'username',
    title: '用户名',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        required: true,
        message: "不能为null",
      ),
      ValidationRule(
        required: true,
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],

  )
    /// ..UIEditor__: UIEditors.BuildInputEditor
    /// ..Editor: UIEditors.BuildInputEditor
  ;
  /// 密码 
  static FormItemConfig login_password = FormItemConfig(
    key: 'password',
    title: '密码',
    noJson: true,
    rules: [
      ValidationRule(
        required: true,
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    nullTitle: '请选择',

  )
    /// ..UIEditor__: UIEditors.BuildPasswordEditor
    /// ..Editor: UIEditors.BuildPasswordEditor
  ;

  /// Self-executing
  static void _loginConfirmChanges = confirmChanges([
      login_username,
      login_password,
    ]
  );
  /// 国际区号 
  static FormItemConfig loginByMobile_interCode = FormItemConfig(
    key: 'interCode',
    title: '国际区号',
    // renderColumn: UIColumns.InputRender,

  )
    /// ..UIEditor__: UIEditors.BuildInputEditor
    /// ..Editor: UIEditors.BuildInputEditor
  ;
  /// 手机号 
  static FormItemConfig loginByMobile_mobile = FormItemConfig(
    key: 'mobile',
    title: '手机号',
    // renderColumn: UIColumns.InputRender,

  )
    /// ..UIEditor__: UIEditors.BuildInputEditor
    /// ..Editor: UIEditors.BuildInputEditor
  ;
  /// 密码 
  static FormItemConfig loginByMobile_password = FormItemConfig(
    key: 'password',
    title: '密码',
    // renderColumn: UIColumns.InputRender,

  )
    /// ..UIEditor__: UIEditors.BuildInputEditor
    /// ..Editor: UIEditors.BuildInputEditor
  ;

  /// Self-executing
  static void _loginByMobileConfirmChanges = confirmChanges([
      loginByMobile_interCode,
      loginByMobile_mobile,
      loginByMobile_password,
    ]
  );

}