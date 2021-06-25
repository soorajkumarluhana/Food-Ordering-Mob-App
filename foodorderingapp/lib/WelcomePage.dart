import 'dart:ui';

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: Center(
              child: Container(
                child: Image.asset("Images/WelcomePage.jpg"),
              ),
            )),
            Expanded(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Welcome To Tastee",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  Column(
                    children: [
                      Text("Order Food From our Restaureant and", style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      Text("make reservations in real-time", style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  button("Login", Colors.green, Colors.white),
                  button("SignUp", Colors.white12, Colors.green)
                  
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

Widget button(@required String name, Color color, Color textColor ) {
  return InkWell(
   onTap: (){},
   child: Container(
     height: 45,
     width: 300,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20),
       border: Border.all(),
       color: color
     ),
     child: Center(child: Text(name, style: TextStyle(color: textColor, fontWeight: FontWeight.bold),),),
     ),
  );
}
