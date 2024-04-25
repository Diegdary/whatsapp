import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        
        title: Container(
          child: Row(
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Container(
                  child: Icon( Icons.arrow_back),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 200, 0),
                child: Text(
                  "Settings",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              
              Container(
                child: Icon(Icons.search),
              )

            ],
          ),
        ),
        backgroundColor: Color(0xFFFFFFFFF),
      ),
    );
  }
}