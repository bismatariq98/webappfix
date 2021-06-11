import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webappfixer/animatedSplash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:webappfixer/webViewExample.dart';

// const kAndroidUserAgent =
//     'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36';

// String selectedUrl = '30minutesfix.com.au';

// // ignore: prefer_collection_literals
// final Set<JavascriptChannel> jsChannels = [
//   JavascriptChannel(
//       name: 'Print',
//       onMessageReceived: (JavascriptMessage message) {
//         print(message.message);
//       }),
// ].toSet();

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
 
//   await Firebase.initializeApp();
//   print('Handling a background message ${message.messageId}');
// }

// /// Create a [AndroidNotificationChannel] for heads up notifications
// const AndroidNotificationChannel channel = AndroidNotificationChannel(
//   'high_importance_channel', // id
//   'High Importance Notifications', // title
//   'This channel is used for important notifications.', // description
//   importance: Importance.high,
// );

// /// Initialize the [FlutterLocalNotificationsPlugin] package.
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
//  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//     alert: true,
//     badge: true,
//     sound: true,
//   );
//   FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(MyApp());
  // await  configLoading();
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:
      SplashScreen(),
     
    );
  }
}

// class MyApp extends StatelessWidget {
  
//   final flutterWebViewPlugin = FlutterWebviewPlugin();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//        debugShowCheckedModeBanner: false,
//       title: 'Flutter WebView Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       routes: {
//         '/': (_) =>  SplashScreen(),
//         '/widget': (_) {
//           return WebviewScaffold(
//             url: selectedUrl,
//             javascriptChannels: jsChannels,
//             mediaPlaybackRequiresUserGesture: false,
//             appBar: AppBar(
//               title: const Text('Widget WebView'),
//             ),
//             withZoom: true,
//             withLocalStorage: true,
//             hidden: true,
//             initialChild: Container(
//               color: Colors.redAccent,
//               child: const Center(
//                 child: Text('Waiting.....'),
//               ),
//             ),
//             bottomNavigationBar: BottomAppBar(
//               child: Row(
//                 children: <Widget>[
//                   IconButton(
//                     icon: const Icon(Icons.arrow_back_ios),
//                     onPressed: () {
//                       flutterWebViewPlugin.goBack();
//                     },
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.arrow_forward_ios),
//                     onPressed: () {
//                       flutterWebViewPlugin.goForward();
//                     },
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.autorenew),
//                     onPressed: () {
//                       flutterWebViewPlugin.reload();
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       },
//     );
//   }
// }

// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }
  
// // class _MyHomePageState extends State {
  
// //   TextEditingController controller=TextEditingController();
// //   FlutterWebviewPlugin flutterWebviewPlugin= FlutterWebviewPlugin();
// //   var url= "https://google.com";
  
// //   @override
// //   void initState() {
// //     super.initState();
// //     flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged wvs) {});
// //   }
// //     searchURL(){
// //     setState(() {
// //       url = "https://www."+controller.text;
// //       flutterWebviewPlugin.reloadUrl(url);
// //       controller.text=url;
// //     });
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return WebviewScaffold(
// //       url: url,
// //       withZoom: true,
// //       hidden: true,
// //       // initialChild: Container(
// //       //   child:Center(child: Text("Loading"),)
// //       // ),
// //       appBar: AppBar(
// //         backgroundColor: Colors.green,
// //         leading: Icon(Icons.search),
// //         title: TextField(
// //           controller: controller,
// //           textInputAction: TextInputAction.search,
// //           onSubmitted:(url)=>searchURL(),
// //           style: TextStyle(
// //             color: Colors.white
// //           ), 
// //           decoration: InputDecoration(
// //             hintText: "Search Here",
// //             hintStyle: TextStyle(color: Colors.white)
// //           ),
// //         ),
//       //  actions: [
//       //     IconButton(icon: Icon(Icons.arrow_back),
//       //     onPressed: (){
//       //       flutterWebviewPlugin.goBack();
//       //       controller.text="";
//       //     }
//       //     ),
//       //     IconButton(icon: Icon(Icons.arrow_forward),
//       //     onPressed: searchURL,), 
//       //   ],
// //       ),
// //     );
// //   }
// // }
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);



//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
   
//    messages()async{
// await FirebaseMessaging.instance.subscribeToTopic("webapp");
//    }

//   // Instance of WebView plugin
//   final flutterWebViewPlugin = FlutterWebviewPlugin();

//   // On destroy stream
//   late StreamSubscription _onDestroy;

//   // On urlChanged stream
//   late StreamSubscription<String> _onUrlChanged;

//   // On urlChanged stream
//   late StreamSubscription<WebViewStateChanged> _onStateChanged;

//   late StreamSubscription<WebViewHttpError> _onHttpError;

//   late StreamSubscription<double> _onProgressChanged;

//   late StreamSubscription<double> _onScrollYChanged;

