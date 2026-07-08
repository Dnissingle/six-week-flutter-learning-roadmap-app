import 'package:flutter/material.dart';
import 'week-data.dart';
import 'listview.dart';
import 'add_task_screen.dart';

class WeekPage extends StatefulWidget {
  const WeekPage({super.key});

  @override
  State<WeekPage> createState() => _WeekPageState();
}

class _WeekPageState extends State<WeekPage> {
  // Move the async navigation function outside of the build method
  Future<void> _goToAddTaskScreen() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddTaskScreen()),
    );

    // If a valid Week object was returned, trigger a rebuild
    if (result != null && mounted) {
      setState(() {
        // Triggers UI refresh for WeekPage and its children
      });
    }
  }

  Future<void> showMyDialog(int position) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Week'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Would you like to delete this week?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  weeks.removeAt(position);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Deleted'),
                    ),
                  );
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Six Week Flutter Roadmap"),
      ),
      body: Column(
        children: [
          Expanded(
            // Key addition: Passing weeks.length forces ViewWeek to reconstruct when count changes
            child: ViewWeek(key: ValueKey(weeks.length)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: IconButton(
              onPressed: () {
                // Correctly call the asynchronous method here
                _goToAddTaskScreen();
              },
              icon: const Icon(
                size: 40,
                Icons.add_task,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
