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
  Color _firstColor=Colors.orange;
  Color _secondColor=Colors.pink;

  int _clicksCounter=0;

  @override
  Widget build(BuildContext context) {

      return Scaffold(

        body:Center(
        child:GestureDetector(

        onTap: () { setState((){
          _clicksCounter++;
          _firstColor =  Color.fromRGBO(
                _random.nextInt(256),
                _random.nextInt(256),
                _random.nextInt(256),
                1.0
            );
          _secondColor =  Color.fromRGBO(
                _random.nextInt(256),
                _random.nextInt(256),
                _random.nextInt(256),
                1.0
            );
          });
        },
        
              child: Container(
                  
                  alignment:Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                              "Hey there!\n",
                              textDirection:TextDirection.ltr,
                              textAlign:TextAlign.center,
                              style:TextStyle(
                                color:Colors.black,
                                fontSize:26
                                      )
                        ),
                      Text(
                        "Clicks:$_clicksCounter\n",
                              textDirection:TextDirection.ltr,
                              textAlign:TextAlign.center,
                              style:TextStyle(
                                color:Colors.black,
                                fontSize:20
                                      )
                      )
                    ],
                  ),
                  // color: _color,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [_firstColor,_secondColor])
                  ),
                ),
            
    )
    )
    );
  }
}
