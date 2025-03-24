import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/auth_service.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to IM App!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await authService.signInAnonymously();
              },
              child: Text('Sign In Anonymously'),
            ),
          ],
        ),
      ),
    );
  }
}
