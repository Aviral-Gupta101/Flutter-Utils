import 'package:flutter/material.dart';
import 'package:ui_challenge_2/clip_shadow_path.dart';
import 'package:ui_challenge_2/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Stack(
          children: [
            ClipShadowPath(
              shadow: const BoxShadow(
                  color: Colors.black, spreadRadius: 10, blurRadius: 5),
              clipper: MySecondCustomClipper(),
              child: Container(
                color: Colors.blue,
              ),
            ),
            ClipShadowPath(
              shadow: const BoxShadow(
                  color: Colors.black, spreadRadius: 10, blurRadius: 5),
              clipper: MyCustomClipper(),
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
