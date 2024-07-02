// ignore_for_file: empty_catches

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
// Instance of auth & firestore
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;


// get current user
User? getCurrentUser(){
  return _auth.currentUser;
}

// Sign In
  Future<UserCredential> signInWithEmailPassword(
      String email, password, BuildContext context) async {
    try {
      // sign user in
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      // save the user info if doesn't exit
      firestore.collection("Users").doc(userCredential.user!.uid).set({
        'uid': userCredential.user!.uid,
        'email': email,
      });
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

// Sign Up
  Future<UserCredential> signUpWithEmailPassword(String email, password) async {
    try {
      // create a user
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // save the user in the sepetrate doc.
      firestore.collection("Users").doc(userCredential.user!.uid).set({
        'uid': userCredential.user!.uid,
        'email': email,
      });

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
