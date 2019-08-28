///  Do not remove this unless you get business authorization.
///  MenuType
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../../stgutil/json_util.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/class_as_enum.dart';

class MenuType extends ClassAsEnum<MenuType> {
  const MenuType(value, title) : super(value, title);

  /// NONE
  static const NONE = MenuType("NONE", 'NONE');

  /// MENU
  static const MENU = MenuType("MENU", 'MENU');

  /// DYNAMIC
  static const DYNAMIC = MenuType("DYNAMIC", 'DYNAMIC');

  /// API_PATH
  static const API_PATH = MenuType("API_PATH", 'API_PATH');

  static Map<String, MenuType> _map = {
    NONE.value: NONE,
    MENU.value: MENU,
    DYNAMIC.value: DYNAMIC,
    API_PATH.value: API_PATH
  };

  static MenuType fromJson(dynamic value) {
    return _map[value];
  }

  static List<MenuType> fromJsonList(List<dynamic> values){
    return JsonUtil.parseList(values, MenuType.fromJson);
  }

  static Map<String, Option> menuTypeOptions ={
    /// NONE
    'NONE': Option(
      value: MenuType.NONE,
      label: 'NONE',
    ),

    /// MENU
    'MENU': Option(
      value: MenuType.MENU,
      label: 'MENU',
    ),

    /// DYNAMIC
    'DYNAMIC': Option(
      value: MenuType.DYNAMIC,
      label: 'DYNAMIC',
    ),

    /// API_PATH
    'API_PATH': Option(
      value: MenuType.API_PATH,
      label: 'API_PATH',
    )

  };
}
