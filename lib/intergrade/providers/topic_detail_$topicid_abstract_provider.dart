///  Do not remove this unless you get business authorization.
///  Topic_detail_$topicId
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../beans/pagelist.dart';
import '../beans/pagination.dart';
import '../beans/topic.dart';
import '../beans/topicreply.dart';
import '../../stgutil/stg_util.dart';
import '../../stgutil/collection_util.dart';
import '../../stgutil/init_state.dart';
import '../../stgutil/base_provider.dart';
import '../apis/topic_detail_\$topicid_apis.dart';

class Topic_detail_$topicIdBaseState {
  AreaState<Topic> topicArea = AreaState<Topic>.init();
  AreaState<TopicReply> topicReplyArea = AreaState<TopicReply>.init();

  void merge(Topic_detail_$topicIdBaseState source) {
    topicArea != null ? topicArea.merge(source.topicArea) : topicArea = source.topicArea;
    topicReplyArea != null ? topicReplyArea.merge(source.topicReplyArea) : topicReplyArea = source.topicReplyArea;
  }

}

class _Topic_detail_$topicIdState with Topic_detail_$topicIdBaseState {
  _Topic_detail_$topicIdState({
    AreaState<Topic> topicArea,
    AreaState<TopicReply> topicReplyArea,
  }) {
    this.topicArea = topicArea;
    this.topicReplyArea = topicReplyArea;
  }

}


abstract class Topic_detail_$topicIdAbstractProvider with ChangeNotifier, BaseProvider, Topic_detail_$topicIdBaseState {

  Future<void> init(BuildContext context) async {
    var newState = await Topic_detail_$topicIdCommand.init(this,
        getTopicDetailSetupParams : getTopicDetailSetupParams(context), 
        getTopicReplyPageListSetupParams : getTopicReplyPageListSetupParams(context)
    );
    mergeState(context, newState);
  }


  /// 
  Future<void> PostReply(BuildContext context, {Map<String, dynamic> payload, @required String topicId, String replyId, String authorId, String content, String parentReplyId }) async {
    var newState = await Topic_detail_$topicIdCommand.PostReply(this, payload: payload, topicId: topicId, replyId: replyId, authorId: authorId, content: content, parentReplyId: parentReplyId);
    mergeState(context, newState);
  }

  /// 
  Future<void> getTopicDetail(BuildContext context, {Map<String, dynamic> payload, @required String topicId }) async {
    var newState = await Topic_detail_$topicIdCommand.getTopicDetail(this, payload: payload, topicId: topicId);
    mergeState(context, newState);
  }

  Future<void> getTopicDetailRefresh(BuildContext context) async {
    var newState = await Topic_detail_$topicIdCommand.getTopicDetailRefresh(this);
    mergeState(context, newState);
  }

  /// 
  Future<void> getTopicReplyPageList(BuildContext context, {Map<String, dynamic> payload, @required String topicId, int page, int pageSize }) async {
    var newState = await Topic_detail_$topicIdCommand.getTopicReplyPageList(this, payload: payload, topicId: topicId, page: page, pageSize: pageSize);
    mergeState(context, newState);
  }

  Future<void> getTopicReplyPageListNext(BuildContext context) async {
    var newState = await Topic_detail_$topicIdCommand.getTopicReplyPageListNext(this);
    mergeState(context, newState);
  }

  Future<void> getTopicReplyPageListRefresh(BuildContext context) async {
    var newState = await Topic_detail_$topicIdCommand.getTopicReplyPageListRefresh(this);
    mergeState(context, newState);
  }

  /// 
  Future<void> replyUp(BuildContext context, {Map<String, dynamic> payload, @required String replyId }) async {
    var newState = await Topic_detail_$topicIdCommand.replyUp(this, payload: payload, replyId: replyId);
    mergeState(context, newState);
  }

  getTopicDetailSetupParams(BuildContext context) {
    return RouteUtil.getParams(context);
  }

  getTopicReplyPageListSetupParams(BuildContext context) {
    return RouteUtil.getParams(context);
  }

  void mergeState(BuildContext context, Topic_detail_$topicIdBaseState newState) {
    this.merge(newState);
    notifyListeners();
  }
}


abstract class Topic_detail_$topicIdCommand {
  static Future<Topic_detail_$topicIdBaseState> init (Topic_detail_$topicIdAbstractProvider topic_detail_$topicIdState, {Map<String, dynamic> getTopicDetailSetupParams, Map<String, dynamic> getTopicReplyPageListSetupParams}) async {
    var newState = Topic_detail_$topicIdBaseState();
    // 
    var getTopicDetailState = await Topic_detail_$topicIdCommand.getTopicDetail(topic_detail_$topicIdState, payload: getTopicDetailSetupParams);
    newState.merge(getTopicDetailState);
    // 
    var getTopicReplyPageListState = await Topic_detail_$topicIdCommand.getTopicReplyPageList(topic_detail_$topicIdState, payload: getTopicReplyPageListSetupParams);
    newState.merge(getTopicReplyPageListState);
    return newState;
  }


