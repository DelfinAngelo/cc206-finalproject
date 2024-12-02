// File: lib/main.dart
<<<<<<< HEAD
import 'package:flutter/material.dart';

void main() => runApp(TaskMateApp());

class TaskMateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TaskListScreen());
  }
}

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  final List<String> _tasks = [];

  void _addTask(String task) {
    setState(() {
      _tasks.add(task);
    });
  }

  void _removeTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buluhaton Pro')),
      body: Center(child: Text('Value')),
    );
  }
=======
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('Buluhaton Pro')),
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
