
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:animator/animator.dart';
import 'dart:math';
import 'mainscreen.dart';
import 'main.dart';
Random r = new Random();

class Heart extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {int randomNumber = r.nextInt(100);
    double a=MediaQuery.of(context).size.width;
    var textLiquidFill = TextLiquidFill
    (
    text:("% "+randomNumber.toString()+" LOVES YOU"),
    waveColor: Colors.white,
    boxBackgroundColor: Colors.pinkAccent,
      textStyle: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    boxHeight: 300.0,
  );
 

    return Scaffold(
      body:
      Column(
         children:<Widget>[
        Padding(padding: EdgeInsets.all(20)),
           Container(
           height: a/2.7,
           width:  a/2.7,
           child: Animator<double>(
             cycles: 0,
             curve: Curves.elasticIn,
             tween: Tween<double>(begin: 25.0,end: 20.0),
             duration: Duration(microseconds: 1000000),
             builder: (context,animatorstate,child)=>Icon(
               Icons.favorite,
               color:Colors.white,
               size:animatorstate.value * 5,
             ),
             ),
                    ),
                    Center(
            child: SizedBox(
            width: 250.0,
            child: textLiquidFill,
          ),

                    ),
                      ElevatedButton
        (
            style: ElevatedButton.styleFrom(
                primary: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
        
            },
            child: const Text('Measure Of Love Again'),
            
        ),
                  ],

                ),
                backgroundColor: Colors.pinkAccent
                
                  );
              }
}





