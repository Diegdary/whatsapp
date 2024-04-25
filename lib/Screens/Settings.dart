import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          "Settings",
          style: TextStyle(color: Color(0xFF000000), fontWeight: FontWeight.bold,fontSize: 25),
        ),
        backgroundColor: Color(0xFFFFFFFFF),
        leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Color(0xFF000000)),
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Container(
                    child: CircleAvatar(
                  backgroundImage: AssetImage('assets/samuel1-01.png'),
                  radius: 40,
                )),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Container(
                        child: Text(
                          "Muppet68",
                          style: TextStyle(color: Color(0xFF000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      child:  Text(
                          "Estado ",
                          style: TextStyle(color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                        ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(child: Text("b"))
        ],
      ),
    );
  }
}
