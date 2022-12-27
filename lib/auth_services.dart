import 'package:firebase_auth/firebase_auth.dart' as auth;
class AuthService{
  final auth.FirebaseAuth _fireBaseAuth = auth.FirebaseAuth.instance;

  User? _userFromFirebase(auth.User? user) {
    if (user == null){return null;}
    return User(user.uid, user.email);
  }

  Stream<User?>? get user{
    return _fireBaseAuth.authStateChanges().map(_userFromFirebase);
  }

  Future<User?>siginWithEmailAndPassword(
    String email,
    String password,
  )async{
      final credential = await _fireBaseAuth.signInWithEmailAndPassword(
    email:email, password:password);
      return _userFromFirebase(credential.user);
    }

    Future<User?> createUserWithEmailAndPassword(
      String email,
      String password,
    ) async{
      final credential = await _fireBaseAuth.createUserWithEmailAndPassword(
        email:email, password:password);
        return _userFromFirebase(credential.user);
    }

    Future<void> signOut() async{
      return await _fireBaseAuth.signOut();
    }
}

class User{
  final String uid;
  final String? email;
  User(this.uid, this.email);
}