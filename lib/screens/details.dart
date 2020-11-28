import 'package:farmaniac/configs/configs.dart';
import 'package:farmaniac/models/farmer.dart';
import 'package:flutter/material.dart';

class ProduceDetails extends StatelessWidget {
  final Product product;

  const ProduceDetails({
    Key key,
    @required this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => changeScreen(context, Scaffold()),
        child: Container(
          height: Responsive.screenHeight(100, context),
          width: Responsive.screenWidth(90, context),
          margin: EdgeInsets.symmetric(
              vertical: Responsive.screenHeight(2, context),
              horizontal: Responsive.screenWidth(5, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    child: Image(
                      image: NetworkImage(product.imageUrl),
                      width: Responsive.screenWidth(89, context),
                      height: Responsive.screenHeight(40, context),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(
                        Responsive.screenWidth(3, context)),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding:
                          EdgeInsets.all(Responsive.screenWidth(5, context)),
                      child: Image(
                        image: AssetImage("assets/images/Vector.png"),
                      ),
                    ),
                  )
                ],
              ),
              YMargin(Responsive.screenHeight(3, context)),

              Text(
                product.name,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: Responsive.textSize(5, context),
                  height: Responsive.textSize(0.3, context),
                  fontFamily: "Caladea",
                ),
              ),
              // SizedBox(height: Responsive.screenHeight(1, context)),

              YMargin(Responsive.screenHeight(3, context)),
              Text(
                product.description,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: Responsive.textSize(4.5, context),
                  fontFamily: "Caladea",
                ),
              ),
              YMargin(Responsive.screenHeight(3, context)),

              Text(
                product.farmer ?? "farms",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: Responsive.textSize(4.5, context),
                  height: Responsive.textSize(0.3, context),
                  fontFamily: "Caladea",
                ),
              ),
              YMargin(Responsive.screenHeight(3, context)),

              Text(
                product.phone ?? "O80 7777 7777",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: Responsive.textSize(5, context),
                  height: Responsive.textSize(0.3, context),
                  fontFamily: "Caladea",
                ),
              ),
              YMargin(Responsive.screenHeight(3, context)),

              Text(
                product.pickup ?? "Lagos",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: Responsive.textSize(4.5, context),
                  height: Responsive.textSize(0.3, context),
                  fontFamily: "Caladea",
                ),
              ),
              YMargin(Responsive.screenHeight(3, context)),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        "N${product.amount}",
                        style: TextStyle(
                          color: darkBlue,
                          fontWeight: FontWeight.w700,
                          fontSize: Responsive.textSize(4.5, context),
                          fontFamily: "Caladea",
                        ),
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.all(Responsive.screenWidth(2, context)),
                      child: Icon(
                        Icons.shopping_cart,
                        color: green,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
