import 'package:flutter/material.dart';
import '../Screens/MyHomePage.dart';
class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 0, 0, 0)),
          onPressed: () {
            // Reemplaza la pantalla actual por MyHomePage
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage(title: 'Título')),
            );
          },
        ),
        title: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/samuel1-01.png')
              ),
            SizedBox(width: 10.0),
            Text('Muppet69'),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
            },
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
    return Align(
      alignment: esSoporte ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: esSoporte
              ? BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                )
                : BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
        boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // Cambios de posición de la sombra
            ),
          ],
        ),
        child: Text(
          texto,
          style: TextStyle(color: Colors.black), // Color del texto
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
                
                hintText: ' Mensaje',hintStyle: TextStyle(color: Colors.grey[600]),
                prefixIcon: Icon(Icons.emoji_emotions_outlined),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min, 
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.attach_file), 
                      onPressed: () {
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.camera_alt), 
                      onPressed: () {
                      },
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
              onPressed: () {
               
              },
            ),
          ),
        ],
      ),
    );
  }
}