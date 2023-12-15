import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/Run%20App/main_frame_widget.dart';
import 'package:my_app/Run App/share_get_frame_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'history_item_widget.dart';


void main() {
  runApp(
      MaterialApp(home: Scaffold(
        backgroundColor: Color(0xff433749),
        appBar: AppBar(

          backgroundColor: Color(0xff6654ce),
          // Color(0xff28333F),
        title: Row(
          children: [
            Icon(Icons.view_headline_sharp,color: Colors.white,size: 40,),
            SizedBox(width: 10,),
            CircleAvatar(radius:25,backgroundImage: Image.asset("assets/images/profile.jpg").image,),
            SizedBox(width: 10,),
            Column(children: [
            Text("Hello!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
            Text("Amal",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),)

          ],)],
        ),
           actions: [
             SizedBox(width: 20,),
             Image.asset("assets/images/direct-normal.png"),
             Image.asset("assets/images/sms-notification.png"),
           ],
        elevation: 0, bottomOpacity: 0.0,),

         body:Column(
           children: [
             Container(
               width: double.infinity,
               padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                 color: Color(0xff6a58d8),
                   gradient: LinearGradient(
                     begin: Alignment.topCenter,
                     end: Alignment.bottomCenter,
                     colors: <Color>[
                       Color(0xff6654ce),
                       Color(0xff494382)
                     ], // Gradient from https://learnui.design/tools/gradient-generator.html
                     //tileMode: TileMode.mirror,
                     stops: [
                       0.1,
                       0.9,
                     ],
                   )
               ),
              // height: 340,
               child: Column(
                 // mainAxisAlignment: MainAxisAlignment.,
                 children: [

                    Row(
                      children: [
                        Expanded(
                          child: Column(

                            children: [

                              Row(
                                children: [
                                  Text("14000 /",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xffCDCDCD)),),
                                  Text("15000 ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Color(0xffffffff)),),
                                  Text("steps ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xffCDCDCD)),),
                                  Spacer(),
                                  Text("Level 1",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.w600,fontSize: 24),)

                                ],
                              ),
                              LinearPercentIndicator(
                               //width: double.infinity,
                               lineHeight: 14.0,
                               percent: 0.7,
                               backgroundColor: Color(0xfff4f4f4),
                                 barRadius: Radius.circular(10),
                                 linearGradient: LinearGradient(
                                   begin: Alignment.centerLeft,
                                   end: Alignment.centerRight,
                                   colors: <Color>[
                                     Color(0xffb077f3),
                                     Color(0xff57c877)
                                   ], // Gradient from https://learnui.design/tools/gradient-generator.html
                                   //tileMode: TileMode.mirror,
                                   stops: [
                                     0.1,
                                     0.9,
                                   ],
                                 )
                   ),
                            ],
                          ),
                        ),
SizedBox(width: 7,),

        CircleAvatar(radius:30,backgroundImage: Image.asset("assets/images/start.png").image,backgroundColor: Color(0xff9a8ea0),)
                      ],

                    ),


                   MainFrame(),
                 //  SizedBox(height: 12,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       SubFrame(),
                       SubFrame()
                     ],
                   )
                 ],
               ),
             ),

             ShareGetFrame(),

             Container(
               padding: EdgeInsets.all(10),
               child: Row(
                 children: [
                   Text("History",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                   Spacer(),
                   Text("See All",style: TextStyle(color: Colors.purpleAccent,fontSize: 18,fontWeight: FontWeight.w500),),

                 ],
               ),
             )
,
        Expanded(
          child: ListView.separated(
            itemCount: 3,

            itemBuilder: (context, position) {
              return
                HistoryItemWidget ();
            },
            separatorBuilder: (context,index){return SizedBox(height: 5,);},
          )
            // HistoryItemWidget()
        ),
        ]
         )
,extendBody: true,

          bottomNavigationBar: 
          
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(20) ,
            child: BottomNavigationBar(
            currentIndex: 0,

        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.house,color: Color(0xffcdcdcd),),label: "Home" ,backgroundColor:Color(0xb3303c52),activeIcon: Icon(FontAwesomeIcons.house,color: Colors.purple,)),
          BottomNavigationBarItem(icon: Icon(Icons.person , color: Color(0xffcdcdcd),size: 35,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite , color: Color(0xffcdcdcd),size: 35,),label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_rounded , color: Color(0xffcdcdcd),size: 35,),label: "")

        ],
      ),
          ),
      ),

      )

  );
}

