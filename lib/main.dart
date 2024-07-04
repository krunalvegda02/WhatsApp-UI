import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// var myList = [
//   "krunal",
//   "bhgyaraj",
//   "raj",
//   "sumit",
//   "kadam",
//   "arpit",
//   "raj",
//   "krun",
//   "rajuu",
//   "shyam"
// ];

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         appBar: AppBar(
//           bottom: TabBar(tabs: [
//             TabBar(indicatorColor: Colors.teal, tabs: [
//               Container(
//                 width: 30,
//                 child: Tab(icon: Icon(Icons.camera_alt_outlined)),
//               ),
//               Container(
//                 //width: 60,
//                 child: Tab(text: ("Chats")),
//               ),
//               Container(
//                 //width: 60,
//                 child: Tab(text: ("Status")),
//               ),
//               Container(
//                 //width: 600,
//                 //height: 50,
//                 child: Tab(text: ("Calls")),
//               ),
//             ]),
//           ]),
//           title: Text("WhatsApp"),
//           backgroundColor: Colors.green,
//         ),
//       ),
//     );
//   }
// }
