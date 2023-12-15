import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MainFrame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all( Radius.circular(25)),
          color: Color(0xff6f63c4)
      ),

      child: Row(
        children: [AvatarWithStatus(
          //  image:  NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWomPds9w5emH_C6RY8xF7KRCJe6I5zwVsuw&usqp=CAU")
          color: Colors.green, raduis: 35,),
          SizedBox(width: 15,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start
            ,children: [
            Text("26 May",style: TextStyle(color: Color(0xffCDCDCD),fontSize: 16),),
            Text("Today",style: TextStyle(color: Colors.green,fontSize: 16),),
            Text("5:13:00",style: TextStyle(color: Color(0xffCDCDCD),fontSize: 16),)

          ],)),
          // Text("11:30 AM",style: TextStyle(color: Colors.grey),),

          CircularPercentIndicator(
            radius: 40,
            lineWidth: 3.0,
            animation: true,
            percent: 0.4,
            reverse: true,
            center: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.directions_run,color: Color(0xfff3f3f9),),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("2355",style: TextStyle(color: Color(0xfff3f3f9)),),
                      Divider(color: Color(0xfff3f3f9),height: 20,),
                     // Icon(Icons.shape_line_sharp,color: Colors.grey,),
                      Text("5000",style: TextStyle(color: Colors.green),)
                    ],
                  ),
                ),

                SizedBox(width: 7,)],
            ),

            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.purple,
          )
        ],
      ),
    );

  }
}

class AvatarWithStatus extends StatelessWidget {
  Image? image  ;
  //= NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC8kiSH5ZSAcVoj3tAQQDoP_ux0sSricMyUg&usqp=CAU");
  static   Image defaultImg = Image.network("https://img.freepik.com/premium-vector/vector-isolated-illustration-man-running-athletics_574777-729.jpg?w=2000",fit: BoxFit.cover,);
  var color;
  static const defaultColor= Colors.transparent;
  double? raduis;


  AvatarWithStatus({
    super.key,
    Image? image, Color  color=defaultColor,this.raduis})
  {
    this.image = image;
    this.color=color;
  }





  @override
  Widget build(BuildContext context) {



    return Stack(
        children: [//SizedBox(width: 90,height: 90,
          CircleAvatar(
            backgroundImage : Image.network("https://static.vecteezy.com/system/resources/previews/027/189/430/original/child-boy-in-sportswear-running-fast-flat-cartoon-vector-illustration-isolated-png.png",fit: BoxFit.cover,).image,

            radius: this.raduis??45,
            backgroundColor: Color(0xff7b61ff),
          ),

          Positioned(
              bottom: 2,right: 2,
              child: SizedBox(
                width: 10,height: 10,
                child: CircleAvatar(backgroundColor: color,
                ),
              ))]
    );
  }
}




class SubFrame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all( Radius.circular(25)),
          color: Color(0xff6f63c4)
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("1000",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 48),),
          Text("Earned points",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400),),


        ],
      ),
    );

  }
}



