import 'package:farmaniac/configs/configs.dart';
import 'package:farmaniac/data/auths.dart';
import 'package:farmaniac/data/products.dart';
import 'package:farmaniac/models/farmer.dart';
import 'package:farmaniac/screens/products_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AvailableProduceComponents extends StatelessWidget {
  final Color color;
  Farmer profile;
  Function onTap;

  AvailableProduceComponents(
      {Key key,
      @required this.color,
      @required this.profile,
      @required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final auths = Provider.of<Authentication>(context);
    return ChangeNotifierProvider<Authentication>(
      create: (context) => Authentication(),
      child: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: null,
            child: Container(
              height: Responsive.screenHeight(50, context),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(
                  Responsive.screenWidth(5, context),
                ),
              ),
              width: Responsive.screenHeight(85, context),
              margin: EdgeInsets.symmetric(
                  horizontal: Responsive.screenWidth(5, context),
                  vertical: Responsive.screenWidth(3, context)),
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.screenWidth(8, context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage("assets/images/bio.png"),
                        ),
                        YMargin(
                          Responsive.screenHeight(3, context),
                        ),
                        Text(
                          "${profile.lname} ${profile.fname}",
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w700,
                            fontSize: Responsive.textSize(4, context),
                          ),
                        ),
                        YMargin(
                          Responsive.screenHeight(3, context),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: Responsive.screenHeight(5, context)),
                          child: Text(
                            "${profile.farmname}",
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w300,
                              fontSize: Responsive.textSize(3.8, context),
                            ),
                          ),
                        ),
                        YMargin(
                          Responsive.screenHeight(3, context),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: Responsive.screenHeight(5, context)),
                          child: Text(
                            "${profile.email}",
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w300,
                              fontSize: Responsive.textSize(3.8, context),
                            ),
                          ),
                        ),
                        YMargin(
                          Responsive.screenHeight(3, context),
                        ),
                        Container(
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: Responsive.screenHeight(5, context)),
                            child: Text(
                              "${profile.phone}",
                              style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.w300,
                                fontSize: Responsive.textSize(3.8, context),
                              ),
                            ),
                          ),
                        ),
                        YMargin(
                          Responsive.screenHeight(3, context),
                        ),
                        FlatButton(
                          onPressed: () => auths.logout(context),
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  right: Responsive.screenHeight(5, context)),
                              child: Text(
                                "logout",
                                style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: Responsive.textSize(3.8, context),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Text(
                  //   price,
                  //   style: TextStyle(
                  //     color: white,
                  //     fontWeight: FontWeight.w700,
                  //     fontSize: Responsive.textSize(8, context),
                  //   ),
                  // )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// import 'package:farmaniac/configs/configs.dart';
// import 'package:farmaniac/data/products.dart';
// import 'package:farmaniac/screens/products_page.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class AvailableProduceComponents extends StatelessWidget {
//   final Color color;
//   final String title;
//   final String description;
//   final String price;
//   final Function onTap;

//   const AvailableProduceComponents(
//       {Key key,
//       @required this.color,
//       @required this.title,
//       @required this.description,
//       @required this.price,
//       this.onTap})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     final product = Provider.of<ProductsDataProvider>(context);
//     print(product.selectedIndex);
//     return ChangeNotifierProvider<ProductsDataProvider>(
//       create: (context) => ProductsDataProvider(),
//       child: Builder(
//         builder: (context) {
//           return GestureDetector(
//             onTap: onTap,
//             child: Container(
//               height: Responsive.screenHeight(15, context),
//               decoration: BoxDecoration(
//                 color: color,
//                 borderRadius: BorderRadius.circular(
//                   Responsive.screenWidth(5, context),
//                 ),
//               ),
//               width: Responsive.screenHeight(85, context),
//               margin: EdgeInsets.symmetric(
//                   horizontal: Responsive.screenWidth(5, context),
//                   vertical: Responsive.screenWidth(3, context)),
//               padding: EdgeInsets.symmetric(
//                   horizontal: Responsive.screenWidth(8, context)),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           title,
//                           style: TextStyle(
//                             color: white,
//                             fontWeight: FontWeight.w700,
//                             fontSize: Responsive.textSize(3.7, context),
//                           ),
//                         ),
//                         YMargin(
//                           Responsive.screenHeight(3, context),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(
//                               right: Responsive.screenHeight(5, context)),
//                           child: Text(
//                             description,
//                             style: TextStyle(
//                               color: white,
//                               fontWeight: FontWeight.w300,
//                               fontSize: Responsive.textSize(3, context),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Text(
//                     price,
//                     style: TextStyle(
//                       color: white,
//                       fontWeight: FontWeight.w700,
//                       fontSize: Responsive.textSize(8, context),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
