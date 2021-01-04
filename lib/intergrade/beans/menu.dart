///  Do not remove this unless you get business authorization.
///  Menu
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../enums/menutype.dart';
import '../enums/visitchecktype.dart';
import '../../stgutil/json_util.dart';
import '../../stgutil/front_bean.dart';

class MenuFields {
  static const bpid = 'bpid';
  static const bpidMax = 'bpidMax';
  static const bpidMin = 'bpidMin';
  static const bpids = 'bpids';
  static const checkType = 'checkType';
  static const checkTypes = 'checkTypes';
  static const checked = 'checked';
  static const controllerName = 'controllerName';
  static const controllerNameLike = 'controllerNameLike';
  static const createTime = 'createTime';
  static const createTimeMax = 'createTimeMax';
  static const createTimeMin = 'createTimeMin';
  static const deleteFlag = 'deleteFlag';
  static const icon = 'icon';
  static const id = 'id';
  static const menuChildren = 'menuChildren';
  static const menuId = 'menuId';
  static const menuIds = 'menuIds';
  static const menuType = 'menuType';
  static const menuTypes = 'menuTypes';
  static const methodName = 'methodName';
  static const methodNameLike = 'methodNameLike';
  static const morder = 'morder';
  static const morderMax = 'morderMax';
  static const morderMin = 'morderMin';
  static const mpid = 'mpid';
  static const mpidMax = 'mpidMax';
  static const mpidMin = 'mpidMin';
  static const mpids = 'mpids';
  static const name = 'name';
  static const nameLike = 'nameLike';
  static const opendOrder = 'opendOrder';
  static const projectName = 'projectName';
  static const projectNameLike = 'projectNameLike';
  static const roleId = 'roleId';
  static const route = 'route';
  static const routeLike = 'routeLike';
  static const updateTime = 'updateTime';
  static const updateTimeMax = 'updateTimeMax';
  static const updateTimeMin = 'updateTimeMin';
  static const url = 'url';
}

class Menu with FrontBean {
  /// menuId
  static const String ID = MenuFields.menuId;

  /// menuId与bpid组成树图
  int bpid;

  /// menuId与bpid组成树图Max
  int bpidMax;

  /// menuId与bpid组成树图Min
  int bpidMin;

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

  /// 大部分情况下与bpid相同Max
  int mpidMax;

