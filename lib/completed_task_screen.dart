// File: lib/completed_tasks_screen.dart
import 'package:flutter/material.dart';

class CompletedTasksScreen extends StatelessWidget {
  final List<String> completedTasks;

  CompletedTasksScreen({required this.completedTasks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Completed Tasks')),
      body: ListView.builder(
        itemCount: completedTasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(completedTasks[index]),
            leading: Icon(Icons.check_circle, color: Colors.green),
          );
        },
      ),
    );
  }
}

// Update main.dart
void _navigateToCompletedTasks() {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => CompletedTasksScreen(completedTasks: _tasks),
    ),
  );
}
