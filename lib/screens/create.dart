import 'package:farmaniac/configs/configs.dart';
import 'package:farmaniac/data/auths.dart';
import 'package:farmaniac/data/products.dart';
import 'package:farmaniac/screens/upload_update.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreatePage extends StatelessWidget {
  Function function;
  CreatePage({this.function});
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductsDataProvider>(context);
    return ChangeNotifierProvider<ProductsDataProvider>(
      create: (context) => ProductsDataProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Product Upload Manager",
                        style: TextStyle(
                            fontSize: Responsive.textSize(5.2, context),
                            fontWeight: FontWeight.w400,
                            height: Responsive.textSize(0.3, context),
                            color: darkBlue),
                      ),
                      YMargin(Responsive.screenHeight(3, context)),
                      Container(
                        height: Responsive.screenHeight(20, context),
                        width: Responsive.screenWidth(26, context),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            Responsive.screenWidth(5, context),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            Responsive.screenWidth(5, context),
                          ),
                          child: product.file == null
                              ? Icon(
                                  Icons.cloud_upload_outlined,
                                  size: Responsive.screenHeight(12, context),
                                )
                              : Image.file(product.file),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(Icons.cancel, color: Colors.red),
                              onPressed: () => product.clearImage(),
                            ),
                            GestureDetector(
                              onTap: () => product.getImage(),
                              child: Container(
                                height: Responsive.screenHeight(2.8, context),
                                alignment: Alignment.center,
                                width: Responsive.screenHeight(2.8, context),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: green),
                                child: Icon(Icons.add, color: white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: Responsive.screenWidth(80, context),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: Responsive.textSize(3.5, context),
                              fontWeight: FontWeight.w200,
                            ),
                            labelText: "Name",
                          ),
                          onChanged: (String val) => product.getname(val),
                        ),
                      ),
                      YMargin(
                        Responsive.screenHeight(3, context),
                      ),
                      Container(
                        width: Responsive.screenWidth(80, context),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: Responsive.textSize(3.5, context),
                              fontWeight: FontWeight.w200,
                            ),
                            labelText: "Amount",
                          ),
                          onChanged: (String val) => product.getAmount(val),
                        ),
                      ),
                      YMargin(Responsive.screenHeight(3, context)),
                      Container(
                        width: Responsive.screenWidth(80, context),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: Responsive.textSize(3.5, context),
                              fontWeight: FontWeight.w200,
                            ),
                            labelText: "Description",
                          ),
                          onChanged: (String val) => product.getDescriptio(val),
                        ),
                      ),
                      YMargin(
                        Responsive.screenHeight(3, context),
                      ),
                      Container(
                        width: Responsive.screenWidth(80, context),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: Responsive.textSize(3.5, context),
                              fontWeight: FontWeight.w200,
                            ),
                            labelText: "Alternative pickup location",
                          ),
                          onChanged: (String val) => product.getPickup(val),
                        ),
                      ),
                      YMargin(
                        Responsive.screenHeight(5, context),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () => product.submitProduct(context,
                                function: function),
                            child: Container(
                              alignment: Alignment.center,
                              width: Responsive.screenWidth(80, context),
                              height:
                                  Responsive.constScreenHeight(6.5, context),
                              decoration: BoxDecoration(
                                color: green,
                                borderRadius: BorderRadius.circular(
                                  Responsive.screenWidth(3, context),
                                ),
                              ),
                              child: Text(
                                "SUBMIT",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        Responsive.textSize(4.36, context)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      YMargin(Responsive.screenHeight(3, context)),
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
