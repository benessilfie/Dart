import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('My Contacts', 
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,
        color: Colors.black),),

        actions: const [
          Padding(padding: EdgeInsets.only(right: 10),
          child: Center(
            child: CircleAvatar(radius: 25, 
            backgroundImage: AssetImage('assets/avatar.jpg'),),
           ),
          ),
        ],

        elevation: 0,
        backgroundColor: Colors.white,
        bottom:  PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
           child: TextField(
             decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13)
              ),
              hintText: 'search by name or number',
              prefixIcon: const Icon(Icons.search),
            ),
          ),
        ),),
      ),

      body: ListView(
        padding: const EdgeInsets.all(15),
        children: const [
           Text('Recents', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, ),),
           ListTile(
             leading: CircleAvatar(
               radius: 22,
               backgroundImage: ,
               ),
             title: Text('Micheal Nyarko', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
             subtitle: Text('+233 56 342 8965'),
             trailing: IconButton(onPressed: null, icon: Icon(Icons.more_horiz)),
           )
        ],
      ),

    );
  }
}