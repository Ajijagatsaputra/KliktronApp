import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/splashScreen/logokliktron.png'),
      ),
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SizedBox.shrink();
          }
          return SizedBox();
        },
      ),
    );
  }
}
