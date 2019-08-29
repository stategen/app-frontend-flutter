///  Do not remove this unless you get business authorization.
///  Topic_publish
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../beans/topic.dart';
import '../enums/topictype.dart';
import '../../stgutil/stg_util.dart';
import '../../stgutil/collection_util.dart';
import '../../stgutil/init_state.dart';
import '../apis/topic_publish_apis.dart';

class Topic_publishBaseState {
  AreaState<Topic> topicArea;

  void merge(Topic_publishBaseState source) {
    topicArea != null ? topicArea.merge(source.topicArea) : topicArea = source.topicArea;
  }

}

class _Topic_publishState with Topic_publishBaseState {
  _Topic_publishState({
    AreaState<Topic> topicArea,
  }) {
    this.topicArea = topicArea;
  }

}


abstract class Topic_publishAbstractProvider with ChangeNotifier, Topic_publishBaseState {


  /// 
  Future<void> saveTopic(BuildContext context, {Map<String, dynamic> payload, String topicId, TopicType topicType, String content, String title }) async {
    var newState = await Topic_publishCommand.saveTopic(this, payload: payload, topicId: topicId, topicType: topicType, content: content, title: title);
    mergeState(context, newState);
  }

  void mergeState(BuildContext context, Topic_publishBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class Topic_publishCommand {

  /// 
  static Future<Topic_publishBaseState> saveTopic(Topic_publishAbstractProvider topic_publishState, {Map<String, dynamic> payload, String topicId, TopicType topicType, String content, String title }) async {
    Topic topic = await Topic_publishApis.saveTopic(payload: payload, topicId: topicId, topicType: topicType, content: content, title: title);

    var newState = _Topic_publishState(
      topicArea: AreaState(
        valueMap: Topic.toIdMap([topic]),
      ),
    );
    return newState;
  }


}