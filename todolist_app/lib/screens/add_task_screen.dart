import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/models/task_data.dart';
import 'package:todolist_app/models/Task.dart';

String newTaskTitle = "";

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;
  AddTaskScreen({required this.addTaskCallBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add task',
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                // print(value);
                newTaskTitle = newText;
              },
            ),
            SizedBox(
              height: 50,
            ),
            OutlinedButton(
              onPressed: () {
                // print('Received click');
                // addTaskCallBack(newTaskTitle);
                final Task task = new Task(name: newTaskTitle, isDone: false);

                Provider.of<TaskData>(context, listen: false).addTask(task);
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Click Me',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.lightBlueAccent;
                    }
                    return Colors.blue;
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
