import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final Random _random = new Random();

  Color _color = Colors.orange;

  int _clicksCounter=0;

  @override
  Widget build(BuildContext context) {

      return Scaffold(

        body:Center(
        child:GestureDetector(

        onTap: () { setState((){
          _clicksCounter++;
          _color = new Color.fromRGBO(
                _random.nextInt(256),
                _random.nextInt(256),
                _random.nextInt(256),
                1.0
            );
          });
        },
        
              child: Container(
                  
                  alignment:Alignment.center,
                  child: Text(
                          "Hey there!\n",
                          textDirection:TextDirection.ltr,
                          textAlign:TextAlign.center,
                          style:TextStyle(
                            color:Colors.black,
                            fontSize:26
                                  )
                    ),
                  color: _color,
                ),
            
    )
    )
    );
  }
}






/*
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

*/