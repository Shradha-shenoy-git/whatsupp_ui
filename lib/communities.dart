import 'package:flutter/material.dart';
class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: AppBar(

      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      title: Text("Communities"),

      actions: [
        Icon(Icons.qr_code_scanner),
        SizedBox(width: 30),
        Icon(Icons.more_vert),
        SizedBox(width: 20),


      ],
    ),);
  }
}
