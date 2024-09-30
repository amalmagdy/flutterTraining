import 'package:flutter/material.dart';
import 'package:my_app/Grocery/view_model/app_colors.dart';

import '../model/product.dart';

class ProductWidget extends StatelessWidget {
  Product product;

   ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      padding: EdgeInsets.all(7),
      margin: EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border:Border.all(width: 1,color: AppColors.borderColor)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex:3,
            child: Image.asset(product.imgUrl??'',)
          
          ,),
          Expanded(
              flex:1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Text(product.name??'',style: TextStyle(color:AppColors.textColor ,fontWeight: FontWeight.bold,fontSize: 16),)),
              Text("${product.quantity}, priceeg",style: TextStyle(color: AppColors.textColorGrey,fontSize: 14),),

            ],
          )),

          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text("${product.price}",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                FloatingActionButton(onPressed: (){},
                  backgroundColor: AppColors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  mini: true,
                child: Icon(Icons.add,color: Colors.white),)
              ],))
        
        ],

      ),
    );
  }
}
