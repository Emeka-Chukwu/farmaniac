import 'package:farmaniac/components/available_produces.dart';
import 'package:farmaniac/configs/color.dart';
import 'package:farmaniac/configs/configs.dart';
import 'package:farmaniac/data/auths.dart';
import 'package:farmaniac/data/products.dart';
import 'package:farmaniac/screens/details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AvailableProducts extends StatelessWidget {
  Function function;
  AvailableProducts({this.function});
  @override
  Widget build(BuildContext context) {
    final profileDetails = Provider.of<Authentication>(context);
    // profileDetails.keepLoggedIn(context);

    return ChangeNotifierProvider<Authentication>(
      create: (context) => Authentication(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    // Text(
                    //   "uu",
                    //   style: TextStyle(
                    //     color: darkBlue,
                    //     fontSize: Responsive.textSize(3, context),
                    //     height: Responsive.textSize(0.3, context),
                    //     fontWeight: FontWeight.w200,
                    //   ),
                    // ),

                    AvailableProduceComponents(
                      profile: profileDetails.farmer,
                      color: green,
                      onTap: () => profileDetails.logout(context),
                    ),
                    // AvailableProduceComponents(
                    //   color: green,
                    //   title: "Farm Produce 1",
                    //   description:
                    //       "The above is a dummy text written by Eben",
                    //   price: "2\n7",
                    //   onTap: function,
                    // ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
