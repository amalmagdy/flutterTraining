import 'package:flutter/material.dart';

class ShareGetFrame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.only(left: 10,top: 10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all( Radius.circular(25)),
          //color: Color(0xff6f63c4),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              Color(0xff85acfb),
              Color(0xffce6aab)
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            //tileMode: TileMode.mirror,
            stops: [
              0.1,
              0.7,
            ],
          )
      ),

      child: Row(
        children: [

          Expanded(
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Share & Get",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
              // Spacer(),
              Text("Get 2x point for every steps, only valid for today",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 12),),


            ],),
          )
          ,

          Image.asset("assets/images/group.png",fit: BoxFit.cover,)
        ],
      ),
    );

  }
}
