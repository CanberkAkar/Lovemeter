import 'dart:math';
import 'package:flutter/material.dart';
import 'heart.dart';
import 'main.dart';
import 'package:animator/animator.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
       SingleChildScrollView(
         child: Column
             (
          children:<Widget>
             [
               Padding(padding: EdgeInsets.all(50)),
                SizedBox(
                
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Raleway',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('LOVEMETER')
                    ],
                    onTap: () 
                    {                     
                    },
                  ),
                ),
              ),
          Padding(padding: EdgeInsets.all(30)),
             TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText:"YOUR LOVER NAME ",
              labelStyle:TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                 borderSide: BorderSide(color: Colors.white)
              ),
              border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20.0),
                 borderSide: BorderSide(color: Colors.white)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Colors.white)
              )
            ),
          ),
            Padding(padding: EdgeInsets.all(40)),
            ElevatedButton
          (
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  primary: Colors.white,
                  onPrimary: Colors.pinkAccent,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Heart()));
                FocusScope.of(context).unfocus();
              },
              child: const Text('Measure Love'),
          ),

          ],
          ),
       ),
        backgroundColor: Colors.pinkAccent,
    );
  }
}