import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [

          Column(children: [
            Text("EVANO",style: TextStyle(fontSize: 50),),
            Text("Every Day", style: TextStyle(fontStyle: FontStyle.italic),),],
          ),

          Image.network('https://picsum.photos/250?image=9',fit: BoxFit.fitWidth),
        //  Container(
        //    alignment: Alignment.center,
        // height: 80,
        // width: 250,
        // child:
               Center(

                 child:Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pharetra faucibus porta. Mauris tincidunt, tortor a pretium accumsan, enim velit aliquet est, et bibendum velit felis id ex. In hac habitasse platea dictumst. Donec pharetra neque a consectetur condimentum. Sed et ex tincidunt, auctor diam non, commodo felis. In volutpat felis quis urna eleifend, a convallis felis viverra. In dictum tellus nisl, ac sagittis tellus ornare sed. Nam mattis nibh nec lacus placerat condimentum. Nam sed quam purus. In in nisi velit. Ut imperdiet.",
                    style: TextStyle(color: Colors.grey , ) ,textAlign: TextAlign.center,
               ),
              )






        ],
      ),

      drawer: Drawer(
        backgroundColor: Colors.indigo,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                //con(Icons.person,color: Colors.white, size: 40,),
                
                SizedBox(height: 50,width:50 ,child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWomPds9w5emH_C6RY8xF7KRCJe6I5zwVsuw&usqp=CAU",fit: BoxFit.fill,),),
                //  Image.network(src)
                Column(children: [Text("Amal Magdy",
                  style: TextStyle(color: Colors.white,fontSize: 25),)
                  ,Text("amal@abc.com" ,style: TextStyle(color: Colors.white,fontSize: 17),)],),
                Icon(Icons.add_circle_outline_sharp ,color: Colors.white, size: 40,)
              ],
            ),
            SizedBox(height: 40,),

            Row(

              children: [
                SizedBox(width: 20,),
              Icon(Icons.people_alt_rounded,color: Colors.white, size: 30,),
                SizedBox(width: 20,),
                Text("people",style:TextStyle(color: Colors.white,fontSize: 17))
            ],),
            SizedBox(height: 35,),
            Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.favorite,color: Colors.white, size: 30,),
                SizedBox(width: 20,),
                Text("favorites",style:TextStyle(color: Colors.white,fontSize: 17))
              ],),
            SizedBox(height: 35,),
            Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.workspaces_outlined,color: Colors.white, size: 30,),
                SizedBox(width: 20,),
                Text("workflow",style:TextStyle(color: Colors.white,fontSize: 17))
              ],),
            SizedBox(height: 35,),
            Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.update,color: Colors.white, size: 30,),
                SizedBox(width: 20,),
                Text("Updates",style:TextStyle(color: Colors.white,fontSize: 17))
              ],),
            SizedBox(height: 35,),
            Divider(color: Colors.white,),
            SizedBox(height: 35,),
            Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.account_tree,color: Colors.white, size: 30,),
                SizedBox(width: 20,),
                Text("Plugins",style:TextStyle(color: Colors.white,fontSize: 17))
              ],),
            SizedBox(height: 35,),
            Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.notifications_active_sharp,color: Colors.white, size: 30,),
                SizedBox(width: 20,),
                Text("Notifications",style:TextStyle(color: Colors.white,fontSize: 17))
              ],)
          ],
        ),
      ),
    ),

    )
  );
}

