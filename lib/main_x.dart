import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluwx/fluwx.dart' as fluwx;

import 'package:app_frontend_flutter/fluwx/launch_mini_program_page.dart';
import 'package:app_frontend_flutter/fluwx/subscribe_message_page.dart';

import 'package:app_frontend_flutter/fluwx/auth_by_qr_code_page.dart';
import 'package:app_frontend_flutter/fluwx/pay_page.dart';
import 'package:app_frontend_flutter/fluwx/send_auth.dart';
import 'package:app_frontend_flutter/fluwx/share_image_page.dart';
import 'package:app_frontend_flutter/fluwx/share_mini_program.dart';
import 'package:app_frontend_flutter/fluwx/share_music.dart';
import 'package:app_frontend_flutter/fluwx/share_text_image.dart';
import 'package:app_frontend_flutter/fluwx/share_video_page.dart';
import 'package:app_frontend_flutter/fluwx/share_web_page.dart';
import 'package:app_frontend_flutter/fluwx/sign_auto_deduct_page.dart';

import 'stgutil/app_config.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _initFluwx();
  }

  _initFluwx() async {
    var registerWxApi =await fluwx.registerWxApi(
//        appId: "wxd930ea5d5a258f4f", //这是范例的，
        appId: AppConfig.appId, //这是我自己的，这个不能唤醒微信授权
        doOnAndroid: true,
        doOnIOS: true,
        universalLink: AppConfig.universalLink );
    debugPrintStack(label: '注册后返回;$registerWxApi');
    var result = await fluwx.isWeChatInstalled();

    debugPrintStack(label:"is installed $result");
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {}

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: <String, WidgetBuilder>{
        "shareText": (context) => ShareTextPage(),
        "shareImage": (context) => ShareImagePage(),
        "shareWebPage": (context) => ShareWebPagePage(),
        "shareMusic": (context) => ShareMusicPage(),
        "shareVideo": (context) => ShareVideoPage(),
        "sendAuth": (context) => SendAuthPage(),
        "shareMiniProgram": (context) => ShareMiniProgramPage(),
        "pay": (context) => PayPage(),
        "launchMiniProgram": (context) => LaunchMiniProgramPage(),
        "subscribeMessage": (ctx) => SubscribeMessagePage(),
        "AuthByQRCode": (ctx) => AuthByQRCodePage(),
        'AutoDeduct': (ctx) => SignAutoDeductPage(),
      },
      home: new Scaffold(
          appBar: new AppBar(
            title: const Text('Plugin example app'),
          ),
          body: ShareSelectorPage()),
    );
  }
}

class ShareSelectorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: new OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("shareText");
                },
                child: const Text("share text")),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: new OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("shareImage");
                },
                child: const Text("share image")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("shareWebPage");
                },
                child: const Text("share webpage")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("shareMusic");
                },
                child: const Text("share music")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("shareVideo");
                },
                child: const Text("share video")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("shareMiniProgram");
                },
                child: const Text("share mini program")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("sendAuth");
                },
                child: const Text("send auth")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("pay");
                },
                child: const Text("pay")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("launchMiniProgram");
                },
                child: const Text("Launch MiniProgram")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("subscribeMessage");
                },
                child: const Text("SubscribeMessage")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("AuthByQRCode");
                },
                child: const Text("AuthByQRCode")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new OutlineButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("AutoDeduct");
                },
                child: const Text("SignAuto-deduct")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new OutlineButton(
                onPressed: () {
                  fluwx.openWeChatApp();
                },
                child: const Text("Open WeChat App")),
          ),
        ],
      ),
    );
  }
}
