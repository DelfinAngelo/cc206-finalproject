// File: lib/main.dart

import 'package:flutter/material.dart';
import 'completed_tasks_screen.dart';

void main() => runApp(BuluhatonProApp());

class BuluhatonProApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buluhaton Pro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  final TextEditingController _taskController = TextEditingController();

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }

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

  void _navigateToCompletedTasks() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CompletedTasksScreen(completedTasks: _completedTasks),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buluhaton Pro - Task Manager'),
        actions: [
          IconButton(
            icon: Icon(Icons.checklist),
            onPressed: _navigateToCompletedTasks,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _taskController,
              decoration: InputDecoration(
                labelText: 'Enter a task',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_taskController.text.isNotEmpty) {
                _addTask(_taskController.text);
                _taskController.clear();
              }
            },
            child: Text('Add Task'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_tasks[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.check, color: Colors.green),
                    onPressed: () => _markTaskCompleted(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

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


}


