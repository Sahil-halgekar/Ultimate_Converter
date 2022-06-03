import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:uc/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ultimate Converter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Splash(),
      );
    });
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: const MyHomePage(),
      title: const Text(
        '\nUltimate\nConverter',
        textScaleFactor: 2,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.amber),
      ),
      backgroundColor: Colors.black,
      image: Image.asset("assets/switch.png"),
      photoSize: 100.0,
      loaderColor: Colors.amber,
    );
  }
}
