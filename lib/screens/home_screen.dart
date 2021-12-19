import 'package:flutter/material.dart';
import 'package:tour/widget/drawer.dart';

import 'amman.dart';

class Home extends StatelessWidget {


  Widget buildStack(){
        return Stack(children: [

        ],);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      drawer: SideBar(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff5e5857), Color(0xfff5c5bd)])),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/am2.jpg",
                            height: 300.0,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(

                            width: 240,
                            margin: EdgeInsets.only(left: 200, top: 200),
                            padding: EdgeInsets.all(20),
                            color: Colors.black54.withOpacity(.4),
                            child: Text(
                              "Amman",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 40, color: Colors.white),
                            ))
                      ],
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Amman()));

                    },
                  ),
                  SizedBox(height: 7.0),
                  InkWell(
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/1.jpg",
                          height: 300.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                          width: 240,
                          margin: EdgeInsets.only(left: 200, top: 200),
                          padding: EdgeInsets.all(20),
                          color: Colors.black54.withOpacity(.4),
                          child: Text(
                            "Ma'an",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ))
                    ],),
                    onTap: (){},
                  ),
                  SizedBox(height: 7.0),
                  InkWell(
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/4.jpg",
                          height: 300.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                          width: 240,
                          margin: EdgeInsets.only(left: 200, top: 200),
                          padding: EdgeInsets.all(20),
                          color: Colors.black54.withOpacity(.4),
                          child: Text(
                            "Aqaba",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ))
                    ],),
                    onTap: (){},
                  ),
                  SizedBox(height: 7.0),
                  InkWell(
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/ja.jpg",
                          height: 300.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                          width: 240,
                          margin: EdgeInsets.only(left: 200, top: 200),
                          padding: EdgeInsets.all(20),

                          color: Colors.black54.withOpacity(.4),
                          child: Text(
                            "Jarash",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ))
                    ],),
                    onTap: (){},
                  ),
                  SizedBox(height: 7.0),
                  InkWell(
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/irbid.jpg",
                          height: 300.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                          width: 240,
                          margin: EdgeInsets.only(left: 200, top: 200),
                          padding: EdgeInsets.all(20),
                          color: Colors.black54.withOpacity(.4),
                          child: Text(
                            "Irbid",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ))
                    ],),
                    onTap: (){},
                  ),
                   SizedBox(height: 7.0),
                  InkWell(
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/3.jpg",
                          height: 300.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: 240,
                          margin: EdgeInsets.only(left: 200, top: 200),
                          padding: EdgeInsets.all(20),
                          color: Colors.black54.withOpacity(.4),
                          child: Text(
                            "Madaba",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ))
                    ],),
                    onTap: (){},
                  ),
                  SizedBox(height: 7.0),
                  InkWell(
                    child: Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/p7.jpg",
                          height: 300.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                          width: 240,
                          margin: EdgeInsets.only(left: 200, top: 200),
                          padding: EdgeInsets.all(20),
                          color: Colors.black54.withOpacity(.4),
                          child: Text(
                            "Ajloun",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ))
                    ],),
                    onTap: (){},
                  ),
                  SizedBox(height: 7.0),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
