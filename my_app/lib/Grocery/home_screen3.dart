import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/Grocery/componenets/product_widget.dart';
import 'package:my_app/Grocery/view_model/app_colors.dart';

import 'model/product.dart';





void main() {
  runApp(
    /////
      MaterialApp(home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(12),

            children: [
              Image.asset('assets/images/Vector.png',color: Colors.deepOrange,height: 25,),
              SizedBox(height: 6,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.location_on_rounded)
              ,Text("Dhaka, Banassre",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.textColor),)
              ],
                 ),
              SizedBox(height: 12,),

              SearchBar(hintText: "search",leading: Icon(Icons.search),),
              SizedBox(height: 12,),
              Image.asset("assets/images/banner.png"),
              Column(
                children: [
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Exclsive offers",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: AppColors.textColor),),
                      TextButton(onPressed: (){}, child: Text("See all",style: TextStyle(color: Colors.green,fontSize: 18),))],),
                  Container(
                    height: 220,
                    child: ListView.builder(

                      scrollDirection: Axis.horizontal,
                        itemCount:productList.length,
                        itemBuilder: (context, position) {return ProductWidget(product: productList[position],);}),
                  ),
                ],
              ),

              Column(
                children: [
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Beverage",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: AppColors.textColor),),
                      TextButton(onPressed: (){}, child: Text("See all",style: TextStyle(color: Colors.green,fontSize: 18),))],),
                  Container(
                    height: 220,
                    child: ListView.builder(

                        scrollDirection: Axis.horizontal,
                        itemCount:productList.length,
                        itemBuilder: (context, position) {return ProductWidget(product: bevergeList[position],);}),
                  ),
                ],
              )


            ],
          ),
        ),

      ),

      )

  );
}

