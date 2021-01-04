///  Do not remove this unless you get business authorization.
///  Topic
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import '../beans/antdpagelist.dart';
import '../beans/pagination.dart';
import '../beans/topic.dart';
import '../enums/topictype.dart';
import "../configs/tradeApp_config.dart";
import '../../stgutil/net_util.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

class TopicApis {
  /// POST /api/topic/delete
  /// 
  static Future<String> delete(String param, {Map<String, dynamic> payload, String topicId }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/topic/delete';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (param != null) {
      payload['topicId'] = param;
    }
    if (topicId != null) {
      payload['topicId'] = topicId;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return dest;
  }

  /// POST /api/topic/deleteBatch
  /// 
  static Future<List<String>> deleteBatch(List<String> param, {Map<String, dynamic> payload, List<String> topicIds }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/topic/deleteBatch';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (param != null) {
      payload['topicIds'] = param;
    }
    if (topicIds != null) {
      payload['topicIds'] = topicIds;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return dest;
  }

  /// POST /api/topic/getTopicPageList
  /// 
  static Future<AntdPageList<Topic>> getTopicPageList({Map<String, dynamic> payload, TopicType topicType, bool mdrender, int page, int pageSize }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/topic/getTopicPageList';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (topicType != null) {
      payload['topicType'] = topicType;
    }
    if (mdrender != null) {
      payload['mdrender'] = mdrender;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return AntdPageList.fromJson(dest, Topic.fromJsonList);
  }

  /// POST /api/topic/update
  /// 
  static Future<Topic> update({Map<String, dynamic> payload, String authorId, TopicType topicType, String content, String title, DateTime lastReplyAt, int good, TopicType top, int visitCount, String topicId }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/topic/update';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (authorId != null) {
      payload['authorId'] = authorId;
    }
    if (topicType != null) {
      payload['topicType'] = topicType;
    }
    if (content != null) {
      payload['content'] = content;
    }
    if (title != null) {
      payload['title'] = title;
    }
    if (lastReplyAt != null) {
      payload['lastReplyAt'] = lastReplyAt;
    }
    if (good != null) {
      payload['good'] = good;
    }
    if (top != null) {
      payload['top'] = top;
    }
    if (visitCount != null) {
      payload['visitCount'] = visitCount;
    }
    if (topicId != null) {
      payload['topicId'] = topicId;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return Topic.fromJson(dest);
  }

}