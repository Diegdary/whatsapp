import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Settings.dart';

import 'chat.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title,
          style: TextStyle(color: Color(0xFF2d9962)),
        ),
        backgroundColor: Color(0xFFFFFFFFF),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined),
            color: Color(0xFF000000),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Color(0xFF000000)),
          PopupMenuButton(
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: 1,
                child: Text("New group"),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text("New broadcast"),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text("Linked devices"),
              ),
              const PopupMenuItem(
                value: 4,
                child: Text("Starred messages"),
              ),
              const PopupMenuItem(
                value: 5,
                child: Text("Settings"),
              )
            ],
            onSelected: (value) {
              switch (value) {
                case 5:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Settings())));
                  break;
              }
            },
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Icon(
                        Icons.archive_outlined,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text("Archivados")),
                  ],
                ),
                Text(
                  "5",
                  style: TextStyle(color: Color(0xFF60977E)),
                )
              ],
            ),
            /////chat
            Column(
              children: List.generate(
                  6,
                  (index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreen()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  child: Image(
                                    image: AssetImage('assets/samuel1-01.png'),
                                    width: 55.0,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                                        child: Text(
                                          "Muppet69",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.done,
                                              color: Color.fromARGB(
                                                  255, 0, 199, 173),
                                              size: 20.0,
                                            ),
                                            Text("Hola!!"),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "7:49 PM",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text("")
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.message_rounded),
        backgroundColor: Color(0xFF2d9962),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
