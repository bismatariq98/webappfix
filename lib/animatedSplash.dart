import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:webappfixer/main.dart';
import 'package:webappfixer/webViewExample.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen>  {

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
        Timer(
            Duration(seconds: 4),
                () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) =>
                WebViewExample()
                
                )));


    var assetsImage = new AssetImage(
        'images/new_logo.png'); //<- Creates an object that fetches an image.
    var image = new Image(
        image: assetsImage,
        height:300); //<- Creates a widget that displays an image.

    return MaterialApp(
      home: Scaffold(
        /* appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor:
              Colors.blue, //<- background color to combine with the picture :-)
        ),*/
            body: new Image.asset(
        'asset/SplashScreen.jpg',
        // color: primarycolor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.cover,
      ),
      ),
    );
  }
}
