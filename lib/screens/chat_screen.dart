import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('聊天'),
      ),
      body: Center(
        child: Text('这是聊天页面'),
      ),
    );
  }
}
