import 'package:farmaniac/components/product_list_firebase.dart';
import 'package:farmaniac/components/products_list.dart';
import 'package:farmaniac/configs/configs.dart';
import 'package:farmaniac/data/auths.dart';
import 'package:farmaniac/data/products.dart';
import 'package:farmaniac/screens/create.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductsDataProvider>(context);
    product.getAllProducts();

    return ChangeNotifierProvider<ProductsDataProvider>(
      create: (context) => ProductsDataProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: Responsive.constScreenHeight(4, context),
                      left: Responsive.screenWidth(4, context),
                      right: Responsive.screenWidth(4, context)),
                  child: Column(
                    children: [
                      YMargin(Responsive.screenHeight(1.5, context)),
                      Container(
                        width: Responsive.screenWidth(85, context),
                        decoration: BoxDecoration(
                          color: green,
                          borderRadius: BorderRadius.circular(
                            Responsive.screenWidth(5, context),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontSize: Responsive.textSize(3.5, context),
                              ),
                              hintText: "Search Produce",
                              prefixIcon: Icon(
                                Icons.search,
                                color: white,
                                size: Responsive.textSize(7, context),
                              ),
                              border: InputBorder.none),
                          style: TextStyle(color: white),
                        ),
                      ),
                      YMargin(
                        Responsive.screenHeight(2, context),
                      ),
                      Text(
                        "we're working constantly for you",
                        style: TextStyle(
                          color: darkBlue,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      YMargin(
                        Responsive.screenHeight(2, context),
                      ),
                      product.productList.isEmpty
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : Wrap(
                              direction: Axis.horizontal,
                              children: product.productList
                                  .map(
                                    (instance) => ProduceListFirebase(
                                      product: instance,
                                    ),
                                  )
                                  .toList(),
                            ),
                      // Wrap(
                      //   direction: Axis.horizontal,
                      //   children: [
                      //     ProduceList(
                      //       imageUrl: "assets/images/product_copy.png",
                      //       icon: Icons.shopping_cart,
                      //       title: "3 Buckets of Carrot",
                      //       description:
                      //           "Corn for flakes nor pap or corn jellos.",
                      //       price: 30000,
                      //     ),
                      //     ProduceList(
                      //       imageUrl: "assets/images/product_copy.png",
                      //       icon: Icons.shopping_cart,
                      //       title: "5 Baskets of Onion",
                      //       description:
                      //           "Corn for flakes nor pap or corn jellos.",
                      //       price: 30000,
                      //     ),
                      //     ProduceList(
                      //       imageUrl: "assets/images/product_copy.png",
                      //       icon: Icons.shopping_cart,
                      //       title: "3 Buckets of Carrot",
                      //       description:
                      //           "Corn for flakes nor pap or corn jellos.",
                      //       price: 30000,
                      //     ),
                      //     ProduceList(
                      //       imageUrl: "assets/images/product_copy.png",
                      //       icon: Icons.shopping_cart,
                      //       title: "5 Baskets of Onion",
                      //       description:
                      //           "Corn for flakes nor pap or corn jellos.",
                      //       price: 30000,
                      //     ),
                      //     ProduceList(
                      //       imageUrl: "assets/images/product_copy.png",
                      //       icon: Icons.shopping_cart,
                      //       description:
                      //           "Corn for flakes nor pap or corn jellos.",
                      //       title: "5 Baskets of Onion",
                      //       price: 30000,
                      //     ),
                      //     ProduceList(
                      //       imageUrl: "assets/images/product_copy.png",
                      //       icon: Icons.shopping_cart,
                      //       description:
                      //           "Corn for flakes nor pap or corn jellos.",
                      //       title: "3 Buckets of Carrot",
                      //       price: 30000,
                      //     ),
                      //     ProduceList(
                      //       imageUrl: "assets/images/product_copy.png",
                      //       icon: Icons.shopping_cart,
                      //       description:
                      //           "Corn for flakes nor pap or corn jellos.",
                      //       title: "3 Buckets of Carrot",
                      //       price: 30000,
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