//   late StreamSubscription<double> _onScrollXChanged;

//   final _urlCtrl = TextEditingController(text: selectedUrl);

//   final _codeCtrl = TextEditingController(text: 'window.navigator.userAgent');

//   final _scaffoldKey = GlobalKey<ScaffoldState>();

//   final _history = [];

//   @override
//   void initState() {
//     super.initState();
//    FirebaseMessaging.instance.subscribeToTopic("NewTopic");
//     // flutterWebViewPlugin.close();

//     _urlCtrl.addListener(() {
//       selectedUrl = _urlCtrl.text;
//     });
//       messages();
//     //  flutterWebViewPlugin.launch(selectedUrl);
//         // flutterWebViewPlugin.launch(
                  
//         //           selectedUrl,
                  
//         //           rect: Rect.fromLTWH(
//         //               0.0, 80.0, 500, 550),
//         //           userAgent: kAndroidUserAgent,
//         //           invalidUrlRegex:
//         //               r'^(https).+(twitter)', // prevent redirecting to twitter when user click on its icon in flutter website
//         //         );

//     // Add a listener to on destroy WebView, so you can make came actions.
//     _onDestroy = flutterWebViewPlugin.onDestroy.listen((_) {
//       if (mounted) {
//         // Actions like show a info toast.
//         ScaffoldMessenger.of(context)
//             .showSnackBar(const SnackBar(content: Text('Webview Destroyed')));
//       }
//     });

//     // Add a listener to on url changed
//     _onUrlChanged = flutterWebViewPlugin.onUrlChanged.listen((String url) {
//       if (mounted) {
//         setState(() {
//           _history.add('onUrlChanged: $url');
//         });
//       }
//     });

//     _onProgressChanged =
//         flutterWebViewPlugin.onProgressChanged.listen((double progress) {
//       if (mounted) {
//         setState(() {
//           _history.add('onProgressChanged: $progress');
//         });
//       }
//     });

//     _onScrollYChanged =
//         flutterWebViewPlugin.onScrollYChanged.listen((double y) {
//       if (mounted) {
//         setState(() {
//           _history.add('Scroll in Y Direction: $y');
//         });
//       }
//     });

//     _onScrollXChanged =
//         flutterWebViewPlugin.onScrollXChanged.listen((double x) {
//       if (mounted) {
//         setState(() {
//           _history.add('Scroll in X Direction: $x');
//         });
//       }
//     });

//     _onStateChanged =
//         flutterWebViewPlugin.onStateChanged.listen((WebViewStateChanged state) {
//       if (mounted) {
//         setState(() {
//           _history.add('onStateChanged: ${state.type} ${state.url}');
//         });
//       }
//     });

//     _onHttpError =
//         flutterWebViewPlugin.onHttpError.listen((WebViewHttpError error) {
//       if (mounted) {
//         setState(() {
//           _history.add('onHttpError: ${error.code} ${error.url}');
//         });
//       }
//     });
//   }

// webViewThings(){
//             flutterWebViewPlugin.launch(
                  
//                   selectedUrl,
                  
//                   rect: Rect.fromLTWH(
//                       0.0, 130.0, MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
//                   userAgent: kAndroidUserAgent,
//                   invalidUrlRegex:
//                       r'^(https).+(twitter)', // prevent redirecting to twitter when user click on its icon in flutter website
//                 );
// }
//   Widget webViewThing(){
//     return Scaffold(
      
//       //  bottomNavigationBar: BottomAppBar(
//       //         child: Row(
//       //           children: <Widget>[
//       //             IconButton(
//       //               icon: const Icon(Icons.arrow_back_ios),
//       //               onPressed: () {
//       //                 flutterWebViewPlugin.goBack();
//       //               },
//       //             ),
//       //             IconButton(
//       //               icon: const Icon(Icons.arrow_forward_ios),
//       //               onPressed: () {
//       //                 flutterWebViewPlugin.goForward();
//       //               },
//       //             ),
//       //             IconButton(
//       //               icon: const Icon(Icons.autorenew),
//       //               onPressed: () {
//       //                 flutterWebViewPlugin.reload();
//       //               },
//       //             ),
//       //           ],
//       //         ),
//       //       ),
//      appBar: AppBar(
        
//         title: const Text('ParaGliding Shop'),
//         backgroundColor: Colors.green,
//         actions: [
//                        Row(
//                 children: <Widget>[
//                   IconButton(
//                     icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
//                     onPressed: () {
//                       flutterWebViewPlugin.goBack();
//                     },
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
//                     onPressed: () {
//                       flutterWebViewPlugin.goForward();
//                     },
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.autorenew,color: Colors.white,),
//                     onPressed: () {
//                       flutterWebViewPlugin.reload();
//                     },
//                   ),
//                 ],
//               ),
//         ],
       
//       ), 
      

//       body:webViewThings(), 
     

//     );


