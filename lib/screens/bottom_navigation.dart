import 'package:farmaniac/configs/configs.dart';
import 'package:farmaniac/data/auths.dart';
import 'package:farmaniac/data/products.dart';
import 'package:farmaniac/models/farmer.dart';
import 'package:farmaniac/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigationSheet extends StatelessWidget {
  Widget build(BuildContext context) {
    // print()
    final product = Provider.of<ProductsDataProvider>(context);
    final auths = Provider.of<Authentication>(context);
    Farmer farmer = Farmer();
    return ChangeNotifierProvider<ProductsDataProvider>(
      create: (context) => ProductsDataProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              top: false,
              child: IndexedStack(
                index: product.selectedIndex ?? 0,
                children: <Widget>[
                  AvailableProducts(
                    function: () => product.getSelectedIndex(1),
                  ),
                  ProductListScreen(),
                  auths.farmer.isFarmer
                      ? CreatePage(
                          function: () => product.getSelectedIndex(1),
                        )
                      : Center(child: CircularProgressIndicator()),
                  OrderProduce()
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              // backgroundColor: white,
              showUnselectedLabels: true,
              selectedItemColor: Color(0xff6F6F6F),
              unselectedItemColor: Color(0xff6F6F6F),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  backgroundColor: Color(0xffF8F8F8),
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit),
                  backgroundColor: Color(0xffF8F8F8),
                  label: "Products",
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color(0xffF8F8F8),
                  icon: Icon(Icons.add),
                  label: "Add",
                ),
                BottomNavigationBarItem(
                  backgroundColor: Color(0xffF8F8F8),
                  icon: Icon(Icons.shopping_cart),
                  label: "Home",
                ),
              ],
              currentIndex: product.selectedIndex ?? 0,
              onTap: (int index) {
                product.getSelectedIndex(index);
              },
            ),
          );
        },
      ),
    );
  }
}
