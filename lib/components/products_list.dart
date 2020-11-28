import 'package:farmaniac/configs/configs.dart';
import 'package:flutter/material.dart';

class ProduceList extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;
  final IconData icon;
  final description;

  const ProduceList(
      {Key key,
      @required this.imageUrl,
      @required this.title,
      @required this.price,
      this.description,
      @required this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  image: AssetImage(imageUrl),
                  width: Responsive.screenWidth(39, context),
                  height: Responsive.screenHeight(24, context),
                  fit: BoxFit.cover,
                ),
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
            title,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: Responsive.textSize(3.3, context),
              height: Responsive.textSize(0.3, context),
              fontFamily: "Caladea",
            ),
          ),
          // SizedBox(height: Responsive.screenHeight(1, context)),
          Text(
            description,
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
                    "N$price",
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
                    icon,
                    color: green,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
