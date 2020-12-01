import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:workshop2_plantapp/screen/plantscreen.dart';
import "package:flutter/material.dart";
import 'package:workshop2_plantapp/model/modelpage.dart';

class myplantapp extends StatefulWidget {
  @override
  _myplantappState createState() => _myplantappState();
}

class _myplantappState extends State<myplantapp> {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Column(

          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:25.0),
                child: Text(
                  ' The Plant Junction ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                      ),

                    ),
                  ),

                  Icon(Icons.search,
                   color: Colors.white,
                   size: 25,
                  ),
                ],
              ),
            ),
            Image.network(
              "http://livinggifts.co.in/blog/wp-content/uploads/2016/03/buy-plants-home-page-banner-2016-1000x377.jpg",
              height: ScreenHeight * 0.35,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      " By Category",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  Text(
                    " view all",
                    style: TextStyle(
                        fontSize: 17,
                        //fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ],
              ),
            ),

            Container(
              height: 133,
              width: 550,
                child:ListView.builder(
                //shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: plantlist.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (_) => procedure(plantlist[index])));
                  },

                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                           Container(
                            height: 100,
                            width: 130,
                            child: Image.network(
                              plantlist[index].image,
                             fit: BoxFit.fill,
                            )),
                              Text(plantlist[index].name),
                      ],
                    ),
                  ),
                      );
                }),
            ),

        ],
      ),
    ),
    );
  }
}
