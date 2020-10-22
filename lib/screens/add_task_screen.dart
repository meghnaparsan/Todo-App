import 'package:flutter/material.dart';
import 'package:hurly_burly/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskName;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "Add Task",
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                  ),
                ),
              ),
              TextField(
                onChanged: (newValue) {
                  taskName = newValue;
                },
                autofocus: true,
                autocorrect: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 2.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                height: 50.0,
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                padding: EdgeInsets.all(10.0),
                onPressed: () {
                  if (taskName != null) {
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(taskName);
                    Navigator.pop(context);
                  }
                },
                child: Text("Add Task"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
