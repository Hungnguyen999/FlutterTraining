import 'package:flutter/material.dart';
import 'Task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'buy egg'),
    Task(name: 'Buy milk'),
    Task(name: 'buy egg'),
    Task(name: 'Buy milk'),
    Task(name: 'buy egg'),
    Task(name: 'Buy milk'),
    Task(name: 'buy egg'),
    Task(name: 'Buy milk'),
    Task(name: 'buy egg'),
    Task(name: 'Buy milk'),
    Task(name: 'buy egg'),
    Task(name: 'Buy milASDDDDDDDDDDDDDk'),
    Task(name: 'buy DSAAAAAAAAAAAAAAegg'),
    Task(name: 'Buy milk'),
    Task(name: 'buy egg'),
    Task(name: 'Buy milASDDDDDDDDDDDDDk'),
    Task(name: 'buy DSAAAAAAAAAAAAAAeggsdddd'),
  ];

  // Declare the public task variable base on protected variable _tasks for using in task list
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
