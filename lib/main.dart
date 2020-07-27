import 'package:flutter/material.dart';

void main() {
  runApp(GestureDetector(
                 onTap: (){
                   print("Container clicked");
                 },
    child:Container(
    alignment:Alignment.center,
    color:Colors.white,
    child:Text(
        "Hey there!",
        textDirection:TextDirection.ltr,
        textAlign:TextAlign.center,
        style:TextStyle(
            color:Colors.green,
            fontSize:26
        )

    )
    )
  ));
}