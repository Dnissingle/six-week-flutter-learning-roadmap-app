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
      title: 'Day 22',
      description: 'Learn Riverpod',
      isCompleted: false,
      goal: 'or Provider if easy',
      estimatedTime: 2
  ),
  Day(
      title: 'Day 23',
      description: 'Refactor Todo app using state management',
      isCompleted: false,
      goal: 'Refactor',
      estimatedTime: 2
  ),
  Day(
      title: 'Day 24',
      description: 'Separation \nUI layer \nLogic layer \nModel Layer',
      goal: 'Separation',
      isCompleted: false,
      estimatedTime: 2
  ),
  Day(
      title: 'Day 25',
      description: 'API service structure',
      isCompleted: false,
      goal: 'API service',
      estimatedTime: 2
  ),
  Day(
      title: 'Day 26',
      description: 'Clean architecture mini app',
      isCompleted: false,
      goal: 'Build',
      estimatedTime: 2
  ),
  Day(
      title: 'Day 27',
      description: 'Error handling patterns',
      isCompleted: false,
      goal: 'Error handling',
      estimatedTime: 2
  ),
  Day(
      title: 'Day 28',
      description: 'Project',
      isCompleted: false,
      goal: 'Refactored Weather App (clean structure)',
      estimatedTime: 2
  )
];


class WeekFourScreen extends StatelessWidget {
  const WeekFourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Week 4: State management & Architecture")),
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