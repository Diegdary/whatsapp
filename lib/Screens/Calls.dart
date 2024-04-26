import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          "Calls",
          style: TextStyle(color: Color(0xFF0000000)),
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
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              color: Color(0xFF000000))
        ],
      ),
      body: Center(
        child: Container(
          //color: Colors.amber,
          width: (MediaQuery.of(context).size.width * 90 / 100),
          //MAIN COLUMN
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF1dab61),
                            child: Icon(
                              Icons.attach_file,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    "Create call link",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child:
                                      Text("Share link for your WhatsApp call"),
                                )
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Recents",
                      style: TextStyle(
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
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
                          padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Muppet69",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.arrow_outward,
                                      color: Color(0xFF1dab61),
                                      size: 20.0,
                                    ),
                                    Text("April 5, 9:02 PM",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                  ],
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                  Container(
                    child: Icon(
                      Icons.local_phone_outlined,
                      color: Color(0xFF1dab61),
                    ),
                  )
                ],
              ),
            ], //CHILDS FROM MAIN COLUMN
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.perm_phone_msg),
        backgroundColor: Color(0xFF2d9962),
      ),
    );
  }
}
