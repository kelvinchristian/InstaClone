import 'package:cloney/chat_page.dart';
import 'package:cloney/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MySearchBar(
                  (value) {},
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 20,
             primary: false,
             physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ChatPage()));
                  },
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
                        scale: 1.0),
                  ),
                  title: Text("User $index",
                      style: TextStyle(fontSize: 14,
                           color: Colors.white)),
                  subtitle: Text("This is the last message",
                      style: TextStyle(color: Colors.grey)),
                  trailing:
                  Text("10:00 AM", style: TextStyle(color: Colors.grey)),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
