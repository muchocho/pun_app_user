import 'dart:wasm';

import 'package:flutter/material.dart';
import 'dart:collection';

import 'package:pun_app_master0001/views/calc.dart';

class CalcFour extends StatefulWidget {
  @override
  _CalcFourState createState() => _CalcFourState();
}

class _CalcFourState extends State<CalcFour> {
   final barColor = const Color(0xFFFFA3A3);
   final _formKey = GlobalKey<FormState>();
   String tb1a, tb1b, tb1c, tb1d, tb2a, tb2b, tb2c, tb2d, tb3a, tb3b, tb3c, tb3d, tb4a, tb4b, tb4c, tb4d;
   
   String tv1 = "ABAB", tv2 = "AbAB", tv3 = "ABAB", tv4 = "AbAB"; 
   String tv5 = "ABAb", tv6 = "AbAb", tv7 = "ABAb", tv8 = "AbAb";
   String tv9 = "ABaB", tv10 = "AbaB", tv11 = "ABaB", tv12 = "AbaB";
   String tv13 = "ABab", tv14 = "Abab", tv15 = "ABab", tv16 = "Abab";
   
   String coll1 = "AB", coll2 = "Ab", coll3 = "AB", coll4 = "Ab";
   String roww1 = "AB", roww2 = "Ab", roww3 = "aB", roww4 = "ab";
  
   String g1t1a = "A", g1t1b = "A", g1t2a = "B", g1t2b = "b", g2t1a = "A", g2t1b ="a", g2t2a = "B", g2t2b = "b";
  
  var p1 = new List<String>();
  var p2 = new List<String>();
  var p3 = new List<String>();
  var p4 = new List<String>();
  var pa1 = new List<String>();
  var pa2 = new List<String>();
  var pa3 = new List<String>();
  var pa4 = new List<String>();
  var pb1 = new List<String>();
  var pb2 = new List<String>();
  var pb3 = new List<String>();
  var pb4 = new List<String>();
  var pc1 = new List<String>();
  var pc2 = new List<String>();
  var pc3 = new List<String>();
  var pc4 = new List<String>();

  var tableList = new List<String>();
  var uniques = new LinkedHashMap<String, bool>();
  var phenouniques = new LinkedHashMap<String, bool>();
  var counteduni = new List<String>();
  var truee = new List<String>();
  var falsee = new List<String>();
  var trueecount = new List<String>();
   var trueecount1 = new List<String>();
    var trueecount2 = new List<String>();
  var pheno = new List<String>();
  var genopercent = new List<double>();
  var resultt = new List<String>();
  var resPheno = new List<String>();
  var perPheno = new List<int>();
  var perfPheno = new List<int>();
  var listphenoc = new List<String>();
  var listphenop = new List<String>();
  var ppenlist = new List<String>();
  var pppenlist = new List<String>();
  var ttruel = new List<String>();
  var pppenlistt = new List<String>();
  var tttruel = new List<String>();
  var countedpheno = new List<String>();
  int countuniques(List<String> listt, String element) {
    if (listt == null || listt.isEmpty) { return 0;}
    int count = 0;
    for (int i = 0; i < listt.length; i++) {
      if (listt[i] == element) {count++;}
    } return count;
  }

