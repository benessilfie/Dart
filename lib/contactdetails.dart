import 'package:flutter/material.dart';


class ContactDetailsPage extends StatelessWidget {
  const ContactDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        title: const Text('Contact', 
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,
        color: Colors.black),),

        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert),),
        ]
      ),

      body: ListView(
        children: [
        const  CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('assets/abena.jpg'),
          ),

         const SizedBox(height: 25,),
         const Center(
            child: Text('Full name',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,),),
          ),

        const  Center(child: Text('Location', style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal,),)),
        const  SizedBox(height: 30,),

          Container(
            color: const Color(0xff9AADBE),
            child: Column(
              children: [

                ListTile (
                  title: const Text('Mobile',style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,),),
                  subtitle: const Text('+233 25 256 8547', 
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Color(0xff333333)),),

                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      TextButton(onPressed: (){}, child: const Icon(Icons.message, color: Colors.black,),
                      style: TextButton.styleFrom(backgroundColor: Colors.white,
                      shape: const CircleBorder())),
                      
                      TextButton(onPressed: (){}, child: const Icon(Icons.call, color: Colors.black,),
                      style: TextButton.styleFrom(backgroundColor: Colors.white,
                      shape: const CircleBorder())),
                    ],
                  ),
                ),

                ListTile (
                  title: const Text('Email', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,),),
                  subtitle: const Text('abenadela@gmail.com', 
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Color(0xff333333)),),

                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      TextButton(onPressed: (){}, child: const Icon(Icons.email, color: Colors.black,),
                      style: TextButton.styleFrom(backgroundColor: Colors.white,
                      shape: const CircleBorder())),
                    ],
                  ),
                ),

                ListTile (
                  title: const Text('Email', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,),),
                  subtitle: const Text('abenadela@gmail.com', 
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Color(0xff333333)),),

                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      TextButton(onPressed: (){}, child: const Icon(Icons.email, color: Colors.black,),
                      style: TextButton.styleFrom(backgroundColor: Colors.white,
                      shape: const CircleBorder())),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}