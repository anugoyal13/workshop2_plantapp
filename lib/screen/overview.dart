import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:workshop2_plantapp/model/modelpage.dart';
import 'package:workshop2_plantapp/screen/plantscreen.dart';
import 'package:workshop2_plantapp/screen/details.dart';

class overview extends StatefulWidget {
  final plant ob;
  const overview(this.ob);

  @override
  _overviewState createState() => _overviewState();
}

class _overviewState extends State<overview> {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 10.0),
                child: Container(
                  height: ScreenHeight * 0.05,
                  width: ScreenWidth,
                  child: Row(
                    children: [

                      Icon(
                        Icons.local_florist,
                        color: Colors.white,

                      ),

                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "greenry nyc",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      SizedBox(width:180),
                      //Icon(Icons.arrow_forward,color:Colors.white,),
                      InkWell(
                        onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (_) =>details(widget.ob)));
                          },
                        child:Icon(Icons.arrow_forward,color:Colors.white,),
                       ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      "Product",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 2.0),
                child: Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Text("Overview",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold))),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: ScreenHeight * 0.05,
                width: ScreenWidth,
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.network(
                        "https://cdn1.iconfinder.com/data/icons/fintech-app-1/64/20-512.png",
                        color: Colors.white,
                      ),
                      //Icon(Icons.,color: Colors.white,),
                      //SizedBox(width: 30,),
                      Text(
                        "Water",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(width: 30,),
                      Text(widget.ob.wat,
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: ScreenHeight * 0.05,
                width: ScreenWidth,
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.network(
                        "https://cdn1.iconfinder.com/data/icons/weather-vol-02-3/32/temperature-thermometer-humidity-rainfall-measurement-precipitation-forecast-256.png",
                        color: Colors.white,
                      ),
                      //Icon(Icons.,color: Colors.white,),
                      //SizedBox(width: 30,),
                      Text(
                        "Humidity",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(width: 30,),
                      Text(widget.ob.humidity,
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: ScreenHeight * 0.05,
                width: ScreenWidth,
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.network(
                        "https://cdn3.iconfinder.com/data/icons/planting-line-set/64/seedling-01-256.png",
                        color: Colors.white,
                      ),
                      //Icon(Icons.,color: Colors.white,),
                      //SizedBox(width: 30,),
                      Text(
                        "Size",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(width: 30,),
                      Text(widget.ob.size,
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60.0),
                          topLeft: Radius.circular(60.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Delivery Information",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60.0),
                          topLeft: Radius.circular(60.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Return Policy",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  height: ScreenHeight * 0.10,
                  width: ScreenWidth,
                 alignment: AlignmentDirectional.bottomEnd,

                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                     // children: [
                      //InkWell(
                      //  onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (_) =>details(widget.ob)));
                      //      },
                     // ),
                      child:Container(
                      width: ScreenWidth * 0.50,
                      height: ScreenHeight * 0.20,
                      alignment: Alignment.bottomRight,

                        decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),


                        child: Padding(
                      padding: const EdgeInsets.all(18.0),
                            child: Row(
                        children: [

                                Text("Add to basket",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                                SizedBox(width: 30),
                                Icon(Icons.shopping_cart, color: Colors.white),
                        ],
                      ),
                    ),
                  )),

        ]


          ),
        ),
      ),
    );
  }
}
