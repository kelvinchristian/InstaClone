import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Path: lib/chat_page.dart
      // Compare this snippet from lib/chat_list_page.dart:
      // appBar: AppBar(
      //   title: Text("Chat"),
      // ),
      appBar: AppBar(
        title: Text("Chat"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              reverse: true,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
                        scale: 1.0),
                  ),
                  title: Text("User $index",
                      style: TextStyle(fontSize: 14, color: Colors.white)),
                  subtitle: Text("This is the last message",
                      style: TextStyle(color: Colors.grey)),
                  trailing:
                      Text("10:00 AM", style: TextStyle(color: Colors.grey)),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      filled: true,
                      fillColor: Colors.grey.shade900,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blue,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
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