  /// 大部分情况下与bpid相同Min
  int mpidMin;

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
    this.bpidMax,
    this.bpidMin,
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
    this.mpidMax,
    this.mpidMin,
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
      bpid: JsonUtil.parseInt(json[MenuFields.bpid]),
      checkType: VisitCheckType.fromJson(json[MenuFields.checkType]),
      checked: JsonUtil.parseBool(json[MenuFields.checked]),
      controllerName: JsonUtil.parseString(json[MenuFields.controllerName]),
      createTime: JsonUtil.parseDateTime(json[MenuFields.createTime]),
      deleteFlag: JsonUtil.parseInt(json[MenuFields.deleteFlag]),
      icon: JsonUtil.parseString(json[MenuFields.icon]),
      id: JsonUtil.parseInt(json[MenuFields.id]),
      menuChildren: Menu.fromJsonList(json[MenuFields.menuChildren]),
      menuId: JsonUtil.parseInt(json[MenuFields.menuId]),
      menuType: MenuType.fromJson(json[MenuFields.menuType]),
      methodName: JsonUtil.parseString(json[MenuFields.methodName]),
      morder: JsonUtil.parseInt(json[MenuFields.morder]),
      mpid: JsonUtil.parseInt(json[MenuFields.mpid]),
      name: JsonUtil.parseString(json[MenuFields.name]),
      opendOrder: JsonUtil.parseInt(json[MenuFields.opendOrder]),
      projectName: JsonUtil.parseString(json[MenuFields.projectName]),
      roleId: JsonUtil.parseString(json[MenuFields.roleId]),
      route: JsonUtil.parseString(json[MenuFields.route]),
      updateTime: JsonUtil.parseDateTime(json[MenuFields.updateTime]),
      url: JsonUtil.parseString(json[MenuFields.url]),
    );
  }

  static List<Menu> fromJsonList(List jsonList) {
    return JsonUtil.genFromJsonList(jsonList, Menu.fromJson);
  }

  /// jsonEncode会调用这个方法
  @override
  Map<String, dynamic> toJson() {
    var result = Map<String, dynamic>();
    if (this.bpid != null) {
      result[MenuFields.bpid] = JsonUtil.intToJson(bpid);
    }
    if (this.bpidMax != null) {
      result[MenuFields.bpidMax] = JsonUtil.intToJson(bpidMax);
    }
    if (this.bpidMin != null) {
      result[MenuFields.bpidMin] = JsonUtil.intToJson(bpidMin);
    }
    if (this.bpids != null) {
      var list = List();
      for (var v in bpids) {
        list.add(JsonUtil.intToJson(v));
      }
      result[MenuFields.bpids] = list;
    }
    if (this.checkType != null) {
      result[MenuFields.checkType] = checkType.toString();
    }
    if (this.checkTypes != null) {
      var list = List();
      for (var v in checkTypes) {
        list.add(v.toString());
      }
      result[MenuFields.checkTypes] = list;
    }
    if (this.checked != null) {
      result[MenuFields.checked] = JsonUtil.boolToJson(checked);
    }
    if (this.controllerName != null) {
      result[MenuFields.controllerName] = JsonUtil.stringToJson(controllerName);
    }
    if (this.controllerNameLike != null) {
      result[MenuFields.controllerNameLike] = JsonUtil.stringToJson(controllerNameLike);
    }
    if (this.createTime != null) {
      result[MenuFields.createTime] = JsonUtil.dateTimeToJson(createTime);
    }
    if (this.createTimeMax != null) {
      result[MenuFields.createTimeMax] = JsonUtil.dateTimeToJson(createTimeMax);
    }
    if (this.createTimeMin != null) {
      result[MenuFields.createTimeMin] = JsonUtil.dateTimeToJson(createTimeMin);
    }
    if (this.deleteFlag != null) {
      result[MenuFields.deleteFlag] = JsonUtil.intToJson(deleteFlag);
    }
    if (this.icon != null) {
      result[MenuFields.icon] = JsonUtil.stringToJson(icon);
    }
    if (this.id != null) {
      result[MenuFields.id] = JsonUtil.intToJson(id);
    }
    if (this.menuChildren != null) {
      var list = List();
      for (var v in menuChildren) {
        list.add(v.toJson());
      }
      result[MenuFields.menuChildren] = list;
    }
    if (this.menuId != null) {
      result[MenuFields.menuId] = JsonUtil.intToJson(menuId);
    }
    if (this.menuIds != null) {
      var list = List();
      for (var v in menuIds) {
        list.add(JsonUtil.intToJson(v));
      }
      result[MenuFields.menuIds] = list;
    }
    if (this.menuType != null) {
      result[MenuFields.menuType] = menuType.toString();
    }
    if (this.menuTypes != null) {
      var list = List();
      for (var v in menuTypes) {
        list.add(v.toString());
      }
      result[MenuFields.menuTypes] = list;
    }
    if (this.methodName != null) {
      result[MenuFields.methodName] = JsonUtil.stringToJson(methodName);
    }
    if (this.methodNameLike != null) {
      result[MenuFields.methodNameLike] = JsonUtil.stringToJson(methodNameLike);
    }
    if (this.morder != null) {
      result[MenuFields.morder] = JsonUtil.intToJson(morder);
    }
    if (this.morderMax != null) {
      result[MenuFields.morderMax] = JsonUtil.intToJson(morderMax);
    }
    if (this.morderMin != null) {
      result[MenuFields.morderMin] = JsonUtil.intToJson(morderMin);
    }
    if (this.mpid != null) {
      result[MenuFields.mpid] = JsonUtil.intToJson(mpid);
    }
    if (this.mpidMax != null) {
      result[MenuFields.mpidMax] = JsonUtil.intToJson(mpidMax);
    }
    if (this.mpidMin != null) {
      result[MenuFields.mpidMin] = JsonUtil.intToJson(mpidMin);
    }
    if (this.mpids != null) {
      var list = List();
      for (var v in mpids) {
        list.add(JsonUtil.intToJson(v));
      }
      result[MenuFields.mpids] = list;
    }
    if (this.name != null) {
      result[MenuFields.name] = JsonUtil.stringToJson(name);
    }
    if (this.nameLike != null) {
      result[MenuFields.nameLike] = JsonUtil.stringToJson(nameLike);
    }
    if (this.opendOrder != null) {
      result[MenuFields.opendOrder] = JsonUtil.intToJson(opendOrder);
    }
    if (this.projectName != null) {
      result[MenuFields.projectName] = JsonUtil.stringToJson(projectName);
    }
    if (this.projectNameLike != null) {
      result[MenuFields.projectNameLike] = JsonUtil.stringToJson(projectNameLike);
    }
    if (this.roleId != null) {
      result[MenuFields.roleId] = JsonUtil.stringToJson(roleId);
    }
    if (this.route != null) {
      result[MenuFields.route] = JsonUtil.stringToJson(route);
    }
    if (this.routeLike != null) {
      result[MenuFields.routeLike] = JsonUtil.stringToJson(routeLike);
    }
    if (this.updateTime != null) {
      result[MenuFields.updateTime] = JsonUtil.dateTimeToJson(updateTime);
    }
    if (this.updateTimeMax != null) {
      result[MenuFields.updateTimeMax] = JsonUtil.dateTimeToJson(updateTimeMax);
    }
    if (this.updateTimeMin != null) {
      result[MenuFields.updateTimeMin] = JsonUtil.dateTimeToJson(updateTimeMin);
    }
    if (this.url != null) {
      result[MenuFields.url] = JsonUtil.stringToJson(url);
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

}

