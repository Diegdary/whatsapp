// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp/Screens/MyHomePage.dart';
import 'package:whatsapp/Screens/statuss.dart';
import 'package:whatsapp/Screens/Communities.dart';
import 'package:whatsapp/Screens/Calls.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final screens = [
    MyHomePage(title: "Whatsapp"),
    statusme(),
    Community(),
    Calls()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xFF000000),
          selectedItemColor: Color(0xFF115d3b),
          onTap: (index) => setState(() {
                currentIndex = index;
              }),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message_outlined,
              ),
              label: "Chats",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.noise_aware),
              label: "Updates",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined),
              label: "Community",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone_outlined),
              label: "Calls",
            ),
          ]),
    );
  }
}
