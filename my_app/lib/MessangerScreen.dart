import 'package:flutter/material.dart';
import 'package:my_app/ButtonItem.dart';

void main() {
  runApp(
      MaterialApp(home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black,

          leading:  AvatarWithStatus(
            // image:  NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWomPds9w5emH_C6RY8xF7KRCJe6I5zwVsuw&usqp=CAU")
              color: Colors.green)
          ,
          title:  Text(
            "chats",
            style: TextStyle(color: Colors.white,fontSize: 40),
          ),
          actions: [CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.camera_alt_outlined, color: Colors.white,),)
            ,
            SizedBox(width: 8,),
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.edit, color: Colors.white,),)],),
        body: Center(

          //color: Colors.black87,
          child: Container(
            color: Colors.black,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsetsDirectional.all(7),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.elliptical(25,25)),
                        ),
                        prefixIcon: Icon(Icons.search),
                        fillColor: Colors.grey,
                        filled: true
                    ),
                  ),

                  SizedBox(height: 14,),
                  SizedBox(
                    height: 70,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, position) {
                          return AvatarWithStatus(
                            // image:  NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWomPds9w5emH_C6RY8xF7KRCJe6I5zwVsuw&usqp=CAU")
                            color: Colors.green,);},
                        separatorBuilder:(context,index){return SizedBox();},
                        itemCount: 10),
                  ),
                  SizedBox(height: 12,),
                  Expanded(
                    child: ListView.separated(
                      itemCount: 18,

                      itemBuilder: (context, position) {
                        return
                          ChatItem ();
                      },
                      separatorBuilder: (context,index){return SizedBox(height: 17,);},
                    ),
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

class ChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [AvatarWithStatus(
        //  image:  NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWomPds9w5emH_C6RY8xF7KRCJe6I5zwVsuw&usqp=CAU")
        color: Colors.green, raduis: 30,),
        SizedBox(width: 12,),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start
          ,children: [
          Text("Ahhmed Mohammed",style: TextStyle(color: Colors.white,fontSize: 18),),
          SizedBox(height: 7,),
          Text("welcome to flutter",style: TextStyle(color: Colors.white,fontSize: 18),)

        ],)),
        Text("11:30 AM",style: TextStyle(color: Colors.grey),)
      ],
    );

  }
}

class AvatarWithStatus extends StatelessWidget {
  ImageProvider? image  ;
  //= NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC8kiSH5ZSAcVoj3tAQQDoP_ux0sSricMyUg&usqp=CAU");
  static const ImageProvider defaultImg = NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC8kiSH5ZSAcVoj3tAQQDoP_ux0sSricMyUg&usqp=CAU");
  var color;
  static const defaultColor= Colors.transparent;
  double? raduis;


  AvatarWithStatus({
    super.key,
    ImageProvider image= defaultImg, Color  color=defaultColor,this.raduis})
  {
    this.image = image;
    this.color=color;
  }





  @override
  Widget build(BuildContext context) {



    return Stack(
        children: [//SizedBox(width: 90,height: 90,
          CircleAvatar(
            backgroundImage : image,
            radius: this.raduis??45,
          ),

          Positioned(
              bottom: 2,right: 2,
              child: SizedBox(
                width: 20,height: 20,
                child: CircleAvatar(backgroundColor: color,
                ),
              ))]
    );
  }
}

