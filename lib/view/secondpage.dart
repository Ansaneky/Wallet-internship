import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:internship3/view/piechart.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.sizeOf(context).height;
    var width=MediaQuery.sizeOf(context).width;
    return Scaffold(body: SingleChildScrollView(
      child: Center(child: Stack(
       
        children: [
          BackdropFilter(filter:ImageFilter.blur(
            sigmaX: 5
            ,sigmaY: 5
          ))
        ,Container(height: height*1,width: width*1,decoration: BoxDecoration(color: Colors.white,gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,colors:[Colors.grey.withOpacity(0.7),Colors.white.withOpacity(0.5)])),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Container(height: height*1,width: width*1,color: Colors.transparent,child:Column(children: [
                          SizedBox(height:35,),
                          Container(height: height*0.1,width: width*1,child: ListTile(title: Text('Overview',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 40),),trailing: Text('Cancel',style: TextStyle(fontSize:14,color: Colors.black),),),)
                          ,Container(height: height*0.07,width: width*1,child: Padding(
                            padding: const EdgeInsets.only(left:20),
                            child: Text('Accounts',style: TextStyle(fontSize:23,color: Colors.black),),
                          ),)
                          
                          ,Container(height: height*0.2,width: width*1,color: Colors.transparent,child: Row(children: [
                            SizedBox(width:15,),
                            Container(height: height*0.17,width: width*0.45,decoration: BoxDecoration(boxShadow:
                                 [BoxShadow(color: Color.fromARGB(255, 70, 13, 239),
                                       offset: Offset(0,6),
                                        blurRadius: 6.0,
                                        spreadRadius: 0.0,)], 
                                        color: Color.fromARGB(255, 68, 9, 206),borderRadius:BorderRadius.circular(10)),child: Column(children: [
                                          
                                        Padding(
                                          padding: const EdgeInsets.only(right:100,top:20),
                                          child: Text('Cash',style: TextStyle(color: Colors.white,fontSize:18),),
                                        ),
                                        SizedBox(height:56,),
                                        Text('35.17 rs',style: TextStyle(color: Colors.white,fontSize: 21),)],),)
                                           ,SizedBox(width:14,)
                                        ,Container(height: height*0.17,width: width*0.45,decoration: BoxDecoration(boxShadow:
                                          [BoxShadow(color: Color.fromARGB(255, 216, 50, 128),
                                           offset: Offset(0,6),
                                          blurRadius: 6.0,
                                           spreadRadius: 0.0,)], 
                                           color: Color.fromARGB(255, 215, 56, 183),borderRadius:BorderRadius.circular(10)),child: Column(children: [
                                          
                                        Padding(
                                          padding: const EdgeInsets.only(right:60,top:20),
                                          child: Text('Credit Debt',style: TextStyle(color: Colors.white,fontSize:18),),
                                        ),
                                        SizedBox(height:58,),
                                        Text('-4320.0 rs',style: TextStyle(color: Colors.white,fontSize: 21),)],),)
                        
                                        
                          ],),)
                                              ,Container(height: height*0.07,width: width*1,child: Row(children: [
                                                SizedBox(width: 15,),
                                                Text('Spending',style:TextStyle(fontSize:25,color: Colors.black),),
                                                SizedBox(width:15,)
                                              ,Text('July 2023',style:TextStyle(fontSize:15,color: Colors.grey),)],),)
                        
                                            ,Container(height: height*0.25,width: width*0.9,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(11)),child:Row(children: [
                                              SizedBox(width:10,),
                                              Container(height: height*0.2,width: width*0.44,color: Colors.transparent,child:Mypiechart(),),
                                              Container(height: height*0.2,width: width*0.1,color:Colors.transparent,child:Column(children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top:46,),
                                                  child: CircleAvatar(radius:8,backgroundColor:Color.fromARGB(255, 227, 39, 189),),
                                                ),
                                                 Padding(
                                                   padding: const EdgeInsets.only(top:10,),
                                                   child: CircleAvatar(radius:8,backgroundColor: Colors.purple),
                                                 ),
                                                   Padding(
                                                   padding: const EdgeInsets.only(top:10,),
                                                   child: CircleAvatar(radius:8,backgroundColor: Color.fromARGB(255, 48, 240, 211)),
                                                 ),
                                                   Padding(
                                                   padding: const EdgeInsets.only(top:10,),
                                                   child: CircleAvatar(radius:8,backgroundColor: Color.fromARGB(255, 225, 214, 58) ),
                                                 )
                                                
                                              ],),)
                                              ,Container(height:height*0.2,width:width*0.3,color:Colors.transparent,child: Column(children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top:43),
                                                  child: Text('Home',style: TextStyle(color: Colors.grey,fontSize:10),),
                                                ),
                                                  Padding(
                                                  padding: const EdgeInsets.only(top:15),
                                                  child: Text('Food & Drink',style: TextStyle(color: Colors.grey,fontSize:10),),
                                                )
                                                ,  Padding(
                                                  padding: const EdgeInsets.only(top:15),
                                                  child: Text('Hotel & Restaurant',style: TextStyle(color: Colors.grey,fontSize:10),),
                                                )
                                                  ,Padding(
                                                  padding: const EdgeInsets.only(top:10),
                                                  child: Text('Travelling',style: TextStyle(color: Colors.grey,fontSize:10),),
                                                )
                                              ],),)
                                            ],),)
                                            ,Container(height: height*0.07,width: width*1,child: Row(children: [
                                                SizedBox(width: 15,),
                                                Text('Budgets',style:TextStyle(fontSize:25,color: Colors.black),),
                                                SizedBox(width:15,)
                                              ,Text('July',style:TextStyle(fontSize:15,color: Colors.grey),)],),)
                                              ,Container(height: height*0.07,width: width*0.9,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(11)),
                                              child: LinearPercentIndicator(
                                                animation: true,
                                                lineHeight:20,
                                                percent:0.8,
                                                backgroundColor: Colors.blueGrey,
                                                center: const Text('80%',style: TextStyle(color: Colors.white),),
                                                progressColor:Color.fromARGB(255, 191, 118, 203),
                                              ),)
                                               ,Container(height: height*0.04,width: width*1,child: Row(children: [
                                                SizedBox(width: 15,),
                                                Text('Cash  flow',style:TextStyle(fontSize:25,color: Colors.black),),
                                      ],),)
                               ,Container(height: height*0.07,width: width*0.9,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(11)),child: Row(children: [
                                CircleAvatar(radius:28,backgroundImage: NetworkImage('https://i.pinimg.com/originals/22/f5/4b/22f54b4a2ad7a430ee104e41aea07aee.gif'),child: Text('80%',style: TextStyle(color: Colors.white),),),
                                         Container(height: height*0.07,width: width*0.3,color: Colors.transparent,child: Column(children: [
                                          SizedBox(height:10,),
                                          Text('Earned',style: TextStyle(fontSize:12,color: Colors.grey),),
                                           Text('200.0 rs',style: TextStyle(fontSize:15,color: Colors.black),)
                                         ],),)
                               ],),)   
                               
                        
                        ],),)
                      ],),
                    ),
        )
      ],),),
    ),);
  }
}