import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import '../config/service_url.dart';
import 'package:flutter/material.dart';

//获取首页主题内容 设置formData是可选参数
Future request(url, {formData}) async {
  try {
    print('开始获取数据..........');
    Response response;
    Dio dio = Dio();
    dio.options.contentType =
        ContentType.parse('application/x-www-form-urlencoded');

    if (formData == null) {
      response = await dio.post(servicePath[url]);
    } else {
      response = await dio.post(servicePath[url], data: formData);
    }

    if (response.statusCode == 200) {
      var data =response.data;
      print('${data.runtimeType} $url : $formData\n${data}' );

      return response.data;
    } else {
      throw Exception(url+'<----------后端接口出现异常');
    }
  } catch (error) {
    return print('ERROR:=======================>${error}');
  }
}
