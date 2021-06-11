import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewExample extends StatefulWidget {
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
     
   messages()async{
await FirebaseMessaging.instance.subscribeToTopic("webapp");
   }
    final flutterWebViewPlugin = FlutterWebviewPlugin();
  @override
  void initState() {
    super.initState();
    FirebaseMessaging.instance.subscribeToTopic("NewTopic");
    messages();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("30 Minutes Fix"),
      backgroundColor: Colors.yellow,
       actions: [
                       Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
                    onPressed: () {
                      flutterWebViewPlugin.goBack();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
                    onPressed: () {
                      flutterWebViewPlugin.goForward();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.autorenew,color: Colors.white,),
                    onPressed: () {
                      flutterWebViewPlugin.reload();
                    },
                  ),
                ],
              ),
        ],
      ),
          body: WebView(
        initialUrl: 'https://30minutesfix.com.au/',
      ),
    );
  }
}