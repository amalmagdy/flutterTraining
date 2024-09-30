import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Color(0xfff7f9fb),
        appBar: AppBar(),

        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsetsDirectional.all(30),
                child:  Text("Add Todo ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 38),),

              ),

              TextFormField(
                decoration: InputDecoration(
                    label: Text("title"),
                    hintText: "add title here"
              ),
              ),
              TextFormField(
                maxLines: 15,
                minLines: 7,
                decoration: InputDecoration(
                    label: Text("description"),
                    hintText: "add description here",

                ),
              ),
              ElevatedButton(child:Text("Add Task") ,onPressed: (){},)
            ],
          ),
        ),

      );
  }
}
