import 'package:farmaniac/screens/order_complete.dart';
import 'package:farmaniac/configs/configs.dart';
import 'package:flutter/material.dart';

class OrderProduce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: Responsive.constScreenHeight(4, context),
            // left: Responsive.screenWidth(4, context),
            right: Responsive.screenWidth(4, context),
          ),
          child: Column(
            children: [
              YMargin(Responsive.screenHeight(1.5, context)),
              Container(
                height: Responsive.constScreenHeight(5, context),
                width: Responsive.screenWidth(90, context),
                padding:
                    EdgeInsets.only(left: Responsive.screenWidth(5, context)),
                alignment: Alignment.center,
                child: Text(
                  "Orders",
                  style: TextStyle(
                    color: darkBlue,
                    fontFamily: "Caladea",
                    fontWeight: FontWeight.w700,
                    fontSize: Responsive.textSize(5.2, context),
                  ),
                ),
              ),
              YMargin(Responsive.screenHeight(3, context)),

              // table display

              Container(
                padding: EdgeInsets.only(
                  left: Responsive.screenWidth(3, context),
                  right: Responsive.screenWidth(3, context),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Table(
                        // border: TableBorder.all(),
                        columnWidths: {
                          0: FractionColumnWidth(0.1),
                          1: FractionColumnWidth(0.3),
                          2: FractionColumnWidth(0.3),
                          3: FractionColumnWidth(0.3),
                        },

                        children: [
                          TableRow(children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical:
                                      Responsive.screenHeight(1.5, context)),
                              color: green,
                              margin: EdgeInsets.only(
                                  bottom: Responsive.screenHeight(2, context)),
                              child: Text(
                                'S/N',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: white,
                                    fontFamily: "Caladea",
                                    fontSize: Responsive.textSize(3.5, context),
                                    fontWeight: FontWeight.w200),
                              ),
                            ),
                            Container(
                              color: green,
                              margin: EdgeInsets.only(
                                  bottom: Responsive.screenHeight(2, context)),
                              padding: EdgeInsets.symmetric(
                                  vertical:
                                      Responsive.screenHeight(1.5, context)),
                              child: Text(
                                'Product Name',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: white,
                                    fontFamily: "Caladea",
                                    fontSize: Responsive.textSize(3.5, context),
                                    fontWeight: FontWeight.w200),
                              ),
                            ),
                            Container(
                              color: green,
                              margin: EdgeInsets.only(
                                  bottom: Responsive.screenHeight(2, context)),
                              padding: EdgeInsets.symmetric(
                                  vertical:
                                      Responsive.screenHeight(1.5, context)),
                              child: Text(
                                'Costumer Name',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: white,
                                    fontFamily: "Caladea",
                                    fontSize: Responsive.textSize(3.5, context),
                                    fontWeight: FontWeight.w200),
                              ),
                            ),
                            Container(
                              color: green,
                              margin: EdgeInsets.only(
                                  bottom: Responsive.screenHeight(2, context)),
                              padding: EdgeInsets.symmetric(
                                  vertical:
                                      Responsive.screenHeight(1.5, context)),
                              child: Text(
                                'QTY',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: white,
                                    fontFamily: "Caladea",
                                    fontSize: Responsive.textSize(3.5, context),
                                    fontWeight: FontWeight.w200),
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Container(
                                color: lightWhite,
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('01', textAlign: TextAlign.center)),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('Corn baliska',
                                    textAlign: TextAlign.center)),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('Yinka Money',
                                    textAlign: TextAlign.center)),
                            Container(
                                // color: Colors.grey,
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child:
                                    Text('300k', textAlign: TextAlign.center)),
                          ]),
                          TableRow(children: [
                            Container(
                                color: lightWhite,
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('01', textAlign: TextAlign.center)),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('Corn baliska',
                                    textAlign: TextAlign.center)),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('Yinka Money',
                                    textAlign: TextAlign.center)),
                            Container(
                                // color: Colors.grey,
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child:
                                    Text('300k', textAlign: TextAlign.center)),
                          ]),
                          TableRow(children: [
                            Container(
                                color: lightWhite,
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('01', textAlign: TextAlign.center)),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('Corn baliska',
                                    textAlign: TextAlign.center)),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('Yinka Money',
                                    textAlign: TextAlign.center)),
                            Container(
                                // color: Colors.grey,
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child:
                                    Text('300k', textAlign: TextAlign.center)),
                          ]),
                          TableRow(children: [
                            Container(
                                color: lightWhite,
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('01', textAlign: TextAlign.center)),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('Corn baliska',
                                    textAlign: TextAlign.center)),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('Yinka Money',
                                    textAlign: TextAlign.center)),
                            Container(
                                // color: Colors.grey,
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child:
                                    Text('300k', textAlign: TextAlign.center)),
                          ]),
                          TableRow(children: [
                            Container(
                                color: lightWhite,
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('01', textAlign: TextAlign.center)),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('Corn baliska',
                                    textAlign: TextAlign.center)),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('Yinka Money',
                                    textAlign: TextAlign.center)),
                            Container(
                                // color: Colors.grey,
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child:
                                    Text('300k', textAlign: TextAlign.center)),
                          ]),
                          TableRow(children: [
                            Container(
                                color: lightWhite,
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('01', textAlign: TextAlign.center)),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('Corn baliska',
                                    textAlign: TextAlign.center)),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child: Text('Yinka Money',
                                    textAlign: TextAlign.center)),
                            Container(
                                // color: Colors.grey,
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        Responsive.screenHeight(1.5, context)),
                                child:
                                    Text('300k', textAlign: TextAlign.center)),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              FlatButton.icon(
                  onPressed: () => changeScreen(context, CompleteOrder()),
                  icon: Icon(Icons.arrow_forward_ios),
                  label: Text("Complete"))
            ],
          ),
        ),
      ),
    );
  }
}
