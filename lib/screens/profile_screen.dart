import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('用户资料'),
      ),
      body: Center(
        child: Text('这是用户资料页面'),
      ),
    );
  }
}
