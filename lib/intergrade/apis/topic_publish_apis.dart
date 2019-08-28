///  Do not remove this unless you get business authorization.
///  Topic_publish
///  created by [stategen.progen] ,do not edit it manually otherwise your code will be override by next call progen,
///  由 [stategen.progen]代码生成器创建，不要手动修改,否则将在下次创建时自动覆盖

import '../beans/topic.dart';
import '../enums/topictype.dart';
import "../configs/tradeApp_config.dart";
import '../../stgutil/net_util.dart';
import 'package:flutter/material.dart';

class Topic_publishApis {
  /// POST /api/topic/saveTopic
  /// 
  static Future<Topic> saveTopic({Map<String, dynamic> payload, String topicId, TopicType topicType, String content, String title }) async {
    var requestInit = RequestInit();
    requestInit.baseUrlKey = tradeAppBaseUrlKey;
    requestInit.path = '/api/topic/saveTopic';
    requestInit.mediaType = MediaType.FORM;
    payload ??= {};
    if (topicId != null) {
      payload['topicId'] = topicId;
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
    requestInit.data = payload;
    requestInit.method = Method.POST;
    var dest = await NetUtil.fetch(requestInit);
    return Topic.fromJson(dest);
  }

}