  calcu2(String p1t1a, p1t1b, p1t2a, p1t2b, p2t1a, p2t1b, p2t2a, p2t2b){
     if(_formKey.currentState.validate()){
       coll1 = p1t1a + p1t2a;
    coll2 = p1t1a + p1t2b;
    coll3 = p1t1b + p1t2a;
    coll4 = p1t1b + p1t2b;

    roww1 = p2t1a + p2t2a;
    roww2 = p2t1a + p2t2b;
    roww3 = p2t1b + p2t2a;
    roww4 = p2t1b + p2t2b;

    countedpheno.clear();
    trueecount1.clear();
    trueecount2.clear();
    ttruel.clear();
    tttruel.clear();
    pppenlistt.clear();
    pppenlist.clear();
    ppenlist.clear();
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
    pa1.clear();
    pa2.clear();
    pa3.clear();
    pa4.clear();
    pb1.clear();
    pb2.clear();
    pb3.clear();
    pb4.clear();
    pc1.clear();
    pc2.clear();
    pc3.clear();
    pc4.clear();
    pheno.clear();
    genopercent.clear();
    perfPheno.clear();
    perPheno.clear();
    listphenoc.clear();
    listphenop.clear();
    uniques.clear();

//--------------------------------------------------------------------

    tv1 = coll1 + roww1;
    p1.add(p1t1a);
    p1.add(p1t2a);
    p1.add(p2t1a);
    p1.add(p2t2a);
    var p1sorted = p1;
    p1sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(p1sorted.join());
    pheno.add(p1t1a);
    pheno.add(p1t2a);
    pheno.add(p2t1a);
    pheno.add(p2t2a);

    tv2 = coll2 + roww1;
    p2.add(p1t1a);
    p2.add(p1t2b);
    p2.add(p2t1a);
    p2.add(p2t2a);
    var p2sorted = p2;
    p2sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(p2sorted.join());
    pheno.add(p1t1a);
    pheno.add(p1t2b);
    pheno.add(p2t1a);
    pheno.add(p2t2a);

    tv3 = coll3 + roww1;
    p3.add(p1t1b);
    p3.add(p1t2a);
    p3.add(p2t1a);
    p3.add(p2t2a);
    var p3sorted = p3;
    p3sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(p3sorted.join());
    pheno.add(p1t1b);
    pheno.add(p1t2a);
    pheno.add(p2t1a);
    pheno.add(p2t2a);

    tv4 = coll4 + roww1;
    p4.add(p1t1b);
    p4.add(p1t2b);
    p4.add(p2t1a);
    p4.add(p2t2a);
    var p4sorted = p4;
    p4sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(p4sorted.join());
    pheno.add(p1t1b);
    pheno.add(p1t2b);
    pheno.add(p2t1a);
    pheno.add(p2t2a);
//------------------------------------------------
    tv5 = coll1 + roww2;
    pa1.add(p1t1a);
    pa1.add(p1t2a);
    pa1.add(p2t1a);
    pa1.add(p2t2b);
    var pa1sorted = pa1;
    pa1sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(pa1sorted.join());
    pheno.add(p1t1a);
    pheno.add(p1t2a);
    pheno.add(p2t1a);
    pheno.add(p2t2b);

    tv6 = coll2 + roww2;
    pa2.add(p1t1a);
    pa2.add(p1t2b);
    pa2.add(p2t1a);
    pa2.add(p2t2b);
    var pa2sorted = pa2;
    pa2sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(pa2sorted.join());
    pheno.add(p1t1a);
    pheno.add(p1t2b);
    pheno.add(p2t1a);
    pheno.add(p2t2b);

    tv7 = coll3 + roww2;
    pa3.add(p1t1b);
    pa3.add(p1t2a);
    pa3.add(p2t1a);
    pa3.add(p2t2b);
    var pa3sorted = pa3;
    pa3sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(pa3sorted.join());
    pheno.add(p1t1b);
    pheno.add(p1t2a);
    pheno.add(p2t1a);
    pheno.add(p2t2b);

    tv8 = coll4 + roww2;
    pa4.add(p1t1b);
    pa4.add(p1t2b);
    pa4.add(p2t1a);
    pa4.add(p2t2b);
    var pa4sorted = pa4;
    pa4sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(pa4sorted.join());
    pheno.add(p1t1b);
    pheno.add(p1t2b);
    pheno.add(p2t1a);
    pheno.add(p2t2b);

//------------------------------------------------------

    tv9 = coll1 + roww3;
    pb1.add(p1t1a);
    pb1.add(p1t2a);
    pb1.add(p2t1b);
    pb1.add(p2t2a);
    var pb1sorted = pb1;
    pb1sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(pb1sorted.join());
    pheno.add(p1t1a);
    pheno.add(p1t2a);
    pheno.add(p2t1b);
    pheno.add(p2t2a);

    tv10 = coll2 + roww3;
    pb2.add(p1t1a);
    pb2.add(p1t2b);
    pb2.add(p2t1b);
    pb2.add(p2t2a);
    var pb2sorted = pb2;
    pb2sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(pb2sorted.join());
    pheno.add(p1t1a);
    pheno.add(p1t2b);
    pheno.add(p2t1b);
    pheno.add(p2t2a);

    tv11 = coll3 + roww3;
    pb3.add(p1t1b);
    pb3.add(p1t2a);
    pb3.add(p2t1b);
    pb3.add(p2t2a);
    var pb3sorted = pb3;
    pb3sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(pb3sorted.join());
    pheno.add(p1t1b);
    pheno.add(p1t2a);
    pheno.add(p2t1b);
    pheno.add(p2t2a);

    tv12 = coll4 + roww3;
    pb4.add(p1t1b);
    pb4.add(p1t2b);
    pb4.add(p2t1b);
    pb4.add(p2t2a);
    var pb4sorted = pb4;
    pb4sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(pb4sorted.join());
    pheno.add(p1t1b);
    pheno.add(p1t2b);
    pheno.add(p2t1b);
    pheno.add(p2t2a);

//----------------------------------------------------------

    tv13 = coll1 + roww4;
    pc1.add(p1t1a);
    pc1.add(p1t2a);
    pc1.add(p2t1b);
    pc1.add(p2t2b);
    var pc1sorted = pc1;
    pc1sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(pc1sorted.join());
    pheno.add(p1t1a);
    pheno.add(p1t2a);
    pheno.add(p2t1b);
    pheno.add(p2t2b);

    tv14 = coll2 + roww4;
    pc2.add(p1t1a);
    pc2.add(p1t2b);
    pc2.add(p2t1b);
    pc2.add(p2t2b);
    var pc2sorted = pc2;
    pc2sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(pc2sorted.join());
    pheno.add(p1t1a);
    pheno.add(p1t2b);
    pheno.add(p2t1b);
    pheno.add(p2t2b);

    tv15 = coll3 + roww4;
    pc3.add(p1t1b);
    pc3.add(p1t2a);
    pc3.add(p2t1b);
    pc3.add(p2t2b);
    var pc3sorted = pc3;
    pc3sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(pc3sorted.join());
    pheno.add(p1t1b);
    pheno.add(p1t2a);
    pheno.add(p2t1b);
    pheno.add(p2t2b);

    tv16 = coll4 + roww4;
    pc4.add(p1t1b);
    pc4.add(p1t2b);
    pc4.add(p2t1b);
    pc4.add(p2t2b);
    var pc4sorted = pc4;
    pc4sorted.sort((String l, String r) {return l.compareTo(r);});
    tableList.add(pc4sorted.join());
    pheno.add(p1t1b);
    pheno.add(p1t2b);
    pheno.add(p2t1b);
    pheno.add(p2t2b);

//------------------------------------------------------------

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
      var toint = double.parse(counteduni[i]) * 6.25;
      genopercent.add(toint);
    }

    for (int i = 0; i < tableList.length; i++) {
      var phrase = tableList[i];
      var resres = phrase.contains(resPheno[0] + resPheno[1]).toString();
      truee.add(resres);
      if (resres != "true") {
          ppenlist.add(tableList[i]);
      }
    }

     for (int i = 0; i < ppenlist.length; i++) {
      var phrase = ppenlist[i];
      var resres = phrase.contains(resPheno[0]).toString();
      ttruel.add(resres);
      if (resres != "true") {
          pppenlist.add(ppenlist[i]);
      }
    }

     for (int i = 0; i < pppenlist.length; i++) {
      var phrase = pppenlist[i];
      var resres = phrase.contains(resPheno[1]).toString();
      tttruel.add(resres);
      if (resres != "true") {
          pppenlistt.add(pppenlist[i]);
      }
     }
    
    }


