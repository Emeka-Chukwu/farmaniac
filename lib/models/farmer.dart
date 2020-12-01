import 'package:cloud_firestore/cloud_firestore.dart';

class Farmer {
  String id;
  String lname;
  String fname;
  String email;
  String phone;
  String farmname;
  String password;
  String confirmpassword;
  bool isFarmer;
  String imageUrl;

  Farmer({
    this.id,
    this.lname,
    this.fname,
    this.email,
    this.farmname,
    this.password,
    this.confirmpassword,
    this.phone,
    this.imageUrl,
    this.isFarmer = false,
  });

  Farmer.fromJson(DocumentSnapshot snapshot) {
    id = snapshot.id.toString();
    fname = snapshot.data()["fname"] ?? null;
    lname = snapshot.data()["lname"] ?? null;
    email = snapshot.data()["email"] ?? null;
    farmname = snapshot.data()["farmname"] ?? null;
    password = snapshot.data()["password"] ?? null;
    phone = snapshot.data()["phone"] ?? null;
    confirmpassword = snapshot.data()["confirmpassword"] ?? null;
    isFarmer = snapshot.data()["isFarmer"] ?? null;
    imageUrl = snapshot.data()["imageUrl"] ??
        "https://media.istockphoto.com/photos/businessman-silhouette-as-avatar-or-default-profile-picture-picture-id476085198";
  }

  Map<String, dynamic> toJson() => {
        "fname": this.fname,
        "lname": this.lname,
        "email": this.email,
        "phone": this.phone,
        "farmname": this.farmname,
        "isFarmer": this.isFarmer,
        "imageUrl": this.imageUrl,
      };
}

class Buyer {
  String id;
  String lname;
  String fname;
  String email;
  String password;
  String confirmpassword;

  Buyer(
      {this.id,
      this.lname,
      this.fname,
      this.email,
      this.password,
      this.confirmpassword});

  Buyer.fromJson(DocumentSnapshot snapshot) {
    id = snapshot.id.toString();
    fname = snapshot.data()["fname"] ?? null;
    lname = snapshot.data()["lname"] ?? null;
    email = snapshot.data()["email"] ?? null;
    password = snapshot.data()["password"] ?? null;
    confirmpassword = snapshot.data()["confirmpassword"] ?? null;
  }

  Map<String, dynamic> toJson() => {
        "fname": this.fname,
        "lname": this.lname,
        "email": this.email,
      };
}

class Product {
  String imageUrl;
  String id;
  String name;
  double amount;
  String description;
  String pickup;
  String farmer;
  String phone;
  DateTime dateTime;

  Product({
    this.id,
    this.name,
    this.amount,
    this.description,
    this.imageUrl,
    this.farmer,
    this.phone,
    this.pickup,
    this.dateTime,
  });

  Product.fromJson(DocumentSnapshot snapshot) {
    farmer = snapshot.data()["farmer"] ?? null;
    phone = snapshot.data()["phone"] ?? null;
    id = snapshot.id.toString() ?? null;
    name = snapshot.data()["name"] ?? null;
    amount = snapshot.data()["amount"] ?? null;
    description = snapshot.data()["description"] ?? null;
    pickup = snapshot.data()["pickup"] ?? null;
    imageUrl = snapshot.data()["imageUrl"] ?? null;
    dateTime = snapshot.data()["dateTime"].toDate() ?? null;
    // dateTime = snapshot.data()["dateTime"].toDate() ?? null;
  }

  Map<String, dynamic> toJson() => {
        "farmer": this.farmer,
        "name": this.name,
        "amount": this.amount,
        "description": this.description,
        "pickup": this.pickup,
        "imageUrl": this.imageUrl,
        "phone": this.phone,
        "dateTime": this.dateTime,
      };
}
