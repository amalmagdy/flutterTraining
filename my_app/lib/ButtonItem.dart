import 'package:flutter/material.dart';



class ButtonItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){},
      child: Container(
        padding: EdgeInsetsDirectional.only(start: 20,end: 20,top: 10,bottom: 10),
        margin: EdgeInsetsDirectional.only(top: 10,bottom: 10),
        decoration: BoxDecoration(
          // border: Border.all()     ,
          borderRadius:  BorderRadius.all(Radius.elliptical(20,20)),
          color: Colors.grey,

        ),

        child: Row(
          children: [
            Icon(Icons.person,color: Colors.white,),
            SizedBox(width: 10,),
            Expanded(
              child: Text("privacy",
                style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            Icon(Icons.arrow_forward_ios,color: Colors.white,),
          ],
        ),),

    );
  }
}

