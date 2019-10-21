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

  /// menuId与bpid组成树图
  int bpid;

  /// menuId与bpid组成树图 s
  List<int> bpids;

  /// checkType
  VisitCheckType checkType;

  /// checkType s
  List<VisitCheckType> checkTypes;

  /// checked
  bool checked;

  /// 对应后台系统controlle名称
  String controllerName;

  /// 对应后台系统controlle名称Like
  String controllerNameLike;

  /// 数据创建时间
  DateTime createTime;

  /// 数据创建时间Max
  DateTime createTimeMax;

  /// 数据创建时间Min
  DateTime createTimeMin;

  /// 是否删除(0:正常，1删除)
  int deleteFlag;

  /// icon
  String icon;

  /// id,和MenuId相同，为了生成树
  int id;

  /// menuChildren
  List<Menu> menuChildren;

  /// menuId
  int menuId;

  /// menuId s
  List<int> menuIds;

  /// menuType
  MenuType menuType;

  /// menuType s
  List<MenuType> menuTypes;

  /// 对应后台系统method名称
  String methodName;

  /// 对应后台系统method名称Like
  String methodNameLike;

  /// morder
  int morder;

  /// morderMax
  int morderMax;

  /// morderMin
  int morderMin;

  /// 大部分情况下与bpid相同，当为动态目录时，mpid=-1
  int mpid;

  /// 大部分情况下与bpid相同 s
  List<int> mpids;

  /// name
  String name;

  /// 对应的项目idnameLike
  String nameLike;

  /// 打开顺序，前端model存储用
  int opendOrder;

  /// 对应的项目id
  String projectName;

  /// 对应的项目idLike
  String projectNameLike;

  /// roleId
  String roleId;

  /// route
  String route;

  /// routeLike
  String routeLike;

  /// 数据更新时间
  DateTime updateTime;

  /// 数据更新时间Max
  DateTime updateTimeMax;

  /// 数据更新时间Min
  DateTime updateTimeMin;

  /// 对应的api路径
  String url;

  Menu({
    this.bpid,
    this.bpids,
    this.checkType,
    this.checkTypes,
    this.checked,
    this.controllerName,
    this.controllerNameLike,
    this.createTime,
    this.createTimeMax,
    this.createTimeMin,
    this.deleteFlag,
    this.icon,
    this.id,
    this.menuChildren,
    this.menuId,
    this.menuIds,
    this.menuType,
    this.menuTypes,
    this.methodName,
    this.methodNameLike,
    this.morder,
    this.morderMax,
    this.morderMin,
    this.mpid,
    this.mpids,
    this.name,
    this.nameLike,
    this.opendOrder,
    this.projectName,
    this.projectNameLike,
    this.roleId,
    this.route,
    this.routeLike,
    this.updateTime,
    this.updateTimeMax,
    this.updateTimeMin,
    this.url,
  });

  static Menu fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }
    return Menu(
      bpid: JsonUtil.parseInt(json['bpid']),
      checkType: VisitCheckType.fromJson(json['checkType']),
      checked: JsonUtil.parseBool(json['checked']),
      controllerName: JsonUtil.parseString(json['controllerName']),
      createTime: JsonUtil.parseDateTime(json['createTime']),
      deleteFlag: JsonUtil.parseInt(json['deleteFlag']),
      icon: JsonUtil.parseString(json['icon']),
      id: JsonUtil.parseInt(json['id']),
      menuChildren: Menu.fromJsonList(json['menuChildren']),
      menuId: JsonUtil.parseInt(json['menuId']),
      menuType: MenuType.fromJson(json['menuType']),
      methodName: JsonUtil.parseString(json['methodName']),
      morder: JsonUtil.parseInt(json['morder']),
      mpid: JsonUtil.parseInt(json['mpid']),
      name: JsonUtil.parseString(json['name']),
      opendOrder: JsonUtil.parseInt(json['opendOrder']),
      projectName: JsonUtil.parseString(json['projectName']),
      roleId: JsonUtil.parseString(json['roleId']),
      route: JsonUtil.parseString(json['route']),
      updateTime: JsonUtil.parseDateTime(json['updateTime']),
      url: JsonUtil.parseString(json['url']),
    );
  }

  static List<Menu> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Menu.fromJson);
  }

  Map<String, dynamic> toMap() {
    var result = new Map<String, dynamic>();
    if (this.bpid != null) {
      result['bpid'] = JsonUtil.intToJson(bpid);
    }
    if (this.bpids != null) {
      var list = List();
      for (var v in bpids) {
        list.add(JsonUtil.intToJson(v));
      }
      result['bpids'] = list;
    }
    if (this.checkType != null) {
      result['checkType'] = checkType.toString();
    }
    if (this.checkTypes != null) {
      var list = List();
      for (var v in checkTypes) {
        list.add(v.toString());
      }
      result['checkTypes'] = list;
    }
    if (this.checked != null) {
      result['checked'] = JsonUtil.boolToJson(checked);
    }
    if (this.controllerName != null) {
      result['controllerName'] = JsonUtil.stringToJson(controllerName);
    }
    if (this.controllerNameLike != null) {
      result['controllerNameLike'] = JsonUtil.stringToJson(controllerNameLike);
    }
    if (this.createTime != null) {
      result['createTime'] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result['createTimeMax'] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result['createTimeMin'] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result['deleteFlag'] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.icon != null) {
      result['icon'] = JsonUtil.stringToJson(icon);
    }
    if (this.id != null) {
      result['id'] = JsonUtil.intToJson(id);
    }
    if (this.menuChildren != null) {
      var list = List();
      for (var v in menuChildren) {
        list.add(v.toMap());
      }
      result['menuChildren'] = list;
    }
    if (this.menuId != null) {
      result['menuId'] = JsonUtil.intToJson(menuId);
    }
    if (this.menuIds != null) {
      var list = List();
      for (var v in menuIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result['menuIds'] = list;
    }
    if (this.menuType != null) {
      result['menuType'] = menuType.toString();
    }
    if (this.menuTypes != null) {
      var list = List();
      for (var v in menuTypes) {
        list.add(v.toString());
      }
      result['menuTypes'] = list;
    }
    if (this.methodName != null) {
      result['methodName'] = JsonUtil.stringToJson(methodName);
    }
    if (this.methodNameLike != null) {
      result['methodNameLike'] = JsonUtil.stringToJson(methodNameLike);
    }
    if (this.morder != null) {
      result['morder'] = JsonUtil.intToJson(morder);
    }
    if (this.morderMax != null) {
      result['morderMax'] = JsonUtil.intToJson(morderMax);
    }
    if (this.morderMin != null) {
      result['morderMin'] = JsonUtil.intToJson(morderMin);
    }
    if (this.mpid != null) {
      result['mpid'] = JsonUtil.intToJson(mpid);
    }
    if (this.mpids != null) {
      var list = List();
      for (var v in mpids) {
        list.add(JsonUtil.intToJson(v));
      }
      result['mpids'] = list;
    }
    if (this.name != null) {
      result['name'] = JsonUtil.stringToJson(name);
    }
    if (this.nameLike != null) {
      result['nameLike'] = JsonUtil.stringToJson(nameLike);
    }
    if (this.opendOrder != null) {
      result['opendOrder'] = JsonUtil.intToJson(opendOrder);
    }
    if (this.projectName != null) {
      result['projectName'] = JsonUtil.stringToJson(projectName);
    }
    if (this.projectNameLike != null) {
      result['projectNameLike'] = JsonUtil.stringToJson(projectNameLike);
    }
    if (this.roleId != null) {
      result['roleId'] = JsonUtil.stringToJson(roleId);
    }
    if (this.route != null) {
      result['route'] = JsonUtil.stringToJson(route);
    }
    if (this.routeLike != null) {
      result['routeLike'] = JsonUtil.stringToJson(routeLike);
    }
    if (this.updateTime != null) {
      result['updateTime'] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result['updateTimeMax'] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result['updateTimeMin'] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.url != null) {
      result['url'] = JsonUtil.stringToJson(url);
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

