///  Do not remove this unless you get business authorization.
///  Topic_detail_$topicId
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import '../beans/pagelist.dart';
import '../beans/pagination.dart';
import '../beans/topic.dart';
import '../beans/topicreply.dart';
import "../configs/tradeApp_config.dart";
import '../../stgutil/net_util.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

class Topic_detail_$topicIdApis {
  /// POST /api/topic/:topicId/postReply
  /// 
  static Future<TopicReply> PostReply({Map<String, dynamic> payload, @required String topicId, String replyId, String authorId, String content, String parentReplyId }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/topic/:topicId/postReply';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (topicId != null) {
      payload['topicId'] = topicId;
    }
    if (replyId != null) {
      payload['replyId'] = replyId;
    }
    if (authorId != null) {
      payload['authorId'] = authorId;
    }
    if (content != null) {
      payload['content'] = content;
    }
    if (parentReplyId != null) {
      payload['parentReplyId'] = parentReplyId;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return TopicReply.fromJson(dest);
  }

  /// POST /api/topic/:topicId
  /// 
  static Future<Topic> getTopicDetail(String param, {Map<String, dynamic> payload, @required String topicId }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/topic/:topicId';
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
    return Topic.fromJson(dest);
  }

  /// POST /api/topic/:topicId/getReplies
  /// 
  static Future<PageList<TopicReply>> getTopicReplyPageList({Map<String, dynamic> payload, @required String topicId, int page, int pageSize }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/topic/:topicId/getReplies';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (topicId != null) {
      payload['topicId'] = topicId;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return PageList.fromJson(dest, TopicReply.fromJsonList);
  }

  /// POST /api/topic/reply/:replyId
  /// 
  static Future<TopicReply> replyUp(String param, {Map<String, dynamic> payload, @required String replyId }) async {
    var requestInit = RequestInit();
    requestInit.apiUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/topic/reply/:replyId';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (param != null) {
      payload['replyId'] = param;
    }
    if (replyId != null) {
      payload['replyId'] = replyId;
    }
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return TopicReply.fromJson(dest);
  }

}