///  Do not remove this unless you get business authorization.
///  RoleType
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/class_as_enum.dart';

class RoleType extends ClassAsEnum<RoleType> {
  const RoleType(value, title) : super(value, title);

  /// 管理员
  static const ADMIN = RoleType("ADMIN", '管理员');

  /// 默认角色
  static const DEFAULT = RoleType("DEFAULT", '默认角色');

  /// 开发人员
  static const DEVELOPER = RoleType("DEVELOPER", '开发人员');

  static Map<String, RoleType> _map = {
    ADMIN.value: ADMIN,
    DEFAULT.value: DEFAULT,
    DEVELOPER.value: DEVELOPER
  };

  static RoleType fromJson(dynamic value) {
    return _map[value];
  }

  static List<RoleType> fromJsonList(List<dynamic> values){
    return JsonUtil.parseList(values, RoleType.fromJson);
  }

  static Map<String, Option> roleTypeOptions ={
    /// 管理员
    'ADMIN': Option(
      value: RoleType.ADMIN,
      label: '管理员',
    ),

    /// 默认角色
    'DEFAULT': Option(
      value: RoleType.DEFAULT,
      label: '默认角色',
    ),

    /// 开发人员
    'DEVELOPER': Option(
      value: RoleType.DEVELOPER,
      label: '开发人员',
    )

  };
}
