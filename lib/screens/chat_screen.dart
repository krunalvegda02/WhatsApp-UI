import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(""),
                ),
                title: Text("krunal"),
                subtitle: Text("hello how are you..?"),
                trailing: Text("12:00 AM"),
              )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
              //borderRadius:bor...
              ),
          child: const Icon(Icons.message_outlined, color: Colors.white70)),
    );
  }
}
