 
 
import 'package:flutter/material.dart';
 import 'package:flutter_bmi/tapbar1.dart';

void main() {
  runApp(MyApp());
}


// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  double x=0.0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,

        primarySwatch: Colors.blue,
         
      ),
     
      home: MyhomePage1(),  
     
     routes: {
       

     },
     );
     
     
  }
}
 