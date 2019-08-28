///  Do not remove this unless you get business authorization.
///  RegionType
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/class_as_enum.dart';

class RegionType extends ClassAsEnum<RegionType> {
  const RegionType(value, title) : super(value, title);

  /// STATES
  static const STATES = RegionType("STATES", 'STATES');

  /// COUNTRY
  static const COUNTRY = RegionType("COUNTRY", 'COUNTRY');

  /// PROVINCE
  static const PROVINCE = RegionType("PROVINCE", 'PROVINCE');

  /// DISTRICT
  static const DISTRICT = RegionType("DISTRICT", 'DISTRICT');

  static Map<String, RegionType> _map = {
    STATES.value: STATES,
    COUNTRY.value: COUNTRY,
    PROVINCE.value: PROVINCE,
    DISTRICT.value: DISTRICT
  };

  static RegionType fromJson(dynamic value) {
    return _map[value];
  }

  static List<RegionType> fromJsonList(List<dynamic> values){
    return JsonUtil.parseList(values, RegionType.fromJson);
  }

  static Map<String, Option> regionTypeOptions ={
    /// STATES
    'STATES': Option(
      value: RegionType.STATES,
      label: 'STATES',
    ),

    /// COUNTRY
    'COUNTRY': Option(
      value: RegionType.COUNTRY,
      label: 'COUNTRY',
    ),

    /// PROVINCE
    'PROVINCE': Option(
      value: RegionType.PROVINCE,
      label: 'PROVINCE',
    ),

    /// DISTRICT
    'DISTRICT': Option(
      value: RegionType.DISTRICT,
      label: 'DISTRICT',
    )

  };
}
