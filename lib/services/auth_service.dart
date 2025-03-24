import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<User?> signInAnonymously() async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInAnonymously();
      return userCredential.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Stream<User?> get user {
    return _firebaseAuth.authStateChanges();
  }
}
