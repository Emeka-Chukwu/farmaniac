import 'package:farmaniac/configs/configs.dart';
import 'package:farmaniac/data/products.dart';
import 'package:farmaniac/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigationSheet extends StatelessWidget {
  Widget build(BuildContext context) {
    // print()
    final product = Provider.of<ProductsDataProvider>(context);

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
                  CreatePage(
                    function: () => product.getSelectedIndex(1),
                  ),
                  OrderProduce()
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: white,
              showUnselectedLabels: true,
              selectedItemColor: Colors.red,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  backgroundColor: green,
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit),
                  backgroundColor: green,
                  label: "Products",
                ),
                BottomNavigationBarItem(
                  backgroundColor: green,
                  icon: Icon(Icons.add),
                  label: "Add",
                ),
                BottomNavigationBarItem(
                  backgroundColor: green,
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
