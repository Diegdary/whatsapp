import 'package:flutter/material.dart';
import '../Screens/MyHomePage.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: const Color.fromARGB(255, 0, 0, 0)),
          onPressed: () {
            // Reemplaza la pantalla actual por MyHomePage
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: <Widget>[
            CircleAvatar(backgroundImage: AssetImage('assets/samuel1-01.png')),
            SizedBox(width: 10.0),
            Text('Muppet69'),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: 1,
                child: Text("View contact"),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text("Media, links, and docs"),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text("Search"),
              ),
              const PopupMenuItem(
                value: 4,
                child: Text("Mute notifications"),
              ),
              const PopupMenuItem(
                value: 5,
                child: Text("Disappearing messages"),
              ),
              const PopupMenuItem(
                value: 6,
                child: Text("Wallpaper"),
              ),
              const PopupMenuItem(
                value: 7,
                child: Text("More"),
              )
            ],
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 133, 179, 179),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ChatBubble(
                      texto: "Hola, ¿cómo puedo ayudarte?",
                      esSoporte: true,
                    ),
                    ChatBubble(
                      texto: "Ayuda perdí todo mi dinero",
                      esSoporte: false,
                    ),
                  ],
                ),
              ),
              ChatInputField(),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String texto;
  final bool esSoporte;

  ChatBubble({required this.texto, required this.esSoporte});

  @override
  Widget build(BuildContext context) {
    final Color bubbleColor =
        esSoporte ? Colors.white : Color.fromARGB(255, 127, 176, 129);

    return Align(
      alignment: esSoporte ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: bubbleColor,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Text(
          texto,
          style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
    );
  }
}

class ChatInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      color: Color.fromARGB(255, 133, 179, 179),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: ' Mensaje',
                hintStyle: TextStyle(color: Colors.grey[600]),
                prefixIcon: Icon(Icons.emoji_emotions_outlined),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.attach_file),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.camera_alt),
                      onPressed: () {},
                    ),
                  ],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.9),
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.send, color: Colors.white),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
