import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: '电子邮件'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: '密码'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle login
                  },
                  child: Text('登录'),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text('跳过'),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text('注册'),
            ),
          ],
        ),
      ),
    );
  }
}
