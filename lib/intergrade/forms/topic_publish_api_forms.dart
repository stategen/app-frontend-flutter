///  Do not remove this unless you get business authorization.
///  Topic_publish
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖
import '../beans/topic.dart';
import '../enums/topictype.dart';
import '../columns/topic_columns.dart';
import '../enums/topictype.dart';
import '../../stgutil/column_util.dart';
import '../../stgutil/stg_util.dart';

class Topic_publishApiForms {
  /// 主题ID 
  static FormItemConfig saveTopic_topicId = FormItemConfig.clone(TopicColumns.topicId)
    /// ..UIEditor__: UIEditors.BuildInputEditor
    /// ..Editor: UIEditors.BuildInputEditor
  ;
  /// 主题类型 
  static FormItemConfig saveTopic_topicType = FormItemConfig.clone(TopicColumns.topicType)
    /// ..UIEditor__: UIEditors.BuildSelectEditor
    /// ..Editor: UIEditors.BuildSelectEditor
  ;
  /// 内容 
  static FormItemConfig saveTopic_content = FormItemConfig.clone(TopicColumns.content)
    /// ..UIEditor__: UIEditors.BuildTextareaEditor
    /// ..Editor: UIEditors.BuildTextareaEditor
  ;
  /// 标题 
  static FormItemConfig saveTopic_title = FormItemConfig.clone(TopicColumns.title)
    /// ..UIEditor__: UIEditors.BuildInputEditor
    /// ..Editor: UIEditors.BuildInputEditor
  ;

  /// Self-executing
  static void _saveTopicConfirmChanges = confirmChanges([
      saveTopic_topicId,
      saveTopic_topicType,
      saveTopic_content,
      saveTopic_title,
    ]
  );

}