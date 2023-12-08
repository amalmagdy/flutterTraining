import 'package:flutter/material.dart';
import 'package:my_app/ButtonItem.dart';

void main() {
  runApp(
    MaterialApp(home: Scaffold(

      body: Center(

        //color: Colors.black87,
        child: Container(
          color: Colors.black,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsetsDirectional.all(20),
            child: Column(
              //padding: EdgeInsetsDirectional.all(15),
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [SizedBox(width: 90,height: 90,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWomPds9w5emH_C6RY8xF7KRCJe6I5zwVsuw&usqp=CAU"),

             ),
                  ),
                  Positioned(
                      bottom: 2,right: 2,
                      child: SizedBox(
                    width: 20,height: 20,
                    child: CircleAvatar(backgroundColor: Colors.amber,
                    ),
                  ))]
                ),
                SizedBox(height: 12,),
                Text(
                  "Amal Magdi",
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
                SizedBox(height: 12,),
                Text(
                  "Amalmagdi@gmail.com",
                  style: TextStyle(color: Colors.grey,fontSize: 16),
                ),
                SizedBox(height: 12,),
                MaterialButton(onPressed: (){},
                  child: Container(
                    padding: EdgeInsetsDirectional.only(start: 20,end: 20,top: 10,bottom: 10),
                    decoration: BoxDecoration(
                    // border: Border.all()     ,
                      borderRadius:  BorderRadius.all(Radius.elliptical(20,20)),
                      color: Colors.amber,

                    ),

                  child: Text("update to pro",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 24),),),

                ),
                SizedBox(height: 30,),

//                 MaterialButton(onPressed: (){},
//                   child: Container(
//                     padding: EdgeInsetsDirectional.only(start: 20,end: 20,top: 10,bottom: 10),
//                     margin: EdgeInsetsDirectional.only(top: 10,bottom: 10),
//                     decoration: BoxDecoration(
//                       // border: Border.all()     ,
//                       borderRadius:  BorderRadius.all(Radius.elliptical(20,20)),
//                       color: Colors.grey,
//
//                     ),
//
//                     child: Row(
//                       children: [
//                         Icon(Icons.person,color: Colors.white,),
//                         SizedBox(width: 10,),
//                         Expanded(
//                           child: Text("privacy",
//                             style: TextStyle(color: Colors.white,fontSize: 20),),
//                         ),
//                         Icon(Icons.arrow_forward_ios,color: Colors.white,),
//                       ],
//                     ),),
//
//                 )
//                 ,
//                 MaterialButton(onPressed: (){},
//                   child: Container(
//                     padding: EdgeInsetsDirectional.only(start: 20,end: 20,top: 10,bottom: 10),
//                     margin: EdgeInsetsDirectional.only(top: 10,bottom: 10),
//                     decoration: BoxDecoration(
//                       // border: Border.all()     ,
//                       borderRadius:  BorderRadius.all(Radius.elliptical(20,20)),
//                       color: Colors.grey,
//
//                     ),
//
//                     child: Row(
//                       children: [
//                         Icon(Icons.person,color: Colors.white,),
//                         SizedBox(width: 10,),
//                         Expanded(
//                           child: Text("privacy",
//                             style: TextStyle(color: Colors.white,fontSize: 20),),
//                         ),
//                         Icon(Icons.arrow_forward_ios,color: Colors.white,),
//                       ],
//                     ),)
// ,
//
//
//
//                 ),



                ListView.builder(
                  shrinkWrap:true,
                  itemCount: 6,
                  itemBuilder: (context, position) {
                    return
                      ButtonItem();
                  },
                ),

              ],


      ),
          ),
        ),
      ),

    )
    )
  );
}

