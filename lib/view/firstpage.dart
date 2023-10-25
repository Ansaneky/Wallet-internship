import 'dart:ui';

import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.sizeOf(context).height;
     var width=MediaQuery.sizeOf(context).width;

     Widget profilecard(String ppic,String pname){
      return Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Container(height: height*0.13,width:width*0.26,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
               child: Column(children: [
                SizedBox(height:16,)
              ,CircleAvatar(radius:30,backgroundImage:NetworkImage('$ppic'))
                ,SizedBox(height: 02,)
               ,Text('$pname',style: TextStyle(fontWeight: FontWeight.bold,fontSize:13,color: Colors.grey))
              ],),),
      );

     }

     Widget sentmoneycard(String img,String tt,String st,String amn){
      return Container(height: height*0.1,width: width*1,
      decoration: BoxDecoration(color: Colors.transparent,   border: Border.all(color:Colors.grey,width:0.4))
                   
         ,child: Row(children: [
          SizedBox(width:10,)
         ,CircleAvatar(radius:25,
          backgroundImage: NetworkImage('$img'),),
          SizedBox(width:15,),
          Container(height: height*0.06,width: width*0.4,color: Colors.transparent,
          child: Column(children: [
          Text('$tt'),Text('$st',style: TextStyle(color: Colors.grey),)
        ],),)
        ,Spacer()
        // ListTile(title: Text('$tt'),subtitle: Text('$st'),)
        ,Text('$amn')
      ],),);
     }

    return Scaffold(
    
      body: SingleChildScrollView(
        child: Center(child: Stack(children: [
          BackdropFilter(filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5
          ))
          ,Container(height:height*1,width: width*1,child: Column(children: [
            Container(height: height*0.4,width: width*1,decoration: BoxDecoration(color: Colors.black,
            boxShadow:[BoxShadow(
               color: Colors.grey,
                  offset: Offset(0,6),
                  blurRadius: 6.0,
                  spreadRadius: 0.0,
            )],
            image: DecorationImage(image: NetworkImage('https://i.pinimg.com/564x/8c/a2/2d/8ca22d4d723cffcdcdfed8747a149735.jpg'),fit: BoxFit.cover)),)
          ],),)
        ,SingleChildScrollView(
          child: Container(height: height*1,width: width*1,decoration: BoxDecoration(gradient: LinearGradient(
            begin: Alignment.topLeft,end: Alignment.bottomRight,
            colors:[Colors.black.withOpacity(0.6),Colors.white.withOpacity(0.2)])),
            child: Column(children: [
             Container(height: height*0.1,width: width*1,color: Colors.transparent,child:ListTile(leading: IconButton(onPressed: (){}, icon:Icon(Icons.more_horiz,size:50,color: Colors.white,)),trailing: IconButton(onPressed: (){}, icon:Icon(Icons.notifications,size:36,color: Colors.white)),),)
             ,Container(height: height*0.16,width: width*0.97,color: Colors.transparent,child: ListTile(title: Text('Wallet',style: TextStyle(color: Colors.white,fontSize: 36),),trailing:IconButton(onPressed: (){}, icon:Icon(Icons.add,size:36,color: Colors.white,)),),)
             ,Padding(
               padding: const EdgeInsets.only(left:6),
               child: Container(height: height*0.21,width: width*0.88,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
               child: Column(children: [Container(height: height*0.07,width: width*1,color: Colors.transparent,child: Row(children: [
                SizedBox(width: 10,),
                Text('Card no.',style: TextStyle(color: Colors.grey,fontSize: 14),),
                SizedBox(width: 218,),
                Container(height: height*0.032,width:width*0.12,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://i.pinimg.com/736x/ab/47/34/ab4734b02affb4b416ccb28c1ba83ed8.jpg'),fit: BoxFit.cover)),)
               ],),)
               ,Container(height: height*0.07,width: width*1,color: Colors.transparent,child: Padding(
                 padding: const EdgeInsets.only(left:9.7),
                 child: Text('**** **** ****  9988',style: TextStyle(fontWeight: FontWeight.bold,fontSize:22,color: Colors.black),),
               ),)
              
               ,Container(height: height*0.07,width: width*1,child:Padding(
                 padding: const EdgeInsets.only(left:18),
                 child: Text('Expires 06/23',style: TextStyle(fontWeight: FontWeight.bold,fontSize:18,color: Colors.grey),),
               ),)
               ],),
               ),
             )
              
             ,Container(height: height*0.07,width: width*1,child: ListTile(title: Padding(
               padding: const EdgeInsets.only(left:10),
               child: Text('Send Money',style: TextStyle(fontWeight: FontWeight.bold,fontSize:15,color: Colors.black)),
             ),trailing: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_forward_ios,color: Colors.grey,)),),)
             ,Container(height: height*0.14,width: width*1,color: Colors.transparent,child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child: Row(children: [
                SizedBox(width:20,)
                ,Container(height: height*0.13,width:width*0.26,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                   child: Column(children: [
                    SizedBox(height:30,)
                  ,CircleAvatar(radius:20,backgroundColor: Colors.blue,child: Icon(Icons.add,color: Colors.white,),)
                    ,SizedBox(height: 07,)
                   ,Text('Add money',style: TextStyle(fontWeight: FontWeight.bold,fontSize:13,color: Colors.grey))
                  ],),)
               ,profilecard('https://i.pinimg.com/564x/28/5e/6e/285e6e3c1053f9d9f945cb64483845ff.jpg', 'Nezuko')
                ,profilecard('https://i.pinimg.com/564x/a2/ed/05/a2ed05f65f1fddcc74a85cae0f3183d4.jpg', 'Dazai')
                 ,profilecard('https://i.pinimg.com/564x/80/be/e8/80bee867c6d18b62c25ec364302d54a8.jpg', 'Denji')
                  ,profilecard('https://i.pinimg.com/564x/4a/92/db/4a92db2b96386cf27e7f45e3584e291e.jpg', 'Eren')
                   ,profilecard('https://i.pinimg.com/564x/32/88/0f/32880f9913ff41c36ee4a59776cd9d1d.jpg', 'Gabimaru')
               ],),
             ),)
             ,Container(height: height*0.07,width: width*1,child: ListTile(title: Padding(
               padding: const EdgeInsets.only(left:10),
               child: Row(
                 children: [
                   Text('All',style: TextStyle(fontWeight: FontWeight.bold,fontSize:15,color: Colors.black)),
                   SizedBox(width: 10,)
                    ,Text('Received',style: TextStyle(fontWeight: FontWeight.bold,fontSize:15,color: Colors.grey)),
                       SizedBox(width: 10,),
                   Text('Sent',style: TextStyle(fontWeight: FontWeight.bold,fontSize:15,color: Colors.grey)),
                 ],
               ),
             ),trailing: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_forward_ios,color: Colors.grey,)),),)
              
             ,Container(height: height*0.05,width: width*1,child: Padding(
               padding: const EdgeInsets.only(left:25.4),
               child: Text('10 act 2023',style: TextStyle(fontSize:15,color: Colors.grey),),
             ),)
           ,Container(height: height*0.2,width: width*1,color: Colors.transparent,child:Column(children: [
                  sentmoneycard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS689Bg5Hv5T1W7oz0VlAIpd1s303TXpSbPFYykfFryOpCwDkFmD-9VGI55c3S9l31ous4&usqp=CAU', 'New Restaurant', '07-23      21:09','-230.0 rs')
                  ,sentmoneycard('https://i.pinimg.com/564x/13/15/da/1315da53b2e979d578ef64cbe2b39d3e.jpg', 'Transfer to Nezuko', '07-23  21:09','-25.0 rs')
           ],),)
            ],),
            ),
        )
        
        ],),),
      ),
    );
  }
}