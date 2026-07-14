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
      title: 'Day 15',
      description: 'Dart: async/await + Future',
      isCompleted: true,
      goal: 'Learn Dart',
      estimatedTime: 2
  ),
  Day(
    title: 'Day 16',
    description: 'HTTP package + GET request',
    isCompleted: false,
    goal: 'fetch dummy API',
    estimatedTime: 2
  ),
  Day(
      title: 'Day 17',
      description: 'JSON parsing into models',
      goal: 'Parse API response',
      isCompleted: false,
      estimatedTime: 2
  ),
  Day(
      title: 'Day 18',
      description: 'Weather App',
      isCompleted: false,
      goal: 'Build App',
      estimatedTime: 2
  ),
  Day(
      title: 'Day 19',
      description: 'Loading + error states',
      isCompleted: false,
      goal: 'learn',
      estimatedTime: 2
  ),
  Day(
      title: 'Day 20',
      description: 'Improve UI design(cards, layouts)',
      isCompleted: false,
      goal: 'UI',
      estimatedTime: 2
  ),
  Day(
      title: 'Day 21',
      description: 'Project',
      isCompleted: false,
      goal: 'Complete Weather App',
      estimatedTime: 2
  )
];


// Day: Remove the local 'class Day' definition from this file
// since it's now in week-data.dart

class WeekThreeScreen extends StatelessWidget {
  const WeekThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Week 3: Work with real data")),
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