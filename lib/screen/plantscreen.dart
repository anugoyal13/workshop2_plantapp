import "package:flutter/material.dart";
import 'package:workshop2_plantapp/model/modelpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:workshop2_plantapp/screen/overview.dart';

class procedure extends StatefulWidget {
  final plant ob;
  const procedure(this.ob);

  @override
  _procedureState createState() => _procedureState();
}

class _procedureState extends State<procedure> {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightGreen,
        body: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                height: ScreenHeight * 0.75,
                width: ScreenWidth,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(70.0)),
                  color: Colors.white,

                ),

                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      color: Colors.white,
                      height: ScreenHeight * 0.05,
                      child: IconButton(
                        icon: Image.network(
                          "https://www.pngkey.com/png/full/969-9694963_png-file-svg-back-button-icon-png.png",
                          fit: BoxFit.contain,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, left: 15),
                      child: Container(
                        height: 50,
                        width: ScreenWidth,
                        child: Text(widget.ob.name,
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0, left: 15),
                      child: Container(
                        height: 25,
                        width: 100,
                        child: Text(widget.ob.height,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black54)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 150.0),
                      child: Container(
                        height: 40,
                        width: 80,
                        child: Text(
                          widget.ob.cost,
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0, left: 100),
                      child: Container(
                        alignment: AlignmentDirectional.topEnd,
                        height: ScreenHeight * 0.90,
                        //width:ScreenWidth*0.30,
                        //alignment: AlignmentDirectional.centerEnd,
                        child: Image.network(
                          widget.ob.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 300, left: 15.0),
                      child: Container(
                          height: ScreenHeight * 0.10,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.lightGreen),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 30,
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                child: Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Text("Planting",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      )),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 90,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            widget.ob.water,
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Text(
                            "water",
                            style:
                                TextStyle(color: Colors.white60, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            widget.ob.sunshine,
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Text(
                            "sunshine",
                            style:
                                TextStyle(color: Colors.white60, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) =>
                          overview(widget.ob)));
                },
                  child: Icon(Icons.arrow_drop_down,size: 30,))

            ],
          ),
        ),
      ),
    );
  }
}
