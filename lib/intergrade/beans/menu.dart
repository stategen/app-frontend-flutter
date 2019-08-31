///  Do not remove this unless you get business authorization.
///  Menu
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../enums/menutype.dart';
import '../enums/visitchecktype.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class Menu with FrontBean {
  /// menuId
  static const String Menu_ID = 'menuId';

  /// roleId
  String roleId;

  /// checked
  bool checked;

  /// menuId
  int menuId;

  /// morder
  int morder;

  /// menuId与bpid组成树图
  int bpid;

  /// 大部分情况下与bpid相同，当为动态目录时，mpid=-1
  int mpid;

  /// 对应的项目id
  String projectName;

  /// 对应后台系统controlle名称
  String controllerName;

  /// 对应后台系统method名称
  String methodName;

  /// 对应的api路径
  String url;

  /// icon
  String icon;

  /// name
  String name;

  /// route
  String route;

  /// menuType
  MenuType menuType;

  /// checkType
  VisitCheckType checkType;

  /// 数据创建时间
  DateTime createTime;

  /// 数据更新时间
  DateTime updateTime;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// menuId s
  List<int> menuIds;

  /// morderMin
  int morderMin;

  /// morderMax
  int morderMax;

  /// menuId与bpid组成树图 s
  List<int> bpids;

  /// 大部分情况下与bpid相同 s
  List<int> mpids;

  /// 对应的项目idLike
  String projectNameLike;

  /// 对应后台系统controlle名称Like
  String controllerNameLike;

  /// 对应后台系统method名称Like
  String methodNameLike;

  /// 对应的项目idnameLike
  String nameLike;

  /// routeLike
  String routeLike;

  /// menuType s
  List<MenuType> menuTypes;

  /// checkType s
  List<VisitCheckType> checkTypes;

  /// 数据创建时间Min
  DateTime createTimeMin;

  /// 数据创建时间Max
  DateTime createTimeMax;

  /// 数据更新时间Min
  DateTime updateTimeMin;

  /// 数据更新时间Max
  DateTime updateTimeMax;

  /// id,和MenuId相同，为了生成树
  int id;

  /// 打开顺序，前端model存储用
  int opendOrder;

  /// menuChildren
  List<Menu> menuChildren;

  Menu({
    this.roleId,
    this.checked,
    this.menuId,
    this.morder,
    this.bpid,
    this.mpid,
    this.projectName,
    this.controllerName,
    this.methodName,
    this.url,
    this.icon,
    this.name,
    this.route,
    this.menuType,
    this.checkType,
    this.createTime,
    this.updateTime,
    this.deleteFlag,
    this.menuIds,
    this.morderMin,
    this.morderMax,
    this.bpids,
    this.mpids,
    this.projectNameLike,
    this.controllerNameLike,
    this.methodNameLike,
    this.nameLike,
    this.routeLike,
    this.menuTypes,
    this.checkTypes,
    this.createTimeMin,
    this.createTimeMax,
    this.updateTimeMin,
    this.updateTimeMax,
    this.id,
    this.opendOrder,
    this.menuChildren,
  });

  static Menu fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Menu(
      roleId: JsonUtil.parseString(json['roleId']),
      checked: JsonUtil.parseBool(json['checked']),
      menuId: JsonUtil.parseInt(json['menuId']),
      morder: JsonUtil.parseInt(json['morder']),
      bpid: JsonUtil.parseInt(json['bpid']),
      mpid: JsonUtil.parseInt(json['mpid']),
      projectName: JsonUtil.parseString(json['projectName']),
      controllerName: JsonUtil.parseString(json['controllerName']),
      methodName: JsonUtil.parseString(json['methodName']),
      url: JsonUtil.parseString(json['url']),
      icon: JsonUtil.parseString(json['icon']),
      name: JsonUtil.parseString(json['name']),
      route: JsonUtil.parseString(json['route']),
      menuType: MenuType.fromJson(json['menuType']),
      checkType: VisitCheckType.fromJson(json['checkType']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      menuIds: JsonUtil.parseList<int>(json['menuIds'], JsonUtil.parseInt),
      morderMin: JsonUtil.parseInt(json['morderMin']),
      morderMax: JsonUtil.parseInt(json['morderMax']),
      bpids: JsonUtil.parseList<int>(json['bpids'], JsonUtil.parseInt),
      mpids: JsonUtil.parseList<int>(json['mpids'], JsonUtil.parseInt),
      projectNameLike: JsonUtil.parseString(json['projectNameLike']),
      controllerNameLike: JsonUtil.parseString(json['controllerNameLike']),
      methodNameLike: JsonUtil.parseString(json['methodNameLike']),
      nameLike: JsonUtil.parseString(json['nameLike']),
      routeLike: JsonUtil.parseString(json['routeLike']),
      menuTypes: MenuType.fromJsonList(json['menuTypes']),
      checkTypes: VisitCheckType.fromJsonList(json['checkTypes']),
      createTimeMin: JsonUtil.parseDateTime(json['createTimeMin']),
      createTimeMax: JsonUtil.parseDateTime(json['createTimeMax']),
      updateTimeMin: JsonUtil.parseDateTime(json['updateTimeMin']),
      updateTimeMax: JsonUtil.parseDateTime(json['updateTimeMax']),
      id: JsonUtil.parseInt(json['id']),
      opendOrder: JsonUtil.parseInt(json['opendOrder']),
      menuChildren: Menu.fromJsonList(json['menuChildren']),
    );
  }

  static List<Menu> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Menu.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.roleId != null) {
      result['roleId'] = JsonUtil.stringToJson(roleId);
    }
    if (this.checked != null) {
      result['checked'] = JsonUtil.boolToJson(checked);
    }
    if (this.menuId != null) {
      result['menuId'] = JsonUtil.intToJson(menuId);
    }
    if (this.morder != null) {
      result['morder'] = JsonUtil.intToJson(morder);
    }
    if (this.bpid != null) {
      result['bpid'] = JsonUtil.intToJson(bpid);
    }
    if (this.mpid != null) {
      result['mpid'] = JsonUtil.intToJson(mpid);
    }
    if (this.projectName != null) {
      result['projectName'] = JsonUtil.stringToJson(projectName);
    }
    if (this.controllerName != null) {
      result['controllerName'] = JsonUtil.stringToJson(controllerName);
    }
    if (this.methodName != null) {
      result['methodName'] = JsonUtil.stringToJson(methodName);
    }
    if (this.url != null) {
      result['url'] = JsonUtil.stringToJson(url);
    }
    if (this.icon != null) {
      result['icon'] = JsonUtil.stringToJson(icon);
    }
    if (this.name != null) {
      result['name'] = JsonUtil.stringToJson(name);
    }
    if (this.route != null) {
      result['route'] = JsonUtil.stringToJson(route);
    }
    if (this.menuType != null) {
      result['menuType'] = menuType.toString();
    }
    if (this.checkType != null) {
      result['checkType'] = checkType.toString();
    }
    if (this.createTime != null) {
      result['createTime'] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.updateTime != null) {
      result['updateTime'] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.deleteFlag != null) {
      result['deleteFlag'] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.menuIds != null) {
      var list = List();
      for (var v in menuIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['menuIds'] = list;
    }
    if (this.morderMin != null) {
      result['morderMin'] = JsonUtil.intToJson(morderMin);
    }
    if (this.morderMax != null) {
      result['morderMax'] = JsonUtil.intToJson(morderMax);
    }
    if (this.bpids != null) {
      var list = List();
      for (var v in bpids) {
        list.add(JsonUtil.intToJson(v));
      }
      result['bpids'] = list;
    }
    if (this.mpids != null) {
      var list = List();
      for (var v in mpids) {
        list.add(JsonUtil.intToJson(v));
      }
      result['mpids'] = list;
    }
    if (this.projectNameLike != null) {
      result['projectNameLike'] = JsonUtil.stringToJson(projectNameLike);
    }
    if (this.controllerNameLike != null) {
      result['controllerNameLike'] = JsonUtil.stringToJson(controllerNameLike);
    }
    if (this.methodNameLike != null) {
      result['methodNameLike'] = JsonUtil.stringToJson(methodNameLike);
    }
    if (this.nameLike != null) {
      result['nameLike'] = JsonUtil.stringToJson(nameLike);
    }
    if (this.routeLike != null) {
      result['routeLike'] = JsonUtil.stringToJson(routeLike);
    }
    if (this.menuTypes != null) {
      var list = List();
      for (var v in menuTypes) {
        list.add(v.toString());
      }
      result['menuTypes'] = list;
    }
    if (this.checkTypes != null) {
      var list = List();
      for (var v in checkTypes) {
        list.add(v.toString());
      }
      result['checkTypes'] = list;
    }
    if (this.createTimeMin != null) {
      result['createTimeMin'] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.createTimeMax != null) {
      result['createTimeMax'] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.updateTimeMin != null) {
      result['updateTimeMin'] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.updateTimeMax != null) {
      result['updateTimeMax'] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.id != null) {
      result['id'] = JsonUtil.intToJson(id);
    }
    if (this.opendOrder != null) {
      result['opendOrder'] = JsonUtil.intToJson(opendOrder);
    }
    if (this.menuChildren != null) {
      var list = List();
      for (var v in menuChildren) {
        list.add(v.toMap());
      }
      result['menuChildren'] = list;
    }
    return result;
  }

  static Map<int, Menu> toIdMap(List<Menu> menuList) {
    var result = Map<int, Menu>();
    if (menuList != null) {
      for (var menu in menuList) {
        if (menu != null) {
          result[menu.menuId] = menu;
        }
      }
    }
    return result;
  }

  static List<Map<String, dynamic>> toMaps(List<Menu> menuList) {
    var result = List<Map<String, dynamic>>();
    if (menuList != null) {
      for (var menu in menuList) {
        if (menu != null) {
          result.add(menu.toMap());
        }
      }
    }
    return result;
  }

}

