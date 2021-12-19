import 'package:flutter/material.dart';
class Amman extends StatelessWidget {
  const Amman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: SingleChildScrollView(
      child: Center(
        child: Container(
          width:double.infinity,
          height: 200,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [Container(

                child: Image.asset("assets/am3.jpg")

            ),
              Container(
                  width: 300,
                  child: Image.asset("assets/am4.jpg")

              ),Container(
                  width: 300,
                  child: Image.asset("assets/am5.jpg")

              ),

            ],),
          ),
        ),
      ),

    ),));
  }
}
