// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:webviewflutter/message.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:firebase_core/firebase_core.dart';
// class MessagingWidget extends StatefulWidget {
//   @override
//   _MessagingWidgetState createState() => _MessagingWidgetState();
// }

// class _MessagingWidgetState extends State<MessagingWidget> {
//   Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // If you're going to use other Firebase services in the background, such as Firestore,
//   // make sure you call `initializeApp` before using other Firebase services.
//   await Firebase.initializeApp();
//   print('Handling a background message ${message.messageId}');
// }
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();
    

//   final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance; 
//   NotificationSettings settings = await firebaseMessaging.requestPermission(
//   alert: true,
//   announcement: false,
//   badge: true,
//   carPlay: false,
//   criticalAlert: false,
//   provisional: false,
//   sound: true,
// );  //provided by plugin
//    List<Messagess> messages = [];  

//   @override
//   void initState() {
//     super.initState();
//     _firebaseMessaging.configure(
//       onMessage: (Map<String, dynamic> message) async {
//         print("onMessage: $message");
//         final notification = message['notification'];
//         setState(() {
//           messages.add(Message(
//               title: notification['title'], body: notification['body']));
//         });
//       },
//       onLaunch: (Map<String, dynamic> message) async {
//         print("onLaunch: $message");

//         final notification = message['data'];
//         setState(() {
//           messages.add(Message(
//             title: '${notification['title']}',
//             body: '${notification['body']}',
//           ));
//         });
//       },
//       onResume: (Map<String, dynamic> message) async {
//         print("onResume: $message");
//       },
//     );
//     _firebaseMessaging.requestNotificationPermissions(
//         const IosNotificationSettings(sound: true, badge: true, alert: true));
//   }

//   @override
//   Widget build(BuildContext context) => ListView(
//     children: messages.map(buildMessage).toList(),
//   );

//   Widget buildMessage(Message message) => ListTile(
//     title: Text(message.title),
//     subtitle: Text(message.body),
//   );
// }