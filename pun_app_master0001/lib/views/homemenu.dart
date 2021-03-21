import 'package:flutter/material.dart';
import 'package:pun_app_master0001/views/calc.dart';
import 'package:pun_app_master0001/views/homequiz.dart';
import 'package:pun_app_master0001/views/sheet2.dart';
import 'package:pun_app_master0001/widgets/widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final barColor = const Color(0xFFFFA3A3);
  quiz(){
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => QuizMaker()));
  }
  calc(){
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => CalcTwo()));
  }
  sheets(){
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => SheetTwo()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: barColor,
        elevation: 0.0,
        brightness: Brightness. light,
      ),
      body: Form(child: Container(
        color: Color(0xFFFFA3A3),
        padding: EdgeInsets.symmetric(horizontal: 60),
        child: SingleChildScrollView(
                  child: Column(children: [
            
            
            SizedBox(height: 10,),
            
            
            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed:(){
              
              sheets();
              
            },
            child: Image.asset('assets/logo.png'),
            ),

            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed:(){
              
              quiz();
              
            },
            child: Image.asset('assets/quiz.jpg'),
            ),

            FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed:(){
              calc();
            },
            child: Image.asset('assets/cal.png'),
            ),


            ],),
        ),
        ),
      ),
    );
  }
}