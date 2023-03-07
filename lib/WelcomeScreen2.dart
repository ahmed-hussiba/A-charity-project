import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class WelcomeScreen2 extends StatelessWidget {
  WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(219, 53, 82, 1),
          title: Text(
            "جمعية السلام",
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
        ),
        body: Container(
            color: Colors.black,
            child: Stack(children: [
              Positioned.fill(
                child: Opacity(
                    opacity: 0.3,
                    child: Image.asset(
                      "images/im5.jpg",
                      fit: BoxFit.cover,
                    )),
              ),
              Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    SizedBox(
                      height: 80,
                    ),
                    // display text
                    Text(
                      "مرحبا بك في التطبيق الخاص بجمعية السلام",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "fonts/Lobster-Regular.ttf",
                          fontSize: 40,
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ]))
            ])));
  }
}
