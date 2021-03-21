import 'package:flutter/material.dart';
import 'package:pun_app_master0001/views/sheet2.dart';


class SheetFour extends StatefulWidget {
  @override
  _SheetFourState createState() => _SheetFourState();
}

class _SheetFourState extends State<SheetFour> {
  final barColor = const Color(0xFFFFA3A3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("      Number of Alleles: 2", style: TextStyle(color: Color(0xFF32464B), fontFamily: 'Roboto', fontWeight: FontWeight.w700)),
        backgroundColor: barColor,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Color(0xFF32464B)
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Color(0xFF32464B)), 
        onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => SheetTwo()
          ));
        },),
        brightness: Brightness. light,
      ),
      
       body: Form(
         child: Container(
            child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 370,
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
                           bottom: 60,
                      right: 20,
                      width: 268,
                      height: 272,
                      child: Container(
                        decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                         child: Table(children: [
                            TableRow(
                               children: [
                                 Container(
                                      width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                                alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                 ),
                                   Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                             alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                ),
                                  Container(
                                      width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                                alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                 ),
                                   Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                             alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                ),
                               ],
                            ),
                             TableRow(
                               children: [
                                 Container(
                                      width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                                alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                 ),
                                   Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                             alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                ),
                                  Container(
                                      width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                                alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                 ),
                                   Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                             alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                ),
                               ],
                            ),
                             TableRow(
                               children: [
                                 Container(
                                      width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                                alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                 ),
                                   Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                             alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                ),
                                  Container(
                                      width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                                alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                 ),
                                   Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                             alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                ),
                               ],
                            ),
                             TableRow(
                               children: [
                                 Container(
                                      width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                                alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                 ),
                                   Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                             alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                ),
                                  Container(
                                      width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                                alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                 ),
                                   Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                             alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                                ),
                               ],
                            ),
                            ],
                         ),
                      ),
                      ),

                        Positioned(
                      bottom: 335,
                      right: 228,
                      width: 50,
                      height: 50,
                      child: Container(
                        
                     alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                      ),
                    ),
                    
                        Positioned(
                      bottom: 335,
                      right: 162,
                      width: 50,
                      height: 50,
                      child: Container(
                        
                     alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                      ),
                    ),

                      Positioned(
                      bottom: 335,
                      right: 96,
                      width: 50,
                      height: 50,
                      child: Container(
                        
                     alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                      ),
                    ),

                    Positioned(
                      bottom: 335,
                      right: 30,
                      width: 50,
                      height: 50,
                      child: Container(
                        
                     alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                      ),
                    ),
                    Positioned(
                      bottom: 272,
                      right: 295,
                      width: 50,
                      height: 50,
                      child: Container(
                        
                      alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                               
                      ),
                    ),
                    Positioned(
                      bottom: 204,
                      right: 295,
                      width: 50,
                      height: 50,
                      child: Container(
                        
                      alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                               
                      ),
                    ),
                     Positioned(
                      bottom: 137,
                      right: 295,
                      width: 50,
                      height: 50,
                      child: Container(
                        
                      alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                               
                      ),
                    ),
                    Positioned(
                      bottom: 71,
                      right: 295,
                      width: 50,
                      height: 50,
                      child: Container(
                        
                      alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ),
                               
                      ),
                    ),
                      Positioned(
                      bottom: 6,
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
                      bottom: 9,
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
                      bottom: 7,
                      right: 170,
                      width: 120,
                      height: 50,
                      child: Container(
                        
                       alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF32464B), 
                                ),
                              ), 
                      ),
                    ),
                       Positioned(
                      bottom: 7,
                      right: 60,
                      width: 120,
                      height: 50,
                      child: Container(
                        
                       alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: TextField(
                                style: TextStyle(
                                  fontSize: 25.0,
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