import 'package:flutter/material.dart';
import 'package:my_app/ButtonItem.dart';

void main() {
  runApp(
      MaterialApp(home: Scaffold(
        

        body:

      Container
            (

            width: double.infinity,
            //child: Image.asset('assets/images/first.png',fit: BoxFit.fill,),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/first.png"),
                fit: BoxFit.cover,
              ),
          ),
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    //SizedBox(height: 50,),
                    Image.asset('assets/images/Vector.png',fit: BoxFit.fill,),
                SizedBox(height: 7,),
                Text("Welcome",style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600, color: Colors.white,fontFamily:"Gilroy"),),
               Text("To our Store",style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600, color: Colors.white,)),
               SizedBox(height: 7,),
                    Text("get your groceries as fast as one hour",style: TextStyle(fontSize: 16, color: Color(0xb2FCFCFC),),),

                    SizedBox(height: 28,),

                    SizedBox(
                      width: double.infinity,
                      height: 70,
                      child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:const Color(0xff53B175),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            )
                          ),
                          child: Text("Get Started" , style: TextStyle(fontSize: 18),),

                      ),
                    ),

                    SizedBox(height: 70,)
                  ] ,),
            )

      )

      )
      )
  );
}

