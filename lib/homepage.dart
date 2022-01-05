import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Contacts', 
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 10),
          child: Center(
            child: CircleAvatar(radius: 25, 
            backgroundImage: AssetImage('assets/avatar.jpg'),),
          )
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        bottom: const PreferredSize(preferredSize: Size.fromHeight(50),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
          ),
        ),),
      ),
    );
  }
}