import 'dart:io';

import "package:firebase_auth/firebase_auth.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
class UserProfileSignUp{

  static Future<void> createUserProfile({
    required String email,
    required String image,
    required String fullName,
    required String nickname,
    required String phoneNumber,
    required String gender,
  }) async {

    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      final FirebaseFirestore firestore = FirebaseFirestore.instance;

      // Check if email already exists


        // Email doesn't exist, proceed with signup


        // Get the user ID
        // String uid = userCredential.user!.uid;

        // Create a document in the "users" collection with user data
        await firestore.collection('users').doc().set({
          'email': email,
          'fullName': fullName,
          'nickname': nickname,
          'phoneNumber': phoneNumber,
          'gender': gender,
          'image': image,

        });

        print('Account created successfully!');
      // } else {
      //   print('The account already exists for that email.');
      // }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else {
        print(e.message);
      }
    } catch (e) {
      print(e.toString());
    }
  }
  static Future<void> signUpWithEmailAndPassword(
      String email,
      String password,
      ) async {
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      final FirebaseFirestore firestore = FirebaseFirestore.instance;
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

    }on FirebaseAuthException catch (e) {
      print(e.message);
    } catch (e) {
      print(e.toString());
    }
    }

    static Future<void> signInWithEmailAndPassword({
      required String email,
      required String password,
    }) async {
      try {
        final FirebaseAuth auth = FirebaseAuth.instance;

        // Sign in the user with email and password
        UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );

        // Handle successful sign-in (optional)
        print('Signed in successfully!');

      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('The email is not registered.');
        } else if (e.code == 'wrong-password') {
          print('The password is incorrect.');
        } else {
          print(e.message);
        }
      } catch (e) {
        print(e.toString());
      }
    }
  static Future<String?> uploadImageToFirebase(File imageFile) async {
    try {
      final storage = FirebaseStorage.instance;
      final imageName = DateTime.now().millisecondsSinceEpoch.toString();
      final reference = storage.ref().child('images/$imageName');
      final uploadTask = reference.putFile(imageFile as File);

      final snapshot = await uploadTask.whenComplete(() => null);
      final url = await snapshot.ref.getDownloadURL();

      return url;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }


}
