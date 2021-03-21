import 'package:flutter/material.dart';
import 'package:pun_app_master0001/views/calc2.dart';
import 'package:pun_app_master0001/views/homemenu.dart';
import 'dart:collection';


class CalcTwo extends StatefulWidget {
  @override
  _CalcTwoState createState() => _CalcTwoState();
}

class _CalcTwoState extends State<CalcTwo> {
  final barColor = const Color(0xFFFFA3A3);
  final _formKey = GlobalKey<FormState>();
  String t1a, t1b, t2a, t2b;
  String v1 = "AA", v2 = "aA", v3 = "Aa", v4 = "aa";
  
  String row1 = "A";
  String row2 = "a";
  String col1 = "A";
  String col2 = "a";

  var p1 = new List<String>();
  var p2 = new List<String>();
  var p3 = new List<String>();
  var p4 = new List<String>();

  var tableList = new List<String>();
  var uniques = new LinkedHashMap<String, bool>();
  var phenouniques = new LinkedHashMap<String, bool>();
  var counteduni = new List<String>();
  var truee = new List<String>();
  var falsee = new List<String>();
  var trueecount = new List<String>();
  var pheno = new List<String>();
  var genopercent = new List<int>();
  var resultt = new List<String>();
  var resPheno = new List<String>();
  var perPheno = new List<int>();
  var perfPheno = new List<int>();
  var listphenoc = new List<String>();
  var listphenop = new List<int>();

  
  int countuniques(List<String> listt, String element) {
    if (listt == null || listt.isEmpty) { return 0;}
    int count = 0;
    for (int i = 0; i < listt.length; i++) {
      if (listt[i] == element) {count++;}
    } return count;
  }

  //////////////////////////////////////////////////////////////////////////////////////////////
  