    String ressy = countuniques(truee, "true").toString();
    trueecount.add(ressy);

    String ressyy = countuniques(ttruel, "true").toString();
    trueecount1.add(ressyy);

    String ressyyy = countuniques(tttruel, "true").toString();
    trueecount2.add(ressyyy);

    String fressy = countuniques(tttruel, "false").toString();
    falsee.add(fressy);

    
    
    var percPheno = int.parse(trueecount[0]) * 6.25;
    String anspheno = percPheno.toString();
    listphenop.add(anspheno);

     var percPheno1 = int.parse(trueecount1[0]) * 6.25;
    String anspheno1 = percPheno1.toString();
    listphenop.add(anspheno1);

     var percPheno2 = int.parse(trueecount2[0]) * 6.25;
    String anspheno2 = percPheno2.toString();
    listphenop.add(anspheno2);

     var percPheno3 = int.parse(falsee[0]) * 6.25;
    String anspheno3 = percPheno3.toString();
    listphenop.add(anspheno3);

  

    countedpheno.add(resPheno[0] + resPheno[1]);
    countedpheno.add(resPheno[0] + resPheno[3]);
    countedpheno.add(resPheno[1] + resPheno[2]);
    countedpheno.add(resPheno[2] + resPheno[3]);

    listphenoc.add(trueecount[0]);
    listphenoc.add(trueecount1[0]);
    listphenoc.add(trueecount2[0]);
    listphenoc.add(falsee[0]);


