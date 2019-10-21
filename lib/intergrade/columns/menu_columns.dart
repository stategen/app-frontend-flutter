///  Do not remove this unless you get business authorization.
///  Menu
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/menu.dart';
import '../enums/menutype.dart';
import '../enums/visitchecktype.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class MenuColumns{

  /// menuId与bpid组成树图  
  static ColumnConfig bpid = ColumnConfig(
    key: 'bpid',
    title: 'menuId与bpid组成树图',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Menu, index: number) =>{
    //  return bpid.renderColumn(record, null, text, index, bpid);
    //},
  );

  /// menuId与bpid组成树图 s  
  static ColumnConfig bpids = ColumnConfig(
    key: 'bpids',
    title: 'menuId与bpid组成树图',
    noJson: true,
    isArray: true,
  );

  /// checkType  
  static ColumnConfig checkType = ColumnConfig(
    key: 'checkType',
    title: 'checkType',
    // renderColumn: UIColumns.SelectRender,
    isEnum: true,
    referConfig: ReferConfig(
      options: VisitCheckType.visitCheckTypeOptions,
    ),
    //render: (text: any, record: Menu, index: number) =>{
    //  return checkType.renderColumn(record, null, text, index, checkType);
    //},
  );

  /// checkType s  
  static ColumnConfig checkTypes = ColumnConfig(
    key: 'checkTypes',
    title: 'checkType',
    noJson: true,
    isEnum: true,
    isArray: true,
    referConfig: ReferConfig(
      options: VisitCheckType.visitCheckTypeOptions,
    ),
  );

  /// checked  
  static ColumnConfig checked = ColumnConfig(
    key: 'checked',
    title: 'checked',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Menu, index: number) =>{
    //  return checked.renderColumn(record, null, text, index, checked);
    //},
  );

  /// 对应后台系统controlle名称  
  static ColumnConfig controllerName = ColumnConfig(
    key: 'controllerName',
    title: '对应后台系统controlle名称',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Menu, index: number) =>{
    //  return controllerName.renderColumn(record, null, text, index, controllerName);
    //},
  );

  /// 对应后台系统controlle名称Like  
  static ColumnConfig controllerNameLike = ColumnConfig(
    key: 'controllerNameLike',
    title: '对应后台系统controlle名称Like',
    noJson: true,
  );

  /// 数据创建时间  TIMESTAMP
  static ColumnConfig createTime = ColumnConfig(
    key: 'createTime',
    title: '数据创建时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: Menu, index: number) =>{
    //  return createTime.renderColumn(record, null, text, index, createTime);
    //},
  );

  /// 数据创建时间Max  TIMESTAMP
  static ColumnConfig createTimeMax = ColumnConfig(
    key: 'createTimeMax',
    title: '数据创建时间Max',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 数据创建时间Min  TIMESTAMP
  static ColumnConfig createTimeMin = ColumnConfig(
    key: 'createTimeMin',
    title: '数据创建时间Min',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 是否删除(0:正常，1删除)  
  static ColumnConfig deleteFlag = ColumnConfig(
    key: 'deleteFlag',
    title: '是否删除(0:正常',
    // renderColumn: UIColumns.InputRender,
    hidden: true,
    //render: (text: any, record: Menu, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// icon  
  static ColumnConfig icon = ColumnConfig(
    key: 'icon',
    title: 'icon',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Menu, index: number) =>{
    //  return icon.renderColumn(record, null, text, index, icon);
    //},
  );

  /// id,和MenuId相同，为了生成树  
  static ColumnConfig id = ColumnConfig(
    key: 'id',
    title: 'id',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Menu, index: number) =>{
    //  return id.renderColumn(record, null, text, index, id);
    //},
  );

  /// menuChildren  
  static ColumnConfig menuChildren = ColumnConfig(
    key: 'menuChildren',
    title: 'menuChildren',
    // renderColumn: UIColumns.InputRender,
    isArray: true,
    //render: (text: any, record: Menu, index: number) =>{
    //  return menuChildren.renderColumn(record, null, text, index, menuChildren);
    //},
  );

  /// menuId  
  static ColumnConfig menuId = ColumnConfig(
    key: 'menuId',
    title: 'menuId',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    //render: (text: any, record: Menu, index: number) =>{
    //  return menuId.renderColumn(record, null, text, index, menuId);
    //},
  );

  /// menuId s  
  static ColumnConfig menuIds = ColumnConfig(
    key: 'menuIds',
    title: 'menuId',
    noJson: true,
    isArray: true,
  );

  /// menuType  
  static ColumnConfig menuType = ColumnConfig(
    key: 'menuType',
    title: 'menuType',
    // renderColumn: UIColumns.SelectRender,
    isEnum: true,
    referConfig: ReferConfig(
      options: MenuType.menuTypeOptions,
    ),
    //render: (text: any, record: Menu, index: number) =>{
    //  return menuType.renderColumn(record, null, text, index, menuType);
    //},
  );

  /// menuType s  
  static ColumnConfig menuTypes = ColumnConfig(
    key: 'menuTypes',
    title: 'menuType',
    noJson: true,
    isEnum: true,
    isArray: true,
    referConfig: ReferConfig(
      options: MenuType.menuTypeOptions,
    ),
  );

  /// 对应后台系统method名称  
  static ColumnConfig methodName = ColumnConfig(
    key: 'methodName',
    title: '对应后台系统method名称',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Menu, index: number) =>{
    //  return methodName.renderColumn(record, null, text, index, methodName);
    //},
  );

  /// 对应后台系统method名称Like  
  static ColumnConfig methodNameLike = ColumnConfig(
    key: 'methodNameLike',
    title: '对应后台系统method名称Like',
    noJson: true,
  );

  /// morder  
  static ColumnConfig morder = ColumnConfig(
    key: 'morder',
    title: 'morder',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Menu, index: number) =>{
    //  return morder.renderColumn(record, null, text, index, morder);
    //},
  );

  /// morderMax  
  static ColumnConfig morderMax = ColumnConfig(
    key: 'morderMax',
    title: 'morderMax',
    noJson: true,
  );

  /// morderMin  
  static ColumnConfig morderMin = ColumnConfig(
    key: 'morderMin',
    title: 'morderMin',
    noJson: true,
  );

  /// 大部分情况下与bpid相同，当为动态目录时，mpid=-1  
  static ColumnConfig mpid = ColumnConfig(
    key: 'mpid',
    title: '大部分情况下与bpid相同',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Menu, index: number) =>{
    //  return mpid.renderColumn(record, null, text, index, mpid);
    //},
  );

  /// 大部分情况下与bpid相同 s  
  static ColumnConfig mpids = ColumnConfig(
    key: 'mpids',
    title: '大部分情况下与bpid相同',
    noJson: true,
    isArray: true,
  );

  /// name  
  static ColumnConfig name = ColumnConfig(
    key: 'name',
    title: 'name',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Menu, index: number) =>{
    //  return name.renderColumn(record, null, text, index, name);
    //},
  );

  /// 对应的项目idnameLike  
  static ColumnConfig nameLike = ColumnConfig(
    key: 'nameLike',
    title: '对应的项目idnameLike',
    noJson: true,
  );

  /// 打开顺序，前端model存储用  
  static ColumnConfig opendOrder = ColumnConfig(
    key: 'opendOrder',
    title: '打开顺序',
    // renderColumn: UIColumns.InputRender,
    hidden: true,
    //render: (text: any, record: Menu, index: number) =>{
    //  return opendOrder.renderColumn(record, null, text, index, opendOrder);
    //},
  );

  /// 对应的项目id  
  static ColumnConfig projectName = ColumnConfig(
    key: 'projectName',
    title: '对应的项目id',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Menu, index: number) =>{
    //  return projectName.renderColumn(record, null, text, index, projectName);
    //},
  );

  /// 对应的项目idLike  
  static ColumnConfig projectNameLike = ColumnConfig(
    key: 'projectNameLike',
    title: '对应的项目idLike',
    noJson: true,
  );

  /// roleId  
  static ColumnConfig roleId = ColumnConfig(
    key: 'roleId',
    title: 'roleId',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Menu, index: number) =>{
    //  return roleId.renderColumn(record, null, text, index, roleId);
    //},
  );

  /// route  
  static ColumnConfig route = ColumnConfig(
    key: 'route',
    title: 'route',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Menu, index: number) =>{
    //  return route.renderColumn(record, null, text, index, route);
    //},
  );

  /// routeLike  
  static ColumnConfig routeLike = ColumnConfig(
    key: 'routeLike',
    title: 'routeLike',
    noJson: true,
  );

  /// 数据更新时间  TIMESTAMP
  static ColumnConfig updateTime = ColumnConfig(
    key: 'updateTime',
    title: '数据更新时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: Menu, index: number) =>{
    //  return updateTime.renderColumn(record, null, text, index, updateTime);
    //},
  );

  /// 数据更新时间Max  TIMESTAMP
  static ColumnConfig updateTimeMax = ColumnConfig(
    key: 'updateTimeMax',
    title: '数据更新时间Max',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 数据更新时间Min  TIMESTAMP
  static ColumnConfig updateTimeMin = ColumnConfig(
    key: 'updateTimeMin',
    title: '数据更新时间Min',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 对应的api路径  
  static ColumnConfig url = ColumnConfig(
    key: 'url',
    title: '对应的api路径',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Menu, index: number) =>{
    //  return url.renderColumn(record, null, text, index, url);
    //},
  );

}