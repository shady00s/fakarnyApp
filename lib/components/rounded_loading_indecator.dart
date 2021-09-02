import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter/rendering.dart';
const twoPi = 3.14*2;

Widget roundedLoadingIdenticator({
  required percentageValue,
})

{
  return Center(
    child: Container(

      width: 70,
      height:70,
    child:Stack(
      children:[
        Transform.rotate(
          angle: -math.pi /2,
          child: ShaderMask(
      shaderCallback:
      (rect){
          return SweepGradient(
          colors: [Colors.blue,Colors.grey.withAlpha(55)],
          startAngle: 0.0,
          endAngle: twoPi,
          stops: [0.75 , 0.0 ],
          center: Alignment.center
          ).createShader(rect);
      }
      ,child: Container(
          width: 70,
            height: 70,
          decoration:
          BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue
          ),
      ),
      ),
        ),
    Center(
      child: Container(
        width: 52,
        height:52,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
            color: Colors.white
        ),
        child: Center(
          child: Text('$percentageValue%',style:TextStyle(fontSize: 18, color:Colors.blue[700])),
        ),
      ),
    )
]

    ),
    ),
  );
}