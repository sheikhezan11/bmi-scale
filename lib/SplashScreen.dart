import 'dart:async';
import 'package:flutter/material.dart';
import 'package:healthscale/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), (){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: 'BMI HealthScale')));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Container(

            child: Center(child: Text('BMI HealthCare', style: TextStyle(fontFamily: 'Poppins',fontSize: 30, color: Colors.white, fontWeight: FontWeight.w600),)),
        ),
      ),
    );
  }
}
