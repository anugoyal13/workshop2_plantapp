import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop2_plantapp/screen/overview.dart';
import 'package:workshop2_plantapp/model/modelpage.dart';
import 'package:workshop2_plantapp/screen/homescreen.dart';

class details extends StatefulWidget {
  final plant ob;
  const details(this.ob);
  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
        child: SafeArea(
              child: Column(
          children: [
                    Container(
              height: ScreenHeight * 0.09,
              width: ScreenWidth,
                      child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Container(
                    height: ScreenHeight * 0.20,
                    width: ScreenWidth * 0.50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        color: Colors.green),
                    child: Center(
                        child: Text(
                      "Details",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                Image.network(
                  widget.ob.leaf,
                  height: ScreenHeight * 0.25,
                  width: ScreenWidth * 0.50,
                  fit: BoxFit.fill,
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                   // textAlign: TextAlign.start,
                    text:TextSpan(
                      text:"Plant Details",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      )
                    )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.ob.plantdetails),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.network(
                      widget.ob.pot,
                      height: ScreenHeight * 0.25,
                      width: ScreenWidth * 0.50,
                      fit: BoxFit.fill,
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    // textAlign: TextAlign.start,
                      text:TextSpan(
                          text:"Pot Details",
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          )
                      )
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.ob.potdetails),
            )

          ],
      ),
    ),
        ));
  }
}
