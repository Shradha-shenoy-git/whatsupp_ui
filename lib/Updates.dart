import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("updates"),

        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(
        children: [
          Text("Staus"),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "data:image/png;base64,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",
              ),
            ),
            title: Text("Add status"),subtitle:Text("Dissapeares after 24 hours") ,
          ),


    Text("Recents UPDATES"),
    ListTile(
    leading: CircleAvatar(
    backgroundImage: NetworkImage(
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF2yaox2cALIq_yyd-9qEyovEsficJr7X9QQ&s",
    ),
    ),
    title: Text("sumanth"),subtitle: Text("july12 ,8:00AM"),
    ),
        ],
      ),
    );
  }
}