//   }
//   @override
//   void dispose() {
//     // Every listener should be canceled, the same should be done with this stream.
//     _onDestroy.cancel();
//     _onUrlChanged.cancel();
//     _onStateChanged.cancel();
//     _onHttpError.cancel();
//     _onProgressChanged.cancel();
//     _onScrollXChanged.cancel();
//     _onScrollYChanged.cancel();

//     flutterWebViewPlugin.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) { 
    
//     return Scaffold(
      
//        bottomNavigationBar: BottomAppBar(
//               child:
//                Row(
//                 children: <Widget>[
//                   IconButton(
//                     icon: const Icon(Icons.arrow_back_ios),
//                     onPressed: () {
//                       flutterWebViewPlugin.goBack();
//                     },
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.arrow_forward_ios),
//                     onPressed: () {
//                       flutterWebViewPlugin.goForward();
//                     },
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.autorenew),
//                     onPressed: () {
//                       flutterWebViewPlugin.reload();
//                     },
//                   ),
//                 ],
//               ),
//             ),
//       key: _scaffoldKey,
    
//      appBar: AppBar(
        
//         title: const Text('ParaGliding Shop'),
//         backgroundColor: Colors.green,
//         actions: [
//                        Row(
//                 children: <Widget>[
//                   IconButton(
//                     icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
//                     onPressed: () {
//                       flutterWebViewPlugin.goBack();
//                     },
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,),
//                     onPressed: () {
//                       flutterWebViewPlugin.goForward();
//                     },
//                   ),
//                   IconButton(
//                     icon: const Icon(Icons.autorenew,color: Colors.white,),
//                     onPressed: () {
//                       flutterWebViewPlugin.reload();
//                     },
//                   ),
//                 ],
//               ),
//         ],
       
//       ), 
      
//       body: 
//       Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Column(children: [
//           webViewThing(),
//         ],),
//       ),
//       // SingleChildScrollView(
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: [
//       //       Container(
//       //         padding: const EdgeInsets.all(24.0),
//       //         child: TextField(controller: _urlCtrl),
//       //       ),
//       //       ElevatedButton(
//       //         onPressed: () {
//       //           flutterWebViewPlugin.launch(
                  
//       //             selectedUrl,
                  
//       //             rect: Rect.fromLTWH(
//       //                 0.0, 80.0, MediaQuery.of(context).size.width, 550),
//       //             userAgent: kAndroidUserAgent,
//       //             invalidUrlRegex:
//       //                 r'^(https).+(twitter)', // prevent redirecting to twitter when user click on its icon in flutter website
//       //           );
//       //         },
//       //         child: const Text('Open Webview (rect)'),
//       //       ),
//       //       ElevatedButton(
//       //         onPressed: () {
//       //           flutterWebViewPlugin.launch(
                  
//       //             selectedUrl, hidden: true);
//       //         },
//       //         child: const Text('Open "hidden" Webview'),
//       //       ),
//       //       ElevatedButton(
//       //         onPressed: () {
//       //           flutterWebViewPlugin.launch(
                  
//       //             selectedUrl,);
//       //         },
//       //         child: const Text('Open Fullscreen Webview'),
//       //       ),
//       //       ElevatedButton(
//       //         onPressed: () {
//       //           Navigator.of(context).pushNamed('/widget');
//       //         },
//       //         child: const Text('Open widget webview'),
//       //       ),
//       //       Container(
//       //         padding: const EdgeInsets.all(24.0),
//       //         child: TextField(controller: _codeCtrl),
//       //       ),
//       //       ElevatedButton(
//       //         onPressed: () {
//       //           final future =
//       //               flutterWebViewPlugin.evalJavascript(_codeCtrl.text);
//       //           future.then((String? result) {
//       //             setState(() {
//       //               _history.add('eval: $result');
//       //             });
//       //           });
//       //         },
//       //         child: const Text('Eval some javascript'),
//       //       ),
//       //       ElevatedButton(
//       //         onPressed: () {
//       //           final future = flutterWebViewPlugin
//       //               .evalJavascript('alert("Hello World");');
//       //           future.then((String? result) {
//       //             setState(() {
//       //               _history.add('eval: $result');
//       //             });
//       //           });
//       //         },
//       //         child: const Text('Eval javascript alert()'),
//       //       ),
//       //       ElevatedButton(
//       //         onPressed: () {
//       //           setState(() {
//       //             _history.clear();
//       //           });
//       //           flutterWebViewPlugin.close();
//       //         },
//       //         child: const Text('Close'),
//       //       ),
//       //       ElevatedButton(
//       //         onPressed: () {
//       //           flutterWebViewPlugin.getCookies().then((m) {
//       //             setState(() {
//       //               _history.add('cookies: $m');
//       //             });
//       //           });
//       //         },
//       //         child: const Text('Cookies'),
//       //       ),
//       //       Text(_history.join('\n'))
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }



