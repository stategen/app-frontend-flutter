///  Do not remove this unless you get business authorization.
///  Goods
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/goods.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class GoodsColumns{

  /// advertiseId  
  static ColumnConfig advertiseId = ColumnConfig(
    key: 'advertiseId',
    title: 'advertiseId',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Goods, index: number) =>{
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

  /// 数量 代替count  
  static ColumnConfig amount = ColumnConfig(
    key: 'amount',
    title: '数量',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Goods, index: number) =>{
    //  return amount.renderColumn(record, null, text, index, amount);
    //},
  );

  /// 数量Max  
  static ColumnConfig amountMax = ColumnConfig(
    key: 'amountMax',
    title: '数量Max',
    noJson: true,
  );

  /// 数量Min  
  static ColumnConfig amountMin = ColumnConfig(
    key: 'amountMin',
    title: '数量Min',
    noJson: true,
  );

  /// categorySubId  
  static ColumnConfig categorySubId = ColumnConfig(
    key: 'categorySubId',
    title: 'categorySubId',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Goods, index: number) =>{
    //  return categorySubId.renderColumn(record, null, text, index, categorySubId);
    //},
  );

  /// categorySubIdLike  
  static ColumnConfig categorySubIdLike = ColumnConfig(
    key: 'categorySubIdLike',
    title: 'categorySubIdLike',
    noJson: true,
  );

  /// categorySubId s  
  static ColumnConfig categorySubIds = ColumnConfig(
    key: 'categorySubIds',
    title: 'categorySubId',
    noJson: true,
    isArray: true,
  );

  /// comPic  
  static ColumnConfig comPic = ColumnConfig(
    key: 'comPic',
    title: 'comPic',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Goods, index: number) =>{
    //  return comPic.renderColumn(record, null, text, index, comPic);
    //},
  );

  /// count  
  static ColumnConfig count = ColumnConfig(
    key: 'count',
    title: 'count',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Goods, index: number) =>{
    //  return count.renderColumn(record, null, text, index, count);
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
    //render: (text: any, record: Goods, index: number) =>{
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
    //render: (text: any, record: Goods, index: number) =>{
    //  return deleteFlag.renderColumn(record, null, text, index, deleteFlag);
    //},
  );

  /// goodComments  
  static ColumnConfig goodComments = ColumnConfig(
    key: 'goodComments',
    title: 'goodComments',
    // renderColumn: UIColumns.InputRender,
    isArray: true,
    //render: (text: any, record: Goods, index: number) =>{
    //  return goodComments.renderColumn(record, null, text, index, goodComments);
    //},
  );

  /// goodsDetail  
  static ColumnConfig goodsDetail = ColumnConfig(
    key: 'goodsDetail',
    title: 'goodsDetail',
    // renderColumn: UIColumns.TextareaRender,
    rules: [
      ValidationRule(
        max: 65535,
        message: "最大不能超过{max}",
      ),
    ],
    nullTitle: '请选择',
    //render: (text: any, record: Goods, index: number) =>{
    //  return goodsDetail.renderColumn(record, null, text, index, goodsDetail);
    //},
  );

  /// goodsDetailLike  
  static ColumnConfig goodsDetailLike = ColumnConfig(
    key: 'goodsDetailLike',
    title: 'goodsDetailLike',
    noJson: true,
  );

  /// 商品ID  
  static ColumnConfig goodsId = ColumnConfig(
    key: 'goodsId',
    title: '商品ID',
    // renderColumn: UIColumns.InputRender,
    isId: true,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Goods, index: number) =>{
    //  return goodsId.renderColumn(record, null, text, index, goodsId);
    //},
  );

  /// 商品ID s  
  static ColumnConfig goodsIds = ColumnConfig(
    key: 'goodsIds',
    title: '商品ID',
    noJson: true,
    isArray: true,
  );

  /// 商品名称  
  static ColumnConfig goodsName = ColumnConfig(
    key: 'goodsName',
    title: '商品名称',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Goods, index: number) =>{
    //  return goodsName.renderColumn(record, null, text, index, goodsName);
    //},
  );

  /// 商品名称Like  
  static ColumnConfig goodsNameLike = ColumnConfig(
    key: 'goodsNameLike',
    title: '商品名称Like',
    noJson: true,
  );

  /// goodsSerialNumber  
  static ColumnConfig goodsSerialNumber = ColumnConfig(
    key: 'goodsSerialNumber',
    title: 'goodsSerialNumber',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 64,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Goods, index: number) =>{
    //  return goodsSerialNumber.renderColumn(record, null, text, index, goodsSerialNumber);
    //},
  );

  /// goodsSerialNumberLike  
  static ColumnConfig goodsSerialNumberLike = ColumnConfig(
    key: 'goodsSerialNumberLike',
    title: 'goodsSerialNumberLike',
    noJson: true,
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
    //render: (text: any, record: Goods, index: number) =>{
    //  return image.renderColumn(record, null, text, index, image);
    //},
  );

  /// image1  
  static ColumnConfig image1 = ColumnConfig(
    key: 'image1',
    title: 'image1',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Goods, index: number) =>{
    //  return image1.renderColumn(record, null, text, index, image1);
    //},
  );

  /// image1Like  
  static ColumnConfig image1Like = ColumnConfig(
    key: 'image1Like',
    title: 'image1Like',
    noJson: true,
  );

  /// image2  
  static ColumnConfig image2 = ColumnConfig(
    key: 'image2',
    title: 'image2',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Goods, index: number) =>{
    //  return image2.renderColumn(record, null, text, index, image2);
    //},
  );

  /// image2Like  
  static ColumnConfig image2Like = ColumnConfig(
    key: 'image2Like',
    title: 'image2Like',
    noJson: true,
  );

  /// image3  
  static ColumnConfig image3 = ColumnConfig(
    key: 'image3',
    title: 'image3',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Goods, index: number) =>{
    //  return image3.renderColumn(record, null, text, index, image3);
    //},
  );

  /// image3Like  
  static ColumnConfig image3Like = ColumnConfig(
    key: 'image3Like',
    title: 'image3Like',
    noJson: true,
  );

  /// image4  
  static ColumnConfig image4 = ColumnConfig(
    key: 'image4',
    title: 'image4',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Goods, index: number) =>{
    //  return image4.renderColumn(record, null, text, index, image4);
    //},
  );

  /// image4Like  
  static ColumnConfig image4Like = ColumnConfig(
    key: 'image4Like',
    title: 'image4Like',
    noJson: true,
  );

  /// image5  
  static ColumnConfig image5 = ColumnConfig(
    key: 'image5',
    title: 'image5',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Goods, index: number) =>{
    //  return image5.renderColumn(record, null, text, index, image5);
    //},
  );

  /// image5Like  
  static ColumnConfig image5Like = ColumnConfig(
    key: 'image5Like',
    title: 'image5Like',
    noJson: true,
  );

  /// 图片地址  
  static ColumnConfig images = ColumnConfig(
    key: 'images',
    title: '图片地址',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 255,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Goods, index: number) =>{
    //  return images.renderColumn(record, null, text, index, images);
    //},
  );

  /// 图片地址Like  
  static ColumnConfig imagesLike = ColumnConfig(
    key: 'imagesLike',
    title: '图片地址Like',
    noJson: true,
  );

  /// 是否选择  
  static ColumnConfig isCheck = ColumnConfig(
    key: 'isCheck',
    title: '是否选择',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Goods, index: number) =>{
    //  return isCheck.renderColumn(record, null, text, index, isCheck);
    //},
  );

  /// isHot  
  static ColumnConfig isHot = ColumnConfig(
    key: 'isHot',
    title: 'isHot',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Goods, index: number) =>{
    //  return isHot.renderColumn(record, null, text, index, isHot);
    //},
  );

  /// isOnLine  
  static ColumnConfig isOnLine = ColumnConfig(
    key: 'isOnLine',
    title: 'isOnLine',
    // renderColumn: UIColumns.InputRender,
    rules: [
      ValidationRule(
        max: 8,
        message: "最大不能超过{max}",
      ),
    ],
    //render: (text: any, record: Goods, index: number) =>{
    //  return isOnLine.renderColumn(record, null, text, index, isOnLine);
    //},
  );

  /// isOnLineLike  
  static ColumnConfig isOnLineLike = ColumnConfig(
    key: 'isOnLineLike',
    title: 'isOnLineLike',
    noJson: true,
  );

  /// mallPrice  
  static ColumnConfig mallPrice = ColumnConfig(
    key: 'mallPrice',
    title: 'mallPrice',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Goods, index: number) =>{
    //  return mallPrice.renderColumn(record, null, text, index, mallPrice);
    //},
  );

  /// name  
  static ColumnConfig name = ColumnConfig(
    key: 'name',
    title: 'name',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Goods, index: number) =>{
    //  return name.renderColumn(record, null, text, index, name);
    //},
  );

  /// oriPrice  
  static ColumnConfig oriPrice = ColumnConfig(
    key: 'oriPrice',
    title: 'oriPrice',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Goods, index: number) =>{
    //  return oriPrice.renderColumn(record, null, text, index, oriPrice);
    //},
  );

  /// presentPrice  
  static ColumnConfig presentPrice = ColumnConfig(
    key: 'presentPrice',
    title: 'presentPrice',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Goods, index: number) =>{
    //  return presentPrice.renderColumn(record, null, text, index, presentPrice);
    //},
  );

  /// presentPriceMax  
  static ColumnConfig presentPriceMax = ColumnConfig(
    key: 'presentPriceMax',
    title: 'presentPriceMax',
    noJson: true,
  );

  /// presentPriceMin  
  static ColumnConfig presentPriceMin = ColumnConfig(
    key: 'presentPriceMin',
    title: 'presentPriceMin',
    noJson: true,
  );

  /// 价格  
  static ColumnConfig price = ColumnConfig(
    key: 'price',
    title: '价格',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Goods, index: number) =>{
    //  return price.renderColumn(record, null, text, index, price);
    //},
  );

  /// 价格Max  
  static ColumnConfig priceMax = ColumnConfig(
    key: 'priceMax',
    title: '价格Max',
    noJson: true,
  );

  /// 价格Min  
  static ColumnConfig priceMin = ColumnConfig(
    key: 'priceMin',
    title: '价格Min',
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
    //render: (text: any, record: Goods, index: number) =>{
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

  /// state  
  static ColumnConfig state = ColumnConfig(
    key: 'state',
    title: 'state',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: Goods, index: number) =>{
    //  return state.renderColumn(record, null, text, index, state);
    //},
  );

  /// stateMax  
  static ColumnConfig stateMax = ColumnConfig(
    key: 'stateMax',
    title: 'stateMax',
    noJson: true,
  );

  /// stateMin  
  static ColumnConfig stateMin = ColumnConfig(
    key: 'stateMin',
    title: 'stateMin',
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
    //render: (text: any, record: Goods, index: number) =>{
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