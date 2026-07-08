import 'package:flutter/material.dart';
import 'package:sixweekflutterlearning/Week/week_five.dart';
import 'package:sixweekflutterlearning/Week/week_four.dart';
import 'package:sixweekflutterlearning/Week/week_six.dart';
import 'package:sixweekflutterlearning/Week/week_three.dart';
import 'package:sixweekflutterlearning/Week/week_two.dart';
import 'week-data.dart';
import 'Week/week_one.dart';

class ViewWeek extends StatefulWidget {
  const ViewWeek({super.key});

  @override
  State<ViewWeek> createState() => _ViewState();
}

class _ViewState extends State<ViewWeek> {
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
        body: Column(
          children: [
        Expanded(
        child: ListView.builder(
        itemCount: weeks.length,
          itemBuilder: (context, position) {
            final week = weeks[position];
            return Card(
              child: ListTile(
                onTap: () {
                  if (position == 0) { // 0 is the index for "First Week"
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WeekOneScreen()),
                    );
                  }else if (position == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const WeekTwoScreen()),
                    );
                  }else if (position == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WeekThreeScreen()),
                    );
                  }else if (position == 3) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WeekFourScreen()),
                    );
                  }else if (position == 4) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WeekFiveScreen()),
                    );
                  }else if (position == 5) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WeekSixScreen()),
                    );
                  }
                },
                title: Text(
                  week.title,
                  style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4.0),
                    Text('Goal: ${week.goal}', style: const TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic)),
                    Text('Description: ${week.description}', style: const TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic)),
                  ],
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.redAccent),
                  onPressed:  (
                      ) {
                    showMyDialog(position);
                  },
                ),
              ),
            );
          },
        )

    ),
  ],
    ),

    );
  }
}
