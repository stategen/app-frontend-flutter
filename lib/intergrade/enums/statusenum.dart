///  Do not remove this unless you get business authorization.
///  StatusEnum
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/class_as_enum.dart';

class StatusEnum extends ClassAsEnum<StatusEnum> {
  const StatusEnum(value, title) : super(value, title);

  /// 有效
  static const ACTIVE = StatusEnum("ACTIVE", '有效');

  /// 禁用
  static const FORBIDDEN = StatusEnum("FORBIDDEN", '禁用');

  /// 待审核
  static const PENDING = StatusEnum("PENDING", '待审核');

  static Map<String, StatusEnum> _map = {
    ACTIVE.value: ACTIVE,
    FORBIDDEN.value: FORBIDDEN,
    PENDING.value: PENDING
  };

  static StatusEnum fromJson(dynamic value) {
    return _map[value];
  }

  static List<StatusEnum> fromJsonList(List<dynamic> values){
    return JsonUtil.parseList(values, StatusEnum.fromJson);
  }

  static Map<String, Option> statusEnumOptions ={
    /// 有效
    'ACTIVE': Option(
      value: StatusEnum.ACTIVE,
      label: '有效',
    ),

    /// 禁用
    'FORBIDDEN': Option(
      value: StatusEnum.FORBIDDEN,
      label: '禁用',
    ),

    /// 待审核
    'PENDING': Option(
      value: StatusEnum.PENDING,
      label: '待审核',
    )

  };
}
