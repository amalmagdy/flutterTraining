import 'package:flutter/material.dart';

import 'add_task_screen.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f9fb),

      floatingActionButton: FloatingActionButton(child: Icon(Icons.add) ,
        onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddTaskScreen()));
        },),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsetsDirectional.all(30),
              child:  Text("Todos ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 38),),

            )
          ],
        ),
      ),

    )
    ;
  }
}
