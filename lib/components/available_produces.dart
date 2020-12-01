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
          return Stack(
            children: [
              Container(
                height: Responsive.screenHeight(26, context),
                width: Responsive.screenWidth(100, context),
                decoration: BoxDecoration(
                  color: profile.isFarmer ? green : darkBlue,
                  // borderRadius: BorderRadius.circular(
                  //   Responsive.screenWidth(5, context),
                  // ),
                ),
                // width: Responsive.screenHeight(85, context),
                // margin: EdgeInsets.symmetric(
                //     horizontal: Responsive.screenWidth(5, context),
                //     vertical: Responsive.screenWidth(3, context)),
                // padding: EdgeInsets.symmetric(
                //     horizontal: Responsive.screenWidth(8, context)),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: Responsive.screenHeight(5, context)),
                        child: Text(
                          profile.isFarmer
                              ? "${profile.farmname}"
                              : "${profile.lname} ${profile.fname}",
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w500,
                            fontSize: Responsive.textSize(4, context),
                          ),
                        ),
                      ),
                      YMargin(
                        Responsive.screenHeight(3, context),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    YMargin(Responsive.screenHeight(20, context)),
                    CircleAvatar(
                      backgroundImage: NetworkImage(profile.imageUrl),
                      radius: Responsive.screenWidth(10, context),
                      // child: Image(
                      //   image: NetworkImage(profile.imageUrl),
                      //   height: Responsive.screenHeight(12, context),
                      //   width: Responsive.screenWidth(15, context),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    YMargin(
                      Responsive.screenHeight(3, context),
                    ),
                    GestureDetector(
                      onTap: () => auths.getImageDash(),
                      child: Text(
                        "tap to change",
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w400,
                          fontSize: Responsive.textSize(3, context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Responsive.screenWidth(8, context)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      YMargin(
                        Responsive.screenHeight(40, context),
                      ),
                      Text("First Name"),
                      YMargin(Responsive.screenHeight(1.5, context)),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: Responsive.screenWidth(85, context),
                        padding: EdgeInsets.symmetric(
                            vertical: Responsive.screenWidth(2, context),
                            horizontal: Responsive.screenWidth(4, context)),
                        decoration: BoxDecoration(
                          color: Color(0xffF0F0F0),
                          borderRadius: BorderRadius.circular(
                              Responsive.screenWidth(2.5, context)),
                        ),
                        child: Text(
                          "${profile.fname}",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: Responsive.textSize(3.8, context),
                          ),
                        ),
                      ),
                      YMargin(
                        Responsive.screenHeight(2, context),
                      ),
                      Text("Last Name"),
                      YMargin(Responsive.screenHeight(1.5, context)),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: Responsive.screenWidth(85, context),
                        padding: EdgeInsets.symmetric(
                            vertical: Responsive.screenWidth(2, context),
                            horizontal: Responsive.screenWidth(4, context)),
                        decoration: BoxDecoration(
                          color: Color(0xffF0F0F0),
                          borderRadius: BorderRadius.circular(
                              Responsive.screenWidth(2.5, context)),
                        ),
                        child: Text(
                          "${profile.lname}",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: Responsive.textSize(3.8, context),
                          ),
                        ),
                      ),
                      YMargin(
                        Responsive.screenHeight(2, context),
                      ),
                      Text("Email"),
                      YMargin(Responsive.screenHeight(1.5, context)),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: Responsive.screenWidth(85, context),
                        padding: EdgeInsets.symmetric(
                            vertical: Responsive.screenWidth(2, context),
                            horizontal: Responsive.screenWidth(4, context)),
                        decoration: BoxDecoration(
                          color: Color(0xffF0F0F0),
                          borderRadius: BorderRadius.circular(
                              Responsive.screenWidth(2.5, context)),
                        ),
                        child: Text(
                          "${profile.email}",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: Responsive.textSize(3.8, context),
                          ),
                        ),
                      ),
                      YMargin(
                        Responsive.screenHeight(2, context),
                      ),
                      profile.isFarmer ? Text("Farm Name") : Container(),
                      if (profile.isFarmer)
                        YMargin(Responsive.screenHeight(1.5, context)),
                      if (profile.isFarmer)
                        Container(
                          alignment: Alignment.centerLeft,
                          width: Responsive.screenWidth(85, context),
                          padding: EdgeInsets.symmetric(
                              vertical: Responsive.screenWidth(2, context),
                              horizontal: Responsive.screenWidth(4, context)),
                          decoration: BoxDecoration(
                            color: Color(0xffF0F0F0),
                            borderRadius: BorderRadius.circular(
                                Responsive.screenWidth(2.5, context)),
                          ),
                          child: Text(
                            "${profile.farmname}",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: Responsive.textSize(3.8, context),
                            ),
                          ),
                        ),
                      if (profile.isFarmer)
                        YMargin(
                          Responsive.screenHeight(2, context),
                        ),
                      Text("Phone Number"),
                      YMargin(Responsive.screenHeight(1, context)),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: Responsive.screenWidth(85, context),
                        padding: EdgeInsets.symmetric(
                            vertical: Responsive.screenWidth(3, context),
                            horizontal: Responsive.screenWidth(4, context)),
                        decoration: BoxDecoration(
                          color: Color(0xffF0F0F0),
                          borderRadius: BorderRadius.circular(
                              Responsive.screenWidth(2.5, context)),
                        ),
                        child: Text(
                          "${profile.phone}",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: Responsive.textSize(3.8, context),
                          ),
                        ),
                      ),
                      YMargin(
                        Responsive.screenHeight(1, context),
                      ),
                      FlatButton(
                        onPressed: () => auths.logout(context),
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: Responsive.screenHeight(5, context),
                            ),
                            child: Text(
                              "logout",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: Responsive.textSize(3.8, context),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
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
