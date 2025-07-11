import 'package:flutter/material.dart';
import 'package:whatsupp_ui/Chats.dart';
import 'package:whatsupp_ui/Updates.dart';
import 'package:whatsupp_ui/call.dart';
import 'package:whatsupp_ui/communities.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> pages = [Chats(), Updates(), Communities(), Call()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("Whatsapp"),
        centerTitle: true,
        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
          SizedBox(width: 20),
          Icon(Icons.camera_alt),
          SizedBox(width: 20),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedItemColor: Colors.green,unselectedItemColor: Colors.black,showUnselectedLabels:true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "Update"),
          BottomNavigationBarItem(icon: Icon(Icons.people_outline), label: "Communities",),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
        ],
      ),
      body:pages[index],
    );
  }
}
