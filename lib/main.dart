<<<<<<< HEAD
// File: lib/main.dart
import 'package:flutter/material.dart';

void main() => runApp(BuluhatonProApp());

class BuluhatonProApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buluhaton Pro',
      home: TaskListScreen(),
    );
  }
}

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  final List<String> _tasks = [];
  final List<String> _completedTasks = [];

  void _addTask(String task) {
    setState(() {
      _tasks.add(task);
    });
  }

  void _markTaskCompleted(int index) {
    setState(() {
      _completedTasks.add(_tasks[index]);
      _tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buluhaton Pro - Your #1 Task Manager')),
      body: Center(child: Text('Value')),
    );
  }
=======
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('Buluhaton Pro - Task Manager')),
    body: Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: _tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_tasks[index]),
              );
            },
          ),
        ),
      ],
    ),
  );
>>>>>>> layout-widget
}
