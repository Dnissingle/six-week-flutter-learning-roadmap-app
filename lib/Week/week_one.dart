import 'package:flutter/material.dart';
class Day {
  String title;
  String description;
  bool isCompleted;
  String goal;
  int? estimatedTime;

  Day(
      {
        required this.title,
        required this.description,
        required this.isCompleted,
        required this.goal,
        this.estimatedTime,
      });

}
List<Day> days = [Day(
title: 'Day 1',
description: 'Flutter and Dart SDK',
isCompleted: true,
goal: 'Installation and setup',
estimatedTime: 2
),
Day(
title: 'Day 2',
description: 'Dart: Variables,Types,Functions',
isCompleted: true,
goal: 'Build simple Calculator',
estimatedTime: 2
),
Day(
title: 'Day 3',
description: 'Dart: Class and Constructors',
isCompleted: true,
goal: 'Build Day Model',
),
Day(
title: 'Day 4',
description: 'Flutter: MaterialApp, Scaffold, Container,Text',
goal: 'Static Profile UI',
isCompleted: true,
estimatedTime: 2
),
Day(
title: 'Day 5',
description: 'Flutter: Row, Column, and Expanded widgets',
isCompleted: true,
goal: 'Simple Login UI(no logic)',
estimatedTime: 2
),
Day(
title: 'Day 6',
description: 'Flutter: Stateful Widgets Basics',
isCompleted: true,
goal: 'Build: Counter app (with button and state change)',
estimatedTime: 2
),
Day(
title: 'Day 7',
description: 'Mini Project',
isCompleted: true,
goal: 'Simple Todo UI(add static items, no storage yet)',
estimatedTime: 2
),
];

// Day: Remove the local 'class Day' definition from this file
// since it's now in week-data.dart
class WeekOneScreen extends StatelessWidget {
  const WeekOneScreen({super.key});

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