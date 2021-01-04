///  Do not remove this unless you get business authorization.
///  Slide
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/slide.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class SlideColumns{

  /// 创建时间  TIMESTAMP
  static ColumnConfig createTime = ColumnConfig(
    key: 'createTime',
    title: '创建时间',
    // renderColumn: UIColumns.TimeStampRender,
    hidden: true,
    temporalType: TemporalType.TIMESTAMP,
    format: TIMESTAMP_FORMAT,
    //render: (text: any, record: Slide, index: number) =>{
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
    //render: (text: any, record: Slide, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// goodsId  
  static ColumnConfig goodsId = ColumnConfig(
    key: 'goodsId',
    title: 'goodsId',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Slide, index: number) =>{
    //  return goodsId.renderColumn(record, null, text, index, goodsId);
    //},
  );

  /// goodsId s  
  static ColumnConfig goodsIds = ColumnConfig(
    key: 'goodsIds',
    title: 'goodsId',
    noJson: true,
    isArray: true,
  );

  /// image  
  static ColumnConfig image = ColumnConfig(
    key: 'image',
    title: 'image',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Slide, index: number) =>{
    //  return image.renderColumn(record, null, text, index, image);
    //},
  );

  /// orderNo  
  static ColumnConfig orderNo = ColumnConfig(
    key: 'orderNo',
    title: 'orderNo',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Slide, index: number) =>{
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

  /// orderNo s  
  static ColumnConfig orderNos = ColumnConfig(
    key: 'orderNos',
    title: 'orderNo',
    noJson: true,
    isArray: true,
  );

  /// slideId  
  static ColumnConfig slideId = ColumnConfig(
    key: 'slideId',
    title: 'slideId',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Slide, index: number) =>{
    //  return slideId.renderColumn(record, null, text, index, slideId);
    //},
  );

  /// slideId s  
  static ColumnConfig slideIds = ColumnConfig(
    key: 'slideIds',
    title: 'slideId',
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
    //render: (text: any, record: Slide, index: number) =>{
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

  /// urlType  
  static ColumnConfig urlType = ColumnConfig(
    key: 'urlType',
    title: 'urlType',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Slide, index: number) =>{
    //  return urlType.renderColumn(record, null, text, index, urlType);
    //},
  );

  /// urlTypeMax  
  static ColumnConfig urlTypeMax = ColumnConfig(
    key: 'urlTypeMax',
    title: 'urlTypeMax',
    noJson: true,
  );

  /// urlTypeMin  
  static ColumnConfig urlTypeMin = ColumnConfig(
    key: 'urlTypeMin',
    title: 'urlTypeMin',
    noJson: true,
  );

  /// urlType s  
  static ColumnConfig urlTypes = ColumnConfig(
    key: 'urlTypes',
    title: 'urlType',
    noJson: true,
    isArray: true,
  );

}