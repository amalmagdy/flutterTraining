import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [Row(
          children: [
            Expanded(child: Text("study course x",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
            Text("05:30 AM",style: TextStyle(color: Colors.grey),)
          ],
        ),
        Text("task secription blanlblablabla,,, jjjj ",style: TextStyle(color: Colors.grey,fontSize: 14),)
        ],
      ),
    );
  }
}
