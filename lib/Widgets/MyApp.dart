import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Communities.dart';
import 'package:whatsapp/Screens/Home.dart';
import 'package:whatsapp/Screens/Settings.dart';
import 'package:whatsapp/Screens/statuss.dart';

import '../Screens/MyHomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // const MyHomePage(title:'Whatsapp')
      //home: const Settings(),
      // const Community(),
      // const statusme(),
      home: const Home(),
    );
  }
}
