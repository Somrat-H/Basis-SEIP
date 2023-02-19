import 'dart:async';

import 'package:day21/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), () { 
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Align(
            alignment: Alignment.center,
            child: Text('Travel Blog', style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 40
            ),),
          ),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(),

        ],
      ),
    );
  }
}