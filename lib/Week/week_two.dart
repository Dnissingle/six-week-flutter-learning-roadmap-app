import 'package:flutter/material.dart';
class Day {
  String title;
  String description;
  String goal;
  bool isCompleted;
  int estimatedTime;


  Day(
      {
        required this.title,
        required this.description,
        required this.goal,
        required this.isCompleted,
        required this.estimatedTime,
      });

}
List<Day> days = [
  Day(
      title: 'Day 8',
      description: 'Dart: List',
      isCompleted: true,
      goal: 'Build: dynamic list in flutter',
      estimatedTime: 2
  ),
  Day(
    title: 'Day 9',
    description: 'ListView.builder',
    isCompleted: true,
    goal: 'Build To do app(add/remove item)',
    estimatedTime: 2
  ),
  Day(
      title: 'Day 10',
      description: 'Navigation basics (Navigator.push)',
      goal: 'Build: 2 Screen App',
      isCompleted: true,
      estimatedTime: 2
  ),
  Day(
      title: 'Day 11',
      description: 'Forms + TextFields',
      isCompleted: true,
      goal: 'input-based Todo app',
      estimatedTime: 2
  ),
  Day(
      title: 'Day 12',
      description: 'Dialogs + Snack bars',
      isCompleted: true,
      goal: 'Add delete confirmation)',
      estimatedTime: 2
  ),
  Day(
      title: 'Day 13',
      description: 'Refactor UI into widgets',
      isCompleted: true,
      goal: 'Learn reusable components)',
      estimatedTime: 2
  ),
  Day(
      title: 'Day 14',
      description: 'Project',
      isCompleted: true,
      goal: 'Complete Todo App(UI + logic + navigation',
      estimatedTime: 2
  )
];


// Day: Remove the local 'class Day' definition from this file
// since it's now in week-data.dart

class WeekTwoScreen extends StatelessWidget {
  const WeekTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Week 2: Interactive apps")),
      body: ListView.builder(
        itemCount: days.length,
        itemBuilder: (context, index) {
          final day = days[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(day.title, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("${day.description}\nGoal: ${day.goal}"),
              isThreeLine: true,
              trailing: Icon(
                day.isCompleted ? Icons.check : Icons.close,
                color: day.isCompleted ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}