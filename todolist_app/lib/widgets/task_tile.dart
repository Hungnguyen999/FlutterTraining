import 'package:flutter/material.dart';

// class TaskTile extends StatefulWidget {
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function(bool?) checkboxCallback;
  final Function longPressCallback;
  TaskTile({
    required this.isChecked,
    required this.taskTile,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  // void _checkboxCallBack(bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState ?? true;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        onLongPress: longPressCallback(),
        title: Text(
          taskTile,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        // trailing: TaskCheckBox(
        //   checkboxState: isChecked,
        //   toggleCheckboxState: Checkbox(
        //       activeColor: Colors.lightBlueAccent,
        //       value: checkboxState,
        //       onChanged: toggleCheckboxState,
        // ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function(bool?) toggleCheckboxState;
  TaskCheckBox(
      {required this.checkboxState, required this.toggleCheckboxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
