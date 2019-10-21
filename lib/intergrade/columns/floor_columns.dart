///  Do not remove this unless you get business authorization.
///  Floor
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/floor.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class FloorColumns{

  /// advertiseId  
  static ColumnConfig advertiseId = ColumnConfig(
    key: 'advertiseId',
    title: 'advertiseId',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Floor, index: number) =>{
    //  return advertiseId.renderColumn(record, null, text, index, advertiseId);
    //},
  );

  /// advertiseId s  
  static ColumnConfig advertiseIds = ColumnConfig(
    key: 'advertiseIds',
    title: 'advertiseId',
    noJson: true,
    isArray: true,
  );

  /// advertisePicture  
  static ColumnConfig advertisePicture = ColumnConfig(
    key: 'advertisePicture',
    title: 'advertisePicture',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Floor, index: number) =>{
    //  return advertisePicture.renderColumn(record, null, text, index, advertisePicture);
    //},
  );

  /// 创建时间  TIMESTAMP
  static ColumnConfig createTime = ColumnConfig(
    key: 'createTime',
    title: '创建时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: Floor, index: number) =>{
    //  return createTime.renderColumn(record, null, text, index, createTime);
    //},
  );

  /// 创建时间Max  TIMESTAMP
  static ColumnConfig createTimeMax = ColumnConfig(
    key: 'createTimeMax',
    title: '创建时间Max',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 创建时间Min  TIMESTAMP
  static ColumnConfig createTimeMin = ColumnConfig(
    key: 'createTimeMin',
    title: '创建时间Min',
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
    //render: (text: any, record: Floor, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// floorGoodss  
  static ColumnConfig floorGoodss = ColumnConfig(
    key: 'floorGoodss',
    title: 'floorGoodss',
    // renderColumn: UIColumns.InputRender,
    isArray: true,
    //render: (text: any, record: Floor, index: number) =>{
    //  return floorGoodss.renderColumn(record, null, text, index, floorGoodss);
    //},
  );

  /// floorId  
  static ColumnConfig floorId = ColumnConfig(
    key: 'floorId',
    title: 'floorId',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Floor, index: number) =>{
    //  return floorId.renderColumn(record, null, text, index, floorId);
    //},
  );

  /// floorId s  
  static ColumnConfig floorIds = ColumnConfig(
    key: 'floorIds',
    title: 'floorId',
    noJson: true,
    isArray: true,
  );

  /// floorName  
  static ColumnConfig floorName = ColumnConfig(
    key: 'floorName',
    title: 'floorName',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 32,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Floor, index: number) =>{
    //  return floorName.renderColumn(record, null, text, index, floorName);
    //},
  );

  /// floorNameLike  
  static ColumnConfig floorNameLike = ColumnConfig(
    key: 'floorNameLike',
    title: 'floorNameLike',
    noJson: true,
  );

  /// orderNo  
  static ColumnConfig orderNo = ColumnConfig(
    key: 'orderNo',
    title: 'orderNo',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Floor, index: number) =>{
    //  return orderNo.renderColumn(record, null, text, index, orderNo);
    //},
  );

  /// orderNoMax  
  static ColumnConfig orderNoMax = ColumnConfig(
    key: 'orderNoMax',
    title: 'orderNoMax',
    noJson: true,
  );

  /// orderNoMin  
  static ColumnConfig orderNoMin = ColumnConfig(
    key: 'orderNoMin',
    title: 'orderNoMin',
    noJson: true,
  );

  /// 更新时间  TIMESTAMP
  static ColumnConfig updateTime = ColumnConfig(
    key: 'updateTime',
    title: '更新时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: Floor, index: number) =>{
    //  return updateTime.renderColumn(record, null, text, index, updateTime);
    //},
  );

  /// 更新时间Max  TIMESTAMP
  static ColumnConfig updateTimeMax = ColumnConfig(
    key: 'updateTimeMax',
    title: '更新时间Max',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 更新时间Min  TIMESTAMP
  static ColumnConfig updateTimeMin = ColumnConfig(
    key: 'updateTimeMin',
    title: '更新时间Min',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

}