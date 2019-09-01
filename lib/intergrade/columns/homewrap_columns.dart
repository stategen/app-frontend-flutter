///  Do not remove this unless you get business authorization.
///  HomeWrap
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/homewrap.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class HomeWrapColumns{

  /// slides  
  static ColumnConfig slides = ColumnConfig(
    key: 'slides',
    title: 'slides',
    // renderColumn: UIColumns.InputRender,
    isArray: true,
    //render: (text: any, record: HomeWrap, index: number) =>{
    //  return slides.renderColumn(record, null, text, index, slides);
    //},
  );

  /// shopInfo  
  static ColumnConfig shopInfo = ColumnConfig(
    key: 'shopInfo',
    title: 'shopInfo',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: HomeWrap, index: number) =>{
    //  return shopInfo.renderColumn(record, null, text, index, shopInfo);
    //},
  );

  /// recommend  
  static ColumnConfig recommend = ColumnConfig(
    key: 'recommend',
    title: 'recommend',
    // renderColumn: UIColumns.InputRender,
    isArray: true,
    //render: (text: any, record: HomeWrap, index: number) =>{
    //  return recommend.renderColumn(record, null, text, index, recommend);
    //},
  );

  /// advertesPicture  
  static ColumnConfig advertesPicture = ColumnConfig(
    key: 'advertesPicture',
    title: 'advertesPicture',
    // renderColumn: UIColumns.InputRender,
    //render: (text: any, record: HomeWrap, index: number) =>{
    //  return advertesPicture.renderColumn(record, null, text, index, advertesPicture);
    //},
  );

  /// floors  
  static ColumnConfig floors = ColumnConfig(
    key: 'floors',
    title: 'floors',
    // renderColumn: UIColumns.InputRender,
    isArray: true,
    //render: (text: any, record: HomeWrap, index: number) =>{
    //  return floors.renderColumn(record, null, text, index, floors);
    //},
  );

  /// category  
  static ColumnConfig category = ColumnConfig(
    key: 'category',
    title: 'category',
    // renderColumn: UIColumns.InputRender,
    isArray: true,
    //render: (text: any, record: HomeWrap, index: number) =>{
    //  return category.renderColumn(record, null, text, index, category);
    //},
  );

}