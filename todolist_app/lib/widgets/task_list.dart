import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/models/task_data.dart';

class TaskList extends StatelessWidget {
  // showAlertDialog(BuildContext context) {
  //   // set up the button
  //   Widget okButton = TextButton(
  //     child: Text("OK"),
  //     onPressed: () {},
  //   );

  //   // set up the AlertDialog
  //   AlertDialog alert = AlertDialog(
  //     title: Text("My title"),
  //     content: Text("This is my message."),
  //     actions: [
  //       okButton,
  //     ],
  //   );

  //   // show the dialog
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return alert;
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    /** Su dung cach truyen thong cua Provider */
    // return ListView.builder(
    //   itemCount: Provider.of<TaskData>(context, listen: true).tasks.length,
    //   itemBuilder: (context, index) {
    //     return TaskTile(
    //       taskTile:
    //           Provider.of<TaskData>(context, listen: true).tasks[index].name,
    //       isChecked:
    //           Provider.of<TaskData>(context, listen: true).tasks[index].isDone,
    //       checkboxCallback: (checkboxState) {
    //         // setState(() {
    //         //   Provider.of<TaskData>(context).tasks[index].toggleDone();
    //         // });
    //       },
    //     );
    //   },
    // );

    /** Su dung Consumer cua Provider  */
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.taskCount, // taskCount return length of tasks
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTile: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(task);
            },
            longPressCallback: () {
              taskData.deleteTask(task);
            },
          );
        },
      );
    });
  }
}
