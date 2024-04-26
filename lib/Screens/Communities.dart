import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          "Communities",
          style: TextStyle(
              color: Color(0xFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        backgroundColor: Color(0xFFFFFFFFF),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined),
            color: Color(0xFF000000),
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: 1,
                child: Text("Settings"),
              )
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          Divider(),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 212, 212, 212), // Color de fondo
                  //shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(9) // Forma del contenedor
                  ),
              child: Icon(
                Icons.group_add,
                color: Colors.white,
                size: 30,
              ),
            ),
            title: Text('New community'),
            onTap: () {},
          ),
          Container(
            height: 10,
            color: Color.fromARGB(255, 247, 245, 245),
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 212, 212, 212), // Color de fondo
                  //shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(9) // Forma del contenedor
                  ),
              child: Icon(
                Icons.group,
                color: Colors.white,
                size: 30,
              ),
            ),
            title: Text('Flutter Community'),
            onTap: () {},
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 212, 212, 212), // Color de fondo
                  //shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(9) // Forma del contenedor
                  ),
              child: Icon(
                Icons.group,
                color: Colors.white,
                size: 30,
              ),
            ),
            title: Text('Flutter Community 2'),
            onTap: () {},
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 212, 212, 212), // Color de fondo
                  //shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(9) // Forma del contenedor
                  ),
              child: Icon(
                Icons.group,
                color: Colors.white,
                size: 30,
              ),
            ),
            title: Text('Flutter Community 3 (ayuda)'),
            onTap: () {},
          ),
          Container(
            height: 5,
            color: Color.fromARGB(255, 247, 245, 245),
          ),
          ListTile(
            leading: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 172, 255, 210), // Color de fondo
                    //shape: BoxShape.rectangle,
                    borderRadius:
                        BorderRadius.circular(10) // Forma del contenedor
                    ),
                child: Icon(
                  Icons.campaign,
                  size: 40,
                  color: const Color.fromARGB(255, 42, 128, 86),
                )),
            title: Text('Announcements'),
            subtitle: Text('You  were added'),
            trailing: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                "9/26/23",
                style: TextStyle(color: Colors.grey, fontSize: 11),
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 212, 212, 212), // Color de fondo
                  //shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(9) // Forma del contenedor
                  ),
              child: Icon(
                Icons.group,
                color: Colors.white,
                size: 30,
              ),
            ),
            title: Text('El grupito de backend'),
            subtitle: Text('You  were added'),
            trailing: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                "9/26/23",
                style: TextStyle(color: Colors.grey, fontSize: 11),
              ),
            ),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Row(
              children: [
                Container(
                  child: Icon(Icons.chevron_right),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                    child: Text(
                      "View all",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ),
                Divider(),
                Container(
                  height: 10,
                  color: Color.fromARGB(255, 247, 245, 245),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