    print(pheno);
    print(truee);
    print(trueecount);
    print(ttruel);
    print(tttruel);
    print(trueecount1);
    print(trueecount2);
    print(falsee);
    print(ppenlist);
    print(pppenlist);
    print(pppenlistt);
    print(tableList);
    print(resultt);
    print(genopercent);
    print(counteduni);
    print(resPheno);
    print(perPheno);
    print(perfPheno);
    print(listphenoc);
    print(listphenop);
    print(countedpheno);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("      Number of Traits: 2", style: TextStyle(color: Color(0xFF32464B), fontFamily: 'Roboto', fontWeight: FontWeight.w700)),
        backgroundColor: barColor,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Color(0xFF32464B)
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Color(0xFF32464B)), 
        onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => CalcTwo()
          ));
        },),
        brightness: Brightness. light,
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
                    bottomRight: Radius.circular(50),)),

                  child: Stack(
                    children: <Widget>[
                      Positioned(
                      bottom: 55,
                      right: 30,
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
                              child: Text(tv1, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                                ),
                                 Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                              alignment: Alignment.center,
                              child: Text(tv2, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                                ),
                                 Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                              alignment: Alignment.center,
                              child: Text(tv3, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                                ),
                                  Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                              alignment: Alignment.center,
                              child: Text(tv4, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
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
                              child: Text(tv5, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                                ),
                                 Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                              alignment: Alignment.center,
                              child: Text(tv6, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                                ),
                                 Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                              alignment: Alignment.center,
                              child: Text(tv7, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                                ),
                                  Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                              alignment: Alignment.center,
                              child: Text(tv8, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
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
                              child: Text(tv9, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                                ),
                                 Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                              alignment: Alignment.center,
                              child: Text(tv10, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                                ),
                                 Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                              alignment: Alignment.center,
                              child: Text(tv11, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                                ),
                                  Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                              alignment: Alignment.center,
                              child: Text(tv12, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
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
                              child: Text(tv13, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                                ),
                                 Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                              alignment: Alignment.center,
                              child: Text(tv14, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                                ),
                                 Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                              alignment: Alignment.center,
                              child: Text(tv15, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                                ),
                                  Container(
                                    width: 67, height: 67, 
                              decoration: BoxDecoration(
                                border: Border.all(width: 2, color: Color(0xFF32464B)),
                              ),
                              alignment: Alignment.center,
                              child: Text(tv16, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),
                                ),
                              ],
                            ),
                        ],),
                        
                        ),),

                        Positioned(
                      bottom: 315,
                      right: 229,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                       alignment: Alignment.center,
                              child: Text(coll1, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),       
                      ),
                    ),

                      Positioned(
                      bottom: 315,
                      right: 162,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                       alignment: Alignment.center,
                              child: Text(coll2, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),       
                      ),
                    ),
                      Positioned(
                      bottom: 315,
                      right: 96,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                       alignment: Alignment.center,
                              child: Text(coll3, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),       
                      ),
                    ),
                      Positioned(
                      bottom: 315,
                      right: 30,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                       alignment: Alignment.center,
                              child: Text(coll4, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),       
                      ),
                    ),
                     Positioned(
                      bottom: 263,
                      right: 285,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                       alignment: Alignment.center,
                              child: Text(roww1, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),       
                      ),
                    ),
                    Positioned(
                      bottom: 196,
                      right: 285,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                       alignment: Alignment.center,
                              child: Text(roww2, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),       
                      ),
                    ),
                     Positioned(
                      bottom: 129,
                      right: 285,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                       alignment: Alignment.center,
                              child: Text(roww3, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),       
                      ),
                    ),
                     Positioned(
                      bottom: 61,
                      right: 285,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                       alignment: Alignment.center,
                              child: Text(roww4, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),       
                      ),
                    ),

                    Positioned(
                      bottom: 61,
                      right: 285,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                       alignment: Alignment.center,
                              child: Text(roww4, 
                              style: TextStyle(
                                color: Color(0xFF32464B), 
                                fontSize: 20, 
                                fontFamily: 'Roboto', 
                                fontWeight: FontWeight.w700
                                ),),       
                      ),
                    ),
                       Positioned(
                      bottom: 5,
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
                      bottom: 5,
                      right: 135,
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
                      bottom: 2,
                      right: 225,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text(g1t1a, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 25, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w700
                                ),),
                      ),
                    ),
                     Positioned(
                      bottom: 2,
                      right: 205,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text(g1t1b, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 25, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w700
                                ),),
                      ),
                    ),
                     Positioned(
                      bottom: 2,
                      right: 185,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text(g1t2a, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 25, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w700
                                ),),
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      right: 165,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text(g1t2b, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 25, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w700
                                ),),
                      ),
                    ),

                      Positioned(
                      bottom: 2,
                      right: 108,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text(g2t1a, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 25, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w700
                                ),),
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      right: 88,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text(g2t1b, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 25, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w700
                                ),),
                      ),
                    ),
                     Positioned(
                      bottom: 2,
                      right: 68,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text(g2t2a, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 25, 
                        fontFamily: 'Roboto', 
                        fontWeight: FontWeight.w700
                                ),),
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      right: 48,
                      width: 70,
                      height: 50,
                      child: Container(
                        
                        alignment: Alignment.center,
                        child: Text(g2t2b, 
                        style: TextStyle(
                        color: Color(0xFF32464B), 
                        fontSize: 25, 
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
                      right: 263,
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
                            g1t1a = val;
                          },
                        ),  
                      ),
                    ),
                       Positioned(
                      bottom: 13,
                      right: 263,
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
                            g1t1b = val;
                          },
                        ),  
                      ),
                    ),
                      Positioned(
                      bottom: 60,
                      right: 180,
                      width: 85,
                      height: 45,
                      child: Container(
                        child: TextFormField(
                          validator: (val){return val.isEmpty ? "Null" : null; },
                        decoration: InputDecoration(
                        hintText: "Allele 2a",
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
                            g1t2a = val;
                          },
                        ),  
                      ),
                    ),
                     Positioned(
                      bottom: 13,
                      right: 180,
                      width: 85,
                      height: 45,
                      child: Container(
                        child: TextFormField(
                          validator: (val){return val.isEmpty ? "Null" : null; },
                        decoration: InputDecoration(
                        hintText: "Allele 2b",
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
                            g1t2b = val;
                          },
                        ),  
                      ),
                    ),
                     Positioned(
                      bottom: 60,
                      right: 95,
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
                            g2t1a = val;
                          },
                        ),  
                      ),
                    ),
                      Positioned(
                      bottom: 13,
                      right: 95,
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
                            g2t1b = val;
                          },
                        ),  
                      ),
                    ),
                      Positioned(
                      bottom: 60,
                      right: 10,
                      width: 85,
                      height: 45,
                      child: Container(
                        child: TextFormField(
                          validator: (val){return val.isEmpty ? "Null" : null; },
                        decoration: InputDecoration(
                        hintText: "Allele 2a",
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
                            g2t2a = val;
                          },
                        ),  
                      ),
                    ),
                      Positioned(
                      bottom: 13,
                      right: 10,
                      width: 85,
                      height: 45,
                      child: Container(
                        child: TextFormField(
                          validator: (val){return val.isEmpty ? "Null" : null; },
                        decoration: InputDecoration(
                        hintText: "Allele 2b",
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
                            g2t2b = val;
                          },
                        ),  
                      ),
                    ),
                    ],
                  ),
                ),
                GestureDetector(onTap: (){
                    calcu2(g1t1a, g1t1b, g1t2a, g1t2b, g2t1a, g2t1b, g2t2a, g2t2b);
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
                height: 320,
                child: Stack(
                  children: <Widget>[
                        Positioned(
                      bottom: 10,
                      right: 235,
                      width: 100,
                      height: 290,
                      
                      child: Container(
                
                          child: 
                          Text("Genotype", style: TextStyle(color:  Color(0xFF32464B), fontSize: 15, fontFamily: 'Roboto', fontWeight: FontWeight.w700),)
                            ),
                      ),
                      Positioned(
                      bottom: 10,
                      right: 120,
                      width: 100,
                      height: 290,
                      
                      child: Container(
                   
                          child: 
                          Text("Count", style: TextStyle(color:  Color(0xFF32464B), fontSize: 15, fontFamily: 'Roboto', fontWeight: FontWeight.w700),)
                            ),
                      ),

                      Positioned(
                      bottom: 10,
                      right: 17,
                      width: 110,
                      height: 290,
                      
                      child: Container(
           
                          child: 
                          Text("Percentage(%)", style: TextStyle(color:  Color(0xFF32464B), fontSize: 15, fontFamily: 'Roboto', fontWeight: FontWeight.w700),)
                            ),
                      ),

                       Positioned(
                      bottom: 0,
                      right: 260,
                      width: 70,
                      height: 280,
                      
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
                      right: 135,
                      width: 70,
                      height: 280,
                      
                      child: Container(
                      
                          child: new ListView.builder(
                          itemCount: counteduni.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                          return new Text(counteduni[index], style: TextStyle(color:  Color(0xFF32464B), fontSize: 25, fontFamily: 'Roboto', fontWeight: FontWeight.w700),);
                   },
                 ),
                        ),
                      ),
                      


                       Positioned(
                      bottom: 0,
                      right: 40,
                      width: 70,
                      height: 280,
                      
                      child: Container(
                         
                          child: new ListView.builder(
                          itemCount: genopercent.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                          return new Text(genopercent[index].toString(), style: TextStyle(color:  Color(0xFF32464B), fontSize: 25, fontFamily: 'Roboto', fontWeight: FontWeight.w700),);
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
                      right: 235,
                      width: 100,
                      height: 160,
                      
                      child: Container(
           
                          child: 
                          Text("Phenotype", style: TextStyle(color:  Color(0xFF32464B), fontSize: 15, fontFamily: 'Roboto', fontWeight: FontWeight.w700),)
                            ),
                      ),

                       Positioned(
                      bottom: 10,
                      right: 120,
                      width: 100,
                      height: 160,
                      
                      child: Container(
                   
                          child: 
                          Text("Count", style: TextStyle(color:  Color(0xFF32464B), fontSize: 15, fontFamily: 'Roboto', fontWeight: FontWeight.w700),)
                            ),
                      ),

                      Positioned(
                      bottom: 10,
                      right: 27,
                      width: 100,
                      height: 160,
                      
                      child: Container(
           
                          child: 
                          Text("Percentage(%)", style: TextStyle(color:  Color(0xFF32464B), fontSize: 15, fontFamily: 'Roboto', fontWeight: FontWeight.w700),)
                            ),
                      ),
                      Positioned(
                      bottom: 0,
                      right: 250,
                      width: 70,
                      height: 150,
                      
                      child: Container(
                   
                          child: new ListView.builder(
                          itemCount: countedpheno.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                          return new Text(countedpheno[index], style: TextStyle(color:  Color(0xFF32464B), fontSize: 25, fontFamily: 'Roboto', fontWeight: FontWeight.w700),);
                   },
                 ),
                        ),
                      ),
                      
                      
                      Positioned(
                      bottom: 0,
                      right: 137,
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
                      

                       Positioned(
                      bottom: 0,
                      right: 40,
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