import 'package:flutter/material.dart';
import 'package:pun_app_master0001/views/homemenu.dart';
import 'package:pun_app_master0001/views/sheet4.dart';

class SheetTwo extends StatefulWidget {
  @override
  _SheetTwoState createState() => _SheetTwoState();
}

class _SheetTwoState extends State<SheetTwo> {
  final barColor = const Color(0xFFFFA3A3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("    Number of Traits: 1", style: TextStyle(color: Color(0xFF32464B), fontFamily: 'Roboto', fontWeight: FontWeight.w700)),
        backgroundColor: barColor,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Color(0xFF32464B)
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Color(0xFF32464B)), 
        onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => Home()
          ));
        },),
        brightness: Brightness. light,

        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward_ios_outlined, color: Color(0xFF32464B)),
               onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => SheetFour()
            ));
        },

          ),
        ],
      ),
       body: Form(child: Container(
              child: SingleChildScrollView(
                 child: Column(children: [
                  Container(
                     height: 350,
                    decoration: BoxDecoration(
                    color: barColor,
                    borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )
                ),
                child: Stack(
                    children: <Widget>[
                      Positioned(
                           bottom: 75,
                          right: 40,
                          width: 220,
                          height: 224,
                          child: Container(
                        decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                          child: Table(children: [
                            TableRow(
                          children: [
                            Container(
                              width: 110, height: 110, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 3, color: Color(0xFF32464B)),
                              ),
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                             
                            ),
                            Container(
                              width: 110, height: 110,
                               decoration: BoxDecoration(
                                border: Border.all(width: 3, color: Color(0xFF32464B)),
                              ),
                                alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                            ),
                          ]
                        ),
                        TableRow(
                          children: [
                            Container(
                              width: 110, height: 110, 
                               decoration: BoxDecoration(
                                border: Border.all(width: 3, color: Color(0xFF32464B)),
                              ),
                               alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                            ),
                            Container(
                              width: 110, height: 110,
                              decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Color(0xFF32464B)),),
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                            ),
                          ]
                        ),
                          ],),    
                        ),
                      ),
                      Positioned(
                      bottom: 100,
                      right: 265,
                      width: 80,
                      height: 50,
                      child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),     
                      ),
                    ),
                    Positioned(
                      bottom: 210,
                      right: 265,
                      width: 80,
                      height: 50,
                      child: Container(
                        
                     alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ), 
                      ),
                    ),
                     Positioned(
                      bottom: 310,
                      right: 170,
                      width: 80,
                      height: 50,
                      child: Container(
                        alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ), 
                      ),
                    ),
                       Positioned(
                      bottom: 310,
                      right: 60,
                      width: 80,
                      height: 50,
                      child: Container(
                          alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ), 
                      ),
                    ),
                    Positioned(
                      bottom: 13,
                      right: 280,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text("Cross:", 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 15, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w200
                                ),),
                      ),
                    ),
                    Positioned(
                      bottom: 12,
                      right: 138,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text("x", 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 30, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w200
                                ),),
                      ),
                    ),
                       Positioned(
                      bottom: 10,
                      right: 170,
                      width: 100,
                      height: 50,
                      child: Container(
                        
                       alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ), 
                      ),
                    ),
                       Positioned(
                      bottom: 10,
                      right: 75,
                      width: 100,
                      height: 50,
                      child: Container(
                        
                       alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ), 
                      ),
                    ),
                    ],
                  ),
                ),
                 SizedBox(height: 30,),
                Container(
                   padding: EdgeInsets.symmetric(horizontal: 24),
                   child: TextField(
                      decoration: InputDecoration(
               
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF32464B)),
                  borderRadius: BorderRadius.all(Radius.circular(30))
                ),

                
                
                filled: true,
                fillColor: Colors.white
              ),
             style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
               maxLines: 50,
                   ),
                ),
                 SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}