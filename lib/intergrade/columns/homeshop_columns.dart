///  Do not remove this unless you get business authorization.
///  HomeShop
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/homeshop.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class HomeShopColumns{

  /// 创建时间  TIMESTAMP
  static ColumnConfig createTime = ColumnConfig(
    key: 'createTime',
    title: '创建时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: HomeShop, index: number) =>{
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
    //render: (text: any, record: HomeShop, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// homeShopId  
  static ColumnConfig homeShopId = ColumnConfig(
    key: 'homeShopId',
    title: 'homeShopId',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: HomeShop, index: number) =>{
    //  return homeShopId.renderColumn(record, null, text, index, homeShopId);
    //},
  );

  /// homeShopId s  
  static ColumnConfig homeShopIds = ColumnConfig(
    key: 'homeShopIds',
    title: 'homeShopId',
    noJson: true,
    isArray: true,
  );

  /// leaderImage  
  static ColumnConfig leaderImage = ColumnConfig(
    key: 'leaderImage',
    title: 'leaderImage',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: HomeShop, index: number) =>{
    //  return leaderImage.renderColumn(record, null, text, index, leaderImage);
    //},
  );

  /// leaderPhone  
  static ColumnConfig leaderPhone = ColumnConfig(
    key: 'leaderPhone',
    title: 'leaderPhone',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 16,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: HomeShop, index: number) =>{
    //  return leaderPhone.renderColumn(record, null, text, index, leaderPhone);
    //},
  );

  /// leaderPhoneLike  
  static ColumnConfig leaderPhoneLike = ColumnConfig(
    key: 'leaderPhoneLike',
    title: 'leaderPhoneLike',
    noJson: true,
  );

  /// shopId  
  static ColumnConfig shopId = ColumnConfig(
    key: 'shopId',
    title: 'shopId',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: HomeShop, index: number) =>{
    //  return shopId.renderColumn(record, null, text, index, shopId);
    //},
  );

  /// shopId s  
  static ColumnConfig shopIds = ColumnConfig(
    key: 'shopIds',
    title: 'shopId',
    noJson: true,
    isArray: true,
  );

  /// 更新时间  TIMESTAMP
  static ColumnConfig updateTime = ColumnConfig(
    key: 'updateTime',
    title: '更新时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: HomeShop, index: number) =>{
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