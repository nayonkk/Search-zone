import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_ux_8/Homepage.dart';

void main() {
 SystemChrome.setSystemUIOverlayStyle( 
  const SystemUiOverlayStyle(statusBarColor: Colors.transparent));


  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData(brightness: Brightness.dark),
     home:
     const Homepage(),
   title: "Search zone"


    );
  }
}