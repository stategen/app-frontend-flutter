///  Do not remove this unless you get business authorization.
///  HomeAdvertise
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/homeadvertise.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class HomeAdvertiseColumns{

  /// homeAdvId  
  static ColumnConfig homeAdvId = ColumnConfig(
    key: 'homeAdvId',
    title: 'homeAdvId',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: HomeAdvertise, index: number) =>{
    //  return homeAdvId.renderColumn(record, null, text, index, homeAdvId);
    //},
  );

  /// advertiseId  
  static ColumnConfig advertiseId = ColumnConfig(
    key: 'advertiseId',
    title: 'advertiseId',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: HomeAdvertise, index: number) =>{
    //  return advertiseId.renderColumn(record, null, text, index, advertiseId);
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
    //render: (text: any, record: HomeAdvertise, index: number) =>{
    //  return createTime.renderColumn(record, null, text, index, createTime);
    //},
  );

  /// 更新时间  TIMESTAMP
  static ColumnConfig updateTime = ColumnConfig(
    key: 'updateTime',
    title: '更新时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: HomeAdvertise, index: number) =>{
    //  return updateTime.renderColumn(record, null, text, index, updateTime);
    //},
  );

  /// 是否删除(0:正常，1删除)  
  static ColumnConfig deleteFlag = ColumnConfig(
    key: 'deleteFlag',
    title: '是否删除(0:正常',
    // renderColumn: UIColumns.InputRender,
    hidden: true,
    //render: (text: any, record: HomeAdvertise, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// homeAdvId s  
  static ColumnConfig homeAdvIds = ColumnConfig(
    key: 'homeAdvIds',
    title: 'homeAdvId',
    noJson: true,
    isArray: true,
  );

  /// advertiseId s  
  static ColumnConfig advertiseIds = ColumnConfig(
    key: 'advertiseIds',
    title: 'advertiseId',
    noJson: true,
    isArray: true,
  );

  /// 创建时间Min  TIMESTAMP
  static ColumnConfig createTimeMin = ColumnConfig(
    key: 'createTimeMin',
    title: '创建时间Min',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// 创建时间Max  TIMESTAMP
  static ColumnConfig createTimeMax = ColumnConfig(
    key: 'createTimeMax',
    title: '创建时间Max',
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

  /// 更新时间Max  TIMESTAMP
  static ColumnConfig updateTimeMax = ColumnConfig(
    key: 'updateTimeMax',
    title: '更新时间Max',
    noJson: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
  );

  /// pictureAddress  
  static ColumnConfig pictureAddress = ColumnConfig(
    key: 'pictureAddress',
    title: 'pictureAddress',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: HomeAdvertise, index: number) =>{
    //  return pictureAddress.renderColumn(record, null, text, index, pictureAddress);
    //},
  );

  /// toPlace  
  static ColumnConfig toPlace = ColumnConfig(
    key: 'toPlace',
    title: 'toPlace',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 8,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: HomeAdvertise, index: number) =>{
    //  return toPlace.renderColumn(record, null, text, index, toPlace);
    //},
  );

  /// urlType  
  static ColumnConfig urlType = ColumnConfig(
    key: 'urlType',
    title: 'urlType',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: HomeAdvertise, index: number) =>{
    //  return urlType.renderColumn(record, null, text, index, urlType);
    //},
  );

  /// pictureAddressLike  
  static ColumnConfig pictureAddressLike = ColumnConfig(
    key: 'pictureAddressLike',
    title: 'pictureAddressLike',
    noJson: true,
  );

  /// toPlaceLike  
  static ColumnConfig toPlaceLike = ColumnConfig(
    key: 'toPlaceLike',
    title: 'toPlaceLike',
    noJson: true,
  );

  /// urlType s  
  static ColumnConfig urlTypes = ColumnConfig(
    key: 'urlTypes',
    title: 'urlType',
    noJson: true,
    isArray: true,
  );

  /// pICTURE_ADDRESS  
  static ColumnConfig pICTURE_ADDRESS = ColumnConfig(
    key: 'pICTURE_ADDRESS',
    title: 'pICTURE_ADDRESS',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: HomeAdvertise, index: number) =>{
    //  return pICTURE_ADDRESS.renderColumn(record, null, text, index, pICTURE_ADDRESS);
    //},
  );

  /// tO_PLACE  
  static ColumnConfig tO_PLACE = ColumnConfig(
    key: 'tO_PLACE',
    title: 'tO_PLACE',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: HomeAdvertise, index: number) =>{
    //  return tO_PLACE.renderColumn(record, null, text, index, tO_PLACE);
    //},
  );

}