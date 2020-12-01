import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmaniac/models/farmer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProductsServices {
  final FirebaseAuth user = FirebaseAuth.instance;
  final StorageReference storageReference =
      FirebaseStorage.instance.ref().child("users");
  FirebaseFirestore firestorestance = FirebaseFirestore.instance;

  Future submitProductData(File file, Product product) async {
    var timeKey = DateTime.now();

    final StorageUploadTask uploadTask =
        storageReference.child(timeKey.toString() + ".jpg").putFile(file);
    var imageUrl = await (await uploadTask.onComplete).ref.getDownloadURL();
    product.imageUrl = imageUrl.toString();

    String userId = user.currentUser.uid.toString();
    print(userId);
    await FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .get()
        .then((value) {
      print(value.data());

      product.farmer = value.data()["farmname"];
      product.phone = value.data()["phone"];
      product.dateTime = DateTime.now();
    });
    firestorestance
        .collection("products")
        .add(product.toJson())
        .then((value) => print(value));
  }

  // return "fill the form correctly";

  Future<List<Product>> getProducts() async {
    List<Product> products = List<Product>();

    final prods = await FirebaseFirestore.instance
        .collection("products")
        .get()
        .then((value) => value);
    for (var prod in prods.docs) {
      products.add(Product.fromJson(prod));
    }

    return products;
  }
}
