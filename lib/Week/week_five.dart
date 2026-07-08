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

List<Day> days = [Day(
    title: 'Day 1',
    description: 'Dart + Flutter Basics',
    goal: 'Understand syntax + UI structures + build simple screens',
    isCompleted: true,
    estimatedTime: 2
),
  Day(
      title: 'Day 2',
      description: 'Real UI + State + Navigation',
      goal: 'Build Interactive apps',
      isCompleted: true,
      estimatedTime: 2
  ),
  Day(
      title: 'Day 3',
      description: 'API + JSON + Async',
      goal: 'Work with real data',
      isCompleted: true,
      estimatedTime: 2
  ),
  Day(
      title: 'Day 4',
      description: 'State Management + Architecture',
      goal: 'Stop writing messy code',
      isCompleted: true,
      estimatedTime: 2
  ),
  Day(
      title: 'Day 5',
      description: 'Firebase + Auth',
      goal: 'Real app backend',
      isCompleted: true,
      estimatedTime: 2
  ),
  Day(
      title: 'Day 6',
      description: 'Portfolio Project + Polish',
      goal: 'Build something job-ready',
      isCompleted: true,
      estimatedTime: 2
  ),
];


// Note: Remove the local 'class Day' definition from this file
// since it's now in week-data.dart

class WeekFiveScreen extends StatelessWidget {
  const WeekFiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Week 5: Real app backend")),
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