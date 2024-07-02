// ignore_for_file: empty_catches

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
// Instance of auth
  final FirebaseAuth _auth = FirebaseAuth.instance;

// Sign In
  Future<UserCredential> signInWithEmailPassword(
      String email, password, BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

// Sign Up
  Future<UserCredential> signUpWithEmailPassword(String email, password) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

//Sign Out
  Future<void> signOut() async {
    return await _auth.signOut();
  }

//Errors
}