  /// 
  static Future<Topic_detail_$topicIdBaseState> PostReply(Topic_detail_$topicIdAbstractProvider topic_detail_$topicIdState, {Map<String, dynamic> payload, @required String topicId, String replyId, String authorId, String content, String parentReplyId }) async {
    TopicReply topicReply = await Topic_detail_$topicIdApis.PostReply(payload: payload, topicId: topicId, replyId: replyId, authorId: authorId, content: content, parentReplyId: parentReplyId);
    var oldTopicReplyArea = topic_detail_$topicIdState.topicReplyArea;
    var topicReplyMap = CollectionUtil.appendOrUpdateMap(oldTopicReplyArea?.clone()?.valueMap,  TopicReply.toIdMap([topicReply]));

    var newState = _Topic_detail_$topicIdState(
      topicReplyArea: AreaState(
        fetched: true,
        valueMap: topicReplyMap,
      ),
    );
    return newState;
  }


  /// 
  static Future<Topic_detail_$topicIdBaseState> getTopicDetail(Topic_detail_$topicIdAbstractProvider topic_detail_$topicIdState, {Map<String, dynamic> payload, @required String topicId }) async {
    Topic topic = await Topic_detail_$topicIdApis.getTopicDetail(null, payload: payload, topicId: topicId);

    var newState = _Topic_detail_$topicIdState(
      topicArea: AreaState(
        fetched: true,
        valueMap: Topic.toIdMap([topic]),
        queryRule: payload,
      ),
    );
    return newState;
  }


  static Future<Topic_detail_$topicIdBaseState> getTopicDetailRefresh(Topic_detail_$topicIdAbstractProvider topic_detail_$topicIdState) async {
    var oldTopicArea = topic_detail_$topicIdState.topicArea;
    var payload = {...oldTopicArea.queryRule};
    var newAreaState = await Topic_detail_$topicIdCommand.getTopicDetail(topic_detail_$topicIdState,payload: payload);
    return newAreaState;
  }

  /// 
  static Future<Topic_detail_$topicIdBaseState> getTopicReplyPageList(Topic_detail_$topicIdAbstractProvider topic_detail_$topicIdState, {Map<String, dynamic> payload, @required String topicId, int page, int pageSize }) async {
    var oldTopicReplyArea = topic_detail_$topicIdState.topicReplyArea;
    payload ??= {};
    var queryRule = oldTopicReplyArea?.queryRule;
    payload = {'pageNum': 1, 'pageSize': 10, ...?queryRule, ...payload};
    PageList<TopicReply> topicReplyPageList = await Topic_detail_$topicIdApis.getTopicReplyPageList(payload: payload, topicId: topicId, page: page, pageSize: pageSize);
    var pagination = topicReplyPageList?.pagination;
    var topicReplyMap = CollectionUtil.appendOrUpdateMap(oldTopicReplyArea?.clone()?.valueMap,  TopicReply.toIdMap(topicReplyPageList.items));

    var newState = _Topic_detail_$topicIdState(
      topicReplyArea: AreaState(
        fetched: true,
        valueMap: topicReplyMap,
        pagination: pagination,
        queryRule: payload,
      ),
    );
    return newState;
  }


  static Future<Topic_detail_$topicIdBaseState> getTopicReplyPageListNext(Topic_detail_$topicIdAbstractProvider topic_detail_$topicIdState) async {
    var oldTopicReplyArea = topic_detail_$topicIdState.topicReplyArea;
    var pagination = oldTopicReplyArea?.pagination;
    var pageNum = pagination?.current;
    pageNum = (pageNum != null ? pageNum : 0) + 1;
    var totalPages = (pagination.total / (pagination?.pageSize ?? 10)).ceil();
    pageNum = min(pageNum, totalPages);
    var payload = {...oldTopicReplyArea.queryRule, 'pageNum': pageNum};
    var newAreaState = await Topic_detail_$topicIdCommand.getTopicReplyPageList(topic_detail_$topicIdState,payload: payload);
    return newAreaState;
  }

  static Future<Topic_detail_$topicIdBaseState> getTopicReplyPageListRefresh(Topic_detail_$topicIdAbstractProvider topic_detail_$topicIdState) async {
    var oldTopicReplyArea = topic_detail_$topicIdState.topicReplyArea;
    var payload = {...oldTopicReplyArea.queryRule};
    var newAreaState = await Topic_detail_$topicIdCommand.getTopicReplyPageList(topic_detail_$topicIdState,payload: payload);
    return newAreaState;
  }

  /// 
  static Future<Topic_detail_$topicIdBaseState> replyUp(Topic_detail_$topicIdAbstractProvider topic_detail_$topicIdState, {Map<String, dynamic> payload, @required String replyId }) async {
    TopicReply topicReply = await Topic_detail_$topicIdApis.replyUp(null, payload: payload, replyId: replyId);
    var oldTopicReplyArea = topic_detail_$topicIdState.topicReplyArea;
    var topicReplyMap = CollectionUtil.appendOrUpdateMap(oldTopicReplyArea?.clone()?.valueMap,  TopicReply.toIdMap([topicReply]));

    var newState = _Topic_detail_$topicIdState(
      topicReplyArea: AreaState(
        fetched: true,
        valueMap: topicReplyMap,
      ),
    );
    return newState;
  }


}