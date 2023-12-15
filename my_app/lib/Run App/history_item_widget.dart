import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HistoryItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),

      decoration: BoxDecoration(
        color: Color(0xff4e3952),
          borderRadius: BorderRadius.all( Radius.circular(10)),
        border: Border.all(
          color: Color(0xff54455c)
        )

      ),


      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween
              ,children: [
              Text("27 May",style: TextStyle(color: Color(0xff7B61FF),fontSize: 16,fontWeight: FontWeight.w500),),
              SizedBox(height: 10,),
              Text("100 pt . 12 km . 1222 Kcal",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),


            ],),
          ),


          Row(
            children: [
              Text("10,134 ",style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w700),),
              Text("steps ",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),


            ],
          )
       ],
      ),
    );

  }
}







