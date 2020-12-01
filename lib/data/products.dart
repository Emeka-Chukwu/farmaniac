import 'dart:io';

import 'package:farmaniac/components/progressBar.dart';
import 'package:farmaniac/configs/change_screen.dart';
import 'package:farmaniac/configs/color.dart';
import 'package:farmaniac/models/farmer.dart';
// import 'package:farmaniac/screens/available_product.dart';
// import 'package:farmaniac/screens/bottom_navigation.dart';
import 'package:farmaniac/screens/upload_update.dart';
import 'package:farmaniac/services/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:image_picker/image_picker.dart';

class ProductsDataProvider with ChangeNotifier {
  ProductsServices products = ProductsServices();

  String lname;
  File file;
  String name;
  String description;
  String farmername;
  double amount;
  String pickup;
  List<Product> productList = [];

  int selectedIndex;

  void getSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
    print(selectedIndex);
  }

  void getname(String nameString) {
    name = nameString;
    notifyListeners();
  }

  void getDescriptio(String nameString) {
    description = nameString;
    notifyListeners();
  }

  void getfarmer(String nameString) {
    farmername = nameString;
    notifyListeners();
  }

  void getAmount(String nameString) {
    amount = double.tryParse(nameString);
    notifyListeners();
  }

  void getPickup(String nameString) {
    pickup = nameString;
    notifyListeners();
  }

  void getAllProducts() async {
    productList = await products.getProducts();
    productList
        .sort((a, b) => b.dateTime.toString().compareTo(a.dateTime.toString()));
    notifyListeners();
  }

  Future<void> getImage() async {
    final picker = ImagePicker();
    var image = await picker.getImage(source: ImageSource.gallery);
    File compressedFile = await FlutterNativeImage.compressImage(image.path,
        quality: 95, targetHeight: 450, targetWidth: 450);
    file = compressedFile;
    notifyListeners();
  }

  void clearImage() async {
    file = null;
    notifyListeners();
  }

  void submitProduct(BuildContext context, {Function function}) async {
    print(name);
    print(description);
    print(farmername);
    print(amount);
    print(pickup);
    print("Create products");
    Product product = Product(
      name: name,
      amount: amount,
      description: description,
      pickup: pickup,
    );
    progressBar(context,
        title: "Adding Product", description: "loading", color: green);
    try {
      await products.submitProductData(file, product);
      changeScreen(context, ProductAdded());
      function();
    } catch (e) {
      print(e.toString());
      Navigator.pop(context);
      dialogWarning(
        context,
        title: "Message",
        description: "${e.toString()}",
        color: green,
      );
    }
    file = null;
    notifyListeners();
  }
}
