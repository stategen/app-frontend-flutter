///  Do not remove this unless you get business authorization.
///  Topic
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../beans/antdpagelist.dart';
import '../beans/pagination.dart';
import '../beans/topic.dart';
import '../enums/topictype.dart';
import '../../stgutil/stg_util.dart';
import '../../stgutil/collection_util.dart';
import '../../stgutil/init_state.dart';
import '../../stgutil/base_provider.dart';
import '../apis/topic_apis.dart';

class TopicBaseState {
  AreaState<Topic> topicArea = AreaState<Topic>.init();

  void merge(TopicBaseState source) {
    topicArea != null ? topicArea.merge(source.topicArea) : topicArea = source.topicArea;
  }

}

class _TopicState with TopicBaseState {
  _TopicState({
    AreaState<Topic> topicArea,
  }) {
    this.topicArea = topicArea;
  }

}


abstract class TopicAbstractProvider with ChangeNotifier, BaseProvider, TopicBaseState {

  Future<void> init(BuildContext context) async {
    var newState = await TopicCommand.init(this,
        getTopicPageListSetupParams : getTopicPageListSetupParams(context)
    );
    mergeState(context, newState);
  }


  /// 
  Future<void> delete(BuildContext context, {Map<String, dynamic> payload, String topicId }) async {
    var newState = await TopicCommand.delete(this, payload: payload, topicId: topicId);
    mergeState(context, newState);
  }

  /// 
  Future<void> deleteBatch(BuildContext context, {Map<String, dynamic> payload, List<String> topicIds }) async {
    var newState = await TopicCommand.deleteBatch(this, payload: payload, topicIds: topicIds);
    mergeState(context, newState);
  }

  /// 
  Future<void> getTopicPageList(BuildContext context, {Map<String, dynamic> payload, TopicType topicType, bool mdrender, int page, int pageSize }) async {
    var newState = await TopicCommand.getTopicPageList(this, payload: payload, topicType: topicType, mdrender: mdrender, page: page, pageSize: pageSize);
    mergeState(context, newState);
  }

  Future<void> getTopicPageListNext(BuildContext context) async {
    var newState = await TopicCommand.getTopicPageListNext(this);
    mergeState(context, newState);
  }

  Future<void> getTopicPageListRefresh(BuildContext context) async {
    var newState = await TopicCommand.getTopicPageListRefresh(this);
    mergeState(context, newState);
  }

  /// 
  Future<void> update(BuildContext context, {Map<String, dynamic> payload, String authorId, String topicType, String content, String title, String lastReplyAt, String good, String top, int visitCount, String createAt, DateTime testTimestamp, DateTime testDatetime, DateTime testDate, DateTime testTime, String topicId }) async {
    var newState = await TopicCommand.update(this, payload: payload, authorId: authorId, topicType: topicType, content: content, title: title, lastReplyAt: lastReplyAt, good: good, top: top, visitCount: visitCount, createAt: createAt, testTimestamp: testTimestamp, testDatetime: testDatetime, testDate: testDate, testTime: testTime, topicId: topicId);
    mergeState(context, newState);
  }

  getTopicPageListSetupParams(BuildContext context) {
    return null;
  }

  void mergeState(BuildContext context, TopicBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class TopicCommand {
  static Future<TopicBaseState> init (TopicAbstractProvider topicState, {Map<String, dynamic> getTopicPageListSetupParams}) async {
    var newState = TopicBaseState();
    // 
    var getTopicPageListState = await TopicCommand.getTopicPageList(topicState, payload: getTopicPageListSetupParams);
    newState.merge(getTopicPageListState);
    return newState;
  }


  /// 
  static Future<TopicBaseState> delete(TopicAbstractProvider topicState, {Map<String, dynamic> payload, String topicId }) async {
    String result = await TopicApis.delete(null, payload: payload, topicId: topicId);
    var oldTopicArea = topicState.topicArea;
    var topicMap = CollectionUtil.deleteMap(oldTopicArea?.clone()?.valueMap, [result]);

    var newState = _TopicState(
      topicArea: AreaState(
        fetched: true,
        valueMap: topicMap,
      ),
    );
    return newState;
  }


  /// 
  static Future<TopicBaseState> deleteBatch(TopicAbstractProvider topicState, {Map<String, dynamic> payload, List<String> topicIds }) async {
    List<String> result = await TopicApis.deleteBatch(null, payload: payload, topicIds: topicIds);
    var oldTopicArea = topicState.topicArea;
    var topicMap = CollectionUtil.deleteMap(oldTopicArea?.clone()?.valueMap, result);

    var newState = _TopicState(
      topicArea: AreaState(
        fetched: true,
        valueMap: topicMap,
      ),
    );
    return newState;
  }


  /// 
  static Future<TopicBaseState> getTopicPageList(TopicAbstractProvider topicState, {Map<String, dynamic> payload, TopicType topicType, bool mdrender, int page, int pageSize }) async {
    var oldTopicArea = topicState.topicArea;
    payload ??= {};
    payload = {'pageNum': 1, 'pageSize': 10,  ...payload};
    AntdPageList<Topic> topicPageList = await TopicApis.getTopicPageList(payload: payload, topicType: topicType, mdrender: mdrender, page: page, pageSize: pageSize);
    var pagination = topicPageList?.pagination;
    var topicMap = CollectionUtil.appendOrUpdateMap(oldTopicArea?.clone()?.valueMap,  Topic.toIdMap(topicPageList.list));

    var newState = _TopicState(
      topicArea: AreaState(
        fetched: true,
        valueMap: topicMap,
        pagination: pagination,
        queryRule: payload,
      ),
    );
    return newState;
  }


  static Future<TopicBaseState> getTopicPageListNext(TopicAbstractProvider topicState) async {
    var oldTopicArea = topicState.topicArea;
    var pagination = oldTopicArea?.pagination;
    var pageNum = pagination?.current;
    pageNum = (pageNum != null ? pageNum : 0) + 1;
    var totalPages = (pagination.total / (pagination?.pageSize ?? 10)).ceil();
    pageNum = min(pageNum, totalPages);
    var payload = {...oldTopicArea.queryRule, 'pageNum': pageNum};
    var newAreaState = await TopicCommand.getTopicPageList(topicState,payload: payload);
    return newAreaState;
  }

  static Future<TopicBaseState> getTopicPageListRefresh(TopicAbstractProvider topicState) async {
    var oldTopicArea = topicState.topicArea;
    var payload = {...oldTopicArea.queryRule};
    var newAreaState = await TopicCommand.getTopicPageList(topicState,payload: payload);
    return newAreaState;
  }

  /// 
  static Future<TopicBaseState> update(TopicAbstractProvider topicState, {Map<String, dynamic> payload, String authorId, String topicType, String content, String title, String lastReplyAt, String good, String top, int visitCount, String createAt, DateTime testTimestamp, DateTime testDatetime, DateTime testDate, DateTime testTime, String topicId }) async {
    Topic topic = await TopicApis.update(payload: payload, authorId: authorId, topicType: topicType, content: content, title: title, lastReplyAt: lastReplyAt, good: good, top: top, visitCount: visitCount, createAt: createAt, testTimestamp: testTimestamp, testDatetime: testDatetime, testDate: testDate, testTime: testTime, topicId: topicId);
    var oldTopicArea = topicState.topicArea;
    var topicMap = CollectionUtil.appendOrUpdateMap(oldTopicArea?.clone()?.valueMap,  Topic.toIdMap([topic]));

    var newState = _TopicState(
      topicArea: AreaState(
        fetched: true,
        valueMap: topicMap,
      ),
    );
    return newState;
  }


}