import 'package:flutter/material.dart';
import 'mainscreen.dart';
void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      home:
      Scaffold(
        backgroundColor: Colors.red,
      body:Center(
        child: MainScreen(),
      ) ,
      ) ,
    
    );
  }

 
  
}