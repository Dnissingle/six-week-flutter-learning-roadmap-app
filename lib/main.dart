import 'package:flutter/material.dart';
import 'package:sixweekflutterlearning/add_task_screen.dart';
//import 'package:sixweekflutterlearning/add_task_screen.dart';
import 'week.dart';
//import 'package:sixweekflutterlearning/Week/Week.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "ListView Builder",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 800,
                child: WeekPage()),
          ],
        ),

    );



  }
}

