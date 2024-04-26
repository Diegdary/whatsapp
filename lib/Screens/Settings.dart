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
          style: TextStyle(
              color: Color(0xFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 25),
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
          Divider(),
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
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Soy el come piZZa ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                child: Container(
                    child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.qr_code, color: Colors.green),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        child: Icon(Icons.arrow_drop_down_circle,
                            color: Colors.green),
                      ),
                    ),
                  ],
                )),
              )
            ],
          ),
          Divider(color: Colors.grey[300]),
          ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text('Account'),
            subtitle: Text(
              'Security notifications, change number',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy'),
            subtitle: Text(
              'Block contacts, disappearing messages',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.face),
            title: Text('Avatar'),
            subtitle: Text(
              'Creat, edit profile photo',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Chats'),
            subtitle: Text(
              'Themes, wallpapers, chat history',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            subtitle: Text(
              'Message, group & call tones',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.data_usage),
            title: Text('Storage and data'),
            subtitle: Text(
              'Network usage,auto-download',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('App language'),
            subtitle: Text(
              'English(device s language)',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            subtitle: Text(
              'No one s coming to help you',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text('Invite a friend'),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("From Meta",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10
            
                    ),),
                  ),
                  Container(
                    width: 40,
                    height: 30,
                    child: Image.asset('assets/Meta-Logo.png'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
