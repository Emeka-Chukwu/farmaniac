import 'package:farmaniac/configs/color.dart';
import 'package:farmaniac/data/auths.dart';
import 'package:farmaniac/data/products.dart';
import 'package:farmaniac/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: ProductsDataProvider(),
        ),
        // Provider<ProductsDataProvider>(
        //     create: (context) => ProductsDataProvider()),
        // Provider<Authentication>(
        //   create: (context) => Authentication(),
        // ),
        ChangeNotifierProvider.value(
          value: Authentication(),
        ),
      ],
      child: MyApp(),
    ),
  );
}
//  Provider<SomethingElse>(create: (_) => SomethingElse()

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmaniac',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
