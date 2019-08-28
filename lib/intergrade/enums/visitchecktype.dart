///  Do not remove this unless you get business authorization.
///  VisitCheckType
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/class_as_enum.dart';

class VisitCheckType extends ClassAsEnum<VisitCheckType> {
  const VisitCheckType(value, title) : super(value, title);

  /// VISIT_CHECK
  static const VISIT_CHECK = VisitCheckType("VISIT_CHECK", 'VISIT_CHECK');

  /// NONE
  static const NONE = VisitCheckType("NONE", 'NONE');

  static Map<String, VisitCheckType> _map = {
    VISIT_CHECK.value: VISIT_CHECK,
    NONE.value: NONE
  };

  static VisitCheckType fromJson(dynamic value) {
    return _map[value];
  }

  static List<VisitCheckType> fromJsonList(List<dynamic> values){
    return JsonUtil.parseList(values, VisitCheckType.fromJson);
  }

  static Map<String, Option> visitCheckTypeOptions ={
    /// VISIT_CHECK
    'VISIT_CHECK': Option(
      value: VisitCheckType.VISIT_CHECK,
      label: 'VISIT_CHECK',
    ),

    /// NONE
    'NONE': Option(
      value: VisitCheckType.NONE,
      label: 'NONE',
    )

  };
}
