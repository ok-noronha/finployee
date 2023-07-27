import 'dart:async';

import 'package:finployee/core/constants/constants.dart';
import 'package:finployee/view/screens/home/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // You can add any initialization code here, if needed.
    // For example, you might want to fetch data or perform some tasks before moving to the HomeScreen.
    _startSplashTimer();
  }

  void _startSplashTimer() {
    // Use a Timer to wait for a few seconds before navigating to the HomeScreen.
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.zero,
          border: Border.all(color: Color(0x4d9e9e9e), width: 1),
        ),
        child: AnimatedOpacity(
          opacity: 1.0, // Starts fully opaque
          duration: Duration(seconds: 2), // Duration of the fade-in animation
          curve: Curves.easeInOut, // Animation curve for smooth transition
          child: Stack(
            alignment: Alignment.center,
            children: [
              ///***If you have exported images you must have to copy those images in assets/images directory.
              Image(
                image: AssetImage(AppAssets.splash),
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
