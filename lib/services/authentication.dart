import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:heritage_blog/modal/User.dart';

class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User _userFromFireBase(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFireBase);
  }

  Future userLoginWithUserName(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFireBase(user);
    } catch (e) {
      return null;
    }
  }

  Future userRegistration(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFireBase(user);
    } catch (err) {
      print(err);
      return null;
    }
  }

  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFireBase(user);
    } catch (e) {
      print('something went wrong');
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (err) {
      print("err");
      return null;
    }
  }
}
