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

        
      ),
    );
  }
}