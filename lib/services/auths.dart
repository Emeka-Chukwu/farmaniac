import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmaniac/models/farmer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
// import 'package:foodApp/utils/utils.dart';

class UserServices {
  // final StorageReference storageReference =
  //     FirebaseStorage.instance.ref().child("users");
  FirebaseFirestore firestorestance = FirebaseFirestore.instance;
  final FirebaseAuth userAuth = FirebaseAuth.instance;
  final StorageReference storageReference =
      FirebaseStorage.instance.ref().child("users");

  User user;

  bool currentUserExist() {
    return FirebaseAuth.instance.currentUser != null;
  }

  Future<Farmer> currentUser() async {
    user = FirebaseAuth.instance.currentUser;
    // print(user.uid.toString());
    final usersdoc = await firestorestance
        .collection("users")
        .doc(user.uid.toString())
        .get()
        .then((value) => value);
    if (usersdoc.exists) {
      return Farmer.fromJson(usersdoc);
    }
  }

  Future<void> createUserAccount(Farmer farmer) async {
    if (farmer.password == farmer.confirmpassword) {
      User firebaseUser = (await FirebaseAuth.instance
              .createUserWithEmailAndPassword(
                  email: farmer.email, password: farmer.password))
          .user;

      await firestorestance
          .collection("users")
          .doc(firebaseUser.uid.toString())
          .set(farmer.toJson())
          .then((value) {
        // Users.fromSnapshot();print
        print("jjj");
      });

      //   await firestorestance
      //       .collection("users")
      //       .doc(firebaseUser.uid.toString())
      //       .get()
      //       .then((value) {
      //     farmer = Farmer.fromJson(value);
      //   });
      //   return farmer;
    }

    // return null;
  }
  // user login application logic

  Future<Farmer> loginUserAccount(String email, String password) async {
    // var errorMessage;
    User firebaseUser;
    try {
      firebaseUser = (await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email, password: password))
          .user;
    } on PlatformException catch (e) {
      // print(e.message);
      print(e.toString());
      return throw PlatformException(code: e.message);
    } on FirebaseAuthException catch (e) {
      return throw FirebaseAuthException(message: e.message);
    }
    print(firebaseUser.uid.toString() + "eeeeeeeeee");
    DocumentSnapshot docs = await firestorestance
        .collection("users")
        .doc(firebaseUser.uid.toString())
        .get()
        .then((DocumentSnapshot value) {
      print(value.data());
      // return Users.fromSnapshot(value);
      return value;
    });
    // if (docs.exists) {
    return Farmer.fromJson(docs);
    // }
    // }
    // }
    // return null;
  }

  Future logoutUserAccount() async {
    FirebaseAuth user = FirebaseAuth.instance;
    user.signOut();
  }

  Future submitDashBoardImage(File file) async {
    var timeKey = DateTime.now();
    Farmer farmer = Farmer();

    final StorageUploadTask uploadTask =
        storageReference.child(timeKey.toString() + ".jpg").putFile(file);
    var imageUrl = await (await uploadTask.onComplete).ref.getDownloadURL();

    String userId = userAuth.currentUser.uid.toString();
    print(userId);
    var data = await FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .get()
        .then((value) => value);

    farmer = Farmer.fromJson(data);

    farmer.imageUrl = imageUrl.toString();
    print(farmer);
    print(farmer);
    firestorestance
        .collection("users")
        .doc(userId)
        .set(farmer.toJson())
        .then((value) => print("nooo"));
  }
}
