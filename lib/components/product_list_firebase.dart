import 'package:farmaniac/configs/configs.dart';
import 'package:farmaniac/models/farmer.dart';
import 'package:farmaniac/screens/details.dart';
import 'package:flutter/material.dart';

class ProduceListFirebase extends StatelessWidget {
  final Product product;

  const ProduceListFirebase({
    Key key,
    @required this.product,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => changeScreen(
          context,
          ProduceDetails(
            product: product,
          )),
      child: Container(
        height: Responsive.screenHeight(37, context),
        width: Responsive.screenWidth(40, context),
        margin: EdgeInsets.all(Responsive.screenWidth(2, context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  child: Image(
                    image: NetworkImage(product.imageUrl),
                    width: Responsive.screenWidth(39, context),
                    height: Responsive.screenHeight(20, context),
                    fit: BoxFit.cover,
                  ),
                  borderRadius:
                      BorderRadius.circular(Responsive.screenWidth(3, context)),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(Responsive.screenWidth(5, context)),
                    child: Image(
                      image: AssetImage("assets/images/Vector.png"),
                    ),
                  ),
                )
              ],
            ),
            Text(
              product.name,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: Responsive.textSize(3.3, context),
                height: Responsive.textSize(0.3, context),
                fontFamily: "Caladea",
              ),
            ),
            // SizedBox(height: Responsive.screenHeight(1, context)),
            Text(
              product.description,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: Responsive.textSize(2.8, context),
                fontFamily: "Caladea",
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                      "N${product.amount}",
                      style: TextStyle(
                        color: darkBlue,
                        fontWeight: FontWeight.w700,
                        fontSize: Responsive.textSize(3.3, context),
                        fontFamily: "Caladea",
                      ),
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(Responsive.screenWidth(2, context)),
                    child: Icon(
                      Icons.shopping_cart,
                      color: green,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