  calcu(String tt1a, tt1b, tt2a, tt2b){
    if(_formKey.currentState.validate()){
      row1 = tt2a;
    row2 = tt2b;
    col1 = tt1a;
    col2 = tt1b;

    phenouniques.clear();
    tableList.clear();
    resultt.clear();
    counteduni.clear();
    resPheno.clear();
    truee.clear();
    trueecount.clear();
    falsee.clear();
    p1.clear();
    p2.clear();
    p3.clear();
    p4.clear();
    pheno.clear();
    genopercent.clear();
    perfPheno.clear();
    perPheno.clear();
    listphenoc.clear();
    listphenop.clear();
    uniques.clear();

    
    v1 = tt1a + tt2a;
    p1.add(tt1a);
    p1.add(tt2a);
    var p1sorted = p1;
    p1sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(p1sorted.join());
    pheno.add(tt1a);
    pheno.add(tt2a);

    v2 = tt1b + tt2a;
    p2.add(tt1b);
    p2.add(tt2a);
    var p2sorted = p2;
    p2sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(p2sorted.join());
    pheno.add(tt1b);
    pheno.add(tt2a);

    v3 = tt1a + tt2b;
    p3.add(tt1a);
    p3.add(tt2b);
    var p3sorted = p3;
    p3sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(p3sorted.join());
    pheno.add(tt1a);
    pheno.add(tt2b);

    v4 = tt1b + tt2b;
    p4.add(tt1b);
    p4.add(tt2b);
    var p4sorted = p4;
    p4sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(p4sorted.join());
    pheno.add(tt1b);
    pheno.add(tt2b);


    resultt = LinkedHashSet<String>.from(tableList).toList();
    resPheno = LinkedHashSet<String>.from(pheno).toList();
    resPheno.sort((String l, String r) {return l.compareTo(r);});
    
    for (var s in tableList) {
      uniques[s] = true;
    }
    for (var key in uniques.keys) {
      String ress = countuniques(tableList, key).toString();
      counteduni.add(ress);
    }

    for (int i = 0; i < counteduni.length; i++) {
      var toint = int.parse(counteduni[i]) * 25;
      genopercent.add(toint);
    }

    for (int i = 0; i < tableList.length; i++) {
      var phrase = tableList[i];
      var resres = phrase.contains(resPheno[0]).toString();
      truee.add(resres);
    }

  

    String ressy = countuniques(truee, "true").toString();
    trueecount.add(ressy);

    String fressy = countuniques(truee, "false").toString();
    falsee.add(fressy);

    var percPheno = int.parse(trueecount[0]) * 25;
    perPheno.add(percPheno);

    var percfPheno = int.parse(falsee[0]) * 25;
    perfPheno.add(percfPheno);


    listphenoc.add(trueecount[0]);
    listphenoc.add(falsee[0]);

    listphenop.add(perPheno[0]);
    listphenop.add(perfPheno[0]);

    print(pheno);
    print(truee);
    print(trueecount);
    print(falsee);
    print(tableList);
    print(resultt);
    print(genopercent);
    print(counteduni);
    print(resPheno);
    print(perPheno);
    print(perfPheno);
    print(listphenoc);
    print(listphenop);
    }
    
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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
            builder: (context) => CalcFour()
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
                              child: Text(v1, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 30, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                            ),
                            Container(
                              width: 110, height: 110,
                               decoration: BoxDecoration(
                                border: Border.all(width: 3, color: Color(0xFF32464B)),
                              ),
                                alignment: Alignment.center,
                              child: Text(v2, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 30, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
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
                              child: Text(v3, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 30, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                            ),
                            Container(
                              width: 110, height: 110,
                               decoration: BoxDecoration(
                                border: Border.all(width: 3, color: Color(0xFF32464B)),
                              ),
                                alignment: Alignment.center,
                              child: Text(v4, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 30, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                            ),
                          ]
                        ),
                      ],
                      ),
                      
                      ),
                    ),

                    Positioned(
                      bottom: 100,
                      right: 265,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                       alignment: Alignment.center,
                              child: Text(row2, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 30, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),       
                      ),
                    ),
                    Positioned(
                      bottom: 210,
                      right: 265,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                      alignment: Alignment.center,
                        child: Text(row1, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 30, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                    Positioned(
                      bottom: 300,
                      right: 170,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text(col1, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 30, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w700
                                ),),
                      ),
                    ),
                     Positioned(
                      bottom: 300,
                      right: 60,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text(col2, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 30, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w700
                                ),),
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
                      right: 190,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text(col1, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 30, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w700
                                ),),
                      ),
                    ),
                     Positioned(
                      bottom: 10,
                      right: 168,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text(col2, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 30, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w700
                                ),),
                      ),
                    ),

                    Positioned(
                      bottom: 10,
                      right: 105,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text(row1, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 30, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w700
                                ),),
                      ),
                    ),


                    Positioned(
                      bottom: 10,
                      right: 82,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text(row2, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 30, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w700
                                ),),
                      ),
                    ),

                  ],
                ),
              ),

              


              Container(
                height: 150,
                
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 110,
                      right: 210,
                      width: 100,
                      height: 30,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Gamete 1", 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 20, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic
                                ),)
                      ),
                    ),
                  Positioned(
                      bottom: 110,
                      right: 55,
                      width: 100,
                      height: 30,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Gamete 2", 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 20, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic
                                ),)
                      ),
                    ),
                     Positioned(
                      bottom: 60,
                      right: 218,
                      width: 85,
                      height: 45,
                      child: Container(
                        
                        child: TextFormField(
                        validator: (val){return val.isEmpty ? "Null" : null; },
                        decoration: InputDecoration(
                        hintText: "Allele 1a",
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                          ),
                        focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF32464B)),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                          ),
                        filled: true,
                        fillColor: Colors.transparent
                          ),
                          onChanged: (val){
                            t1a = val;
                          },
                        ),  
                      ),
                    ),
                    Positioned(
                      bottom: 13,
                      right: 218,
                      width: 85,
                      height: 45,
                      child: Container(
                        child: TextFormField(
                        validator: (val){return val.isEmpty ? "Null" : null; },
                        decoration: InputDecoration(
                        hintText: "Allele 1b",
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                          ),
                        focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF32464B)),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                          ),
                        filled: true,
                        fillColor: Colors.transparent
                          ),
                          onChanged: (val){
                            t1b = val;
                          },
                        ),  
                      ),
                    ),

                    Positioned(
                      bottom: 60,
                      right: 60,
                      width: 85,
                      height: 45,
                      child: Container(
                        child: TextFormField(
                          validator: (val){return val.isEmpty ? "Null" : null; },
                        decoration: InputDecoration(
                        hintText: "Allele 1a",
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                          ),
                        focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF32464B)),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                          ),
                        filled: true,
                        fillColor: Colors.transparent
                          ),
                          onChanged: (val){
                            t2a = val;
                          },
                        ),  
                      ),
                    ),
                    Positioned(
                      bottom: 13,
                      right: 60,
                      width: 85,
                      height: 45,
                      child: Container(
                        child: TextFormField(
                          validator: (val){return val.isEmpty ? "Null" : null; },
                        decoration: InputDecoration(
                        hintText: "Allele 1b",
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                          ),
                        focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF32464B)),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                          ),
                        filled: true,
                        fillColor: Colors.transparent
                          ),
                          onChanged: (val){
                            t2b = val;
                          },
                        ),  
                      ),
                    ),

                  ],
                ),
              ),
                GestureDetector(onTap: (){
                    calcu(t1a, t1b, t2a, t2b);
                  },
                child: Container(  
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                 color: Color(0xFF32464B),
                 borderRadius: BorderRadius.circular(38)
                ),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 48,
                child: Text("Calculate", style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Roboto', fontWeight: FontWeight.w700),),
              ),
              ),
           
               SizedBox(height: 30,),

               Container(
                 height: 30,
                 alignment: Alignment.topLeft,
                  child: Text("      Frequencies", 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 25, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic
                                ),)
               ), 
               Container(
                 height: 2,
                   decoration: BoxDecoration(
                  color: Color(0xFF32464B),
                ),
               ), 
              
              
              Container(
                
                height: 200,
                  child: Stack(
                  children: <Widget>[
                      Positioned(
                      bottom: 10,
                      right: 225,
                      width: 100,
                      height: 160,
                      
                      child: Container(
           
                          child: 
                          Text("Genotype", style: TextStyle(color:  Color(0xFF32464B), fontSize: 15, fontFamily: 'Roboto', fontWeight: FontWeight.w700),)
                            ),
                      ),
                      Positioned(
                      bottom: 10,
                      right: 110,
                      width: 100,
                      height: 160,
                      
                      child: Container(
                   
                          child: 
                          Text("Count", style: TextStyle(color:  Color(0xFF32464B), fontSize: 15, fontFamily: 'Roboto', fontWeight: FontWeight.w700),)
                            ),
                      ),

                      Positioned(
                      bottom: 10,
                      right: 17,
                      width: 100,
                      height: 160,
                      
                      child: Container(
           
                          child: 
                          Text("Percentage(%)", style: TextStyle(color:  Color(0xFF32464B), fontSize: 15, fontFamily: 'Roboto', fontWeight: FontWeight.w700),)
                            ),
                      ),
                       
                       Positioned(
                      bottom: 0,
                      right: 240,
                      width: 70,
                      height: 150,
                      
                      child: Container(
                
                          child: new ListView.builder(
                          itemCount: resultt.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                          return new Text(resultt[index], style: TextStyle(color:  Color(0xFF32464B), fontSize: 25, fontFamily: 'Roboto', fontWeight: FontWeight.w700),);
                   },
                 ),
                        ),
                      ),

                       Positioned(
                      bottom: 0,
                      right: 20,
                      width: 70,
                      height: 150,
                      
                      child: Container(
                         
                          child: new ListView.builder(
                          itemCount: genopercent.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                          return new Text(genopercent[index].toString(), style: TextStyle(color:  Color(0xFF32464B), fontSize: 25, fontFamily: 'Roboto', fontWeight: FontWeight.w700),);
                   },
                 ),
                        ),
                      ),

                      Positioned(
                      bottom: 0,
                      right: 127,
                      width: 70,
                      height: 150,
                      
                      child: Container(
                      
                          child: new ListView.builder(
                          itemCount: counteduni.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                          return new Text(counteduni[index], style: TextStyle(color:  Color(0xFF32464B), fontSize: 25, fontFamily: 'Roboto', fontWeight: FontWeight.w700),);
                   },
                 ),
                        ),
                      ),
                      
                    ],
                  ),
              ),




              Container(
                
                height: 200,
                  child: Stack(
                  children: <Widget>[
                      Positioned(
                      bottom: 10,
                      right: 225,
                      width: 100,
                      height: 160,
                      
                      child: Container(
           
                          child: 
                          Text("Phenotype", style: TextStyle(color:  Color(0xFF32464B), fontSize: 15, fontFamily: 'Roboto', fontWeight: FontWeight.w700),)
                            ),
                      ),
                      Positioned(
                      bottom: 10,
                      right: 110,
                      width: 100,
                      height: 160,
                      
                      child: Container(
                   
                          child: 
                          Text("Count", style: TextStyle(color:  Color(0xFF32464B), fontSize: 15, fontFamily: 'Roboto', fontWeight: FontWeight.w700),)
                            ),
                      ),

                      Positioned(
                      bottom: 10,
                      right: 17,
                      width: 100,
                      height: 160,
                      
                      child: Container(
           
                          child: 
                          Text("Percentage(%)", style: TextStyle(color:  Color(0xFF32464B), fontSize: 15, fontFamily: 'Roboto', fontWeight: FontWeight.w700),)
                            ),
                      ),
                       
                       Positioned(
                      bottom: 0,
                      right: 240,
                      width: 70,
                      height: 150,
                      
                      child: Container(
                
                          child: new ListView.builder(
                          itemCount: resPheno.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                          return new Text(resPheno[index], style: TextStyle(color:  Color(0xFF32464B), fontSize: 25, fontFamily: 'Roboto', fontWeight: FontWeight.w700),);
                   },
                 ),
                        ),
                      ),

                       Positioned(
                      bottom: 0,
                      right: 20,
                      width: 70,
                      height: 150,
                      
                      child: Container(
                         
                          child: new ListView.builder(
                          itemCount: listphenop.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                          return new Text(listphenop[index].toString(), style: TextStyle(color:  Color(0xFF32464B), fontSize: 25, fontFamily: 'Roboto', fontWeight: FontWeight.w700),);
                   },
                 ),
                        ),
                      ),

                      Positioned(
                      bottom: 0,
                      right: 127,
                      width: 70,
                      height: 150,
                      
                      child: Container(
                      
                          child: new ListView.builder(
                          itemCount: listphenoc.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                          return new Text(listphenoc[index].toString(), style: TextStyle(color:  Color(0xFF32464B), fontSize: 25, fontFamily: 'Roboto', fontWeight: FontWeight.w700),);
                   },
                 ),
                        ),
                      ),
                      
                    ],
                  ),
              ),
            ],

            
            
            ),
        ),
        ),


    
      ),


    );
  }
  


 
}



