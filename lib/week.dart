import 'package:flutter/material.dart';
import 'weekdata.dart';


class WeekPage extends StatefulWidget {
  const WeekPage({super.key});

  @override
  State<WeekPage> createState() => _WeekPageState();
}

class _WeekPageState extends State<WeekPage> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _description = '';
  String _goal = '';

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
        title: const Text("ListView Builder Example"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: weeks.length,
              itemBuilder: (context, position) {
                final week = weeks[position];
                return Card(
                  child: ListTile(
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
          //const SizedBox(height: 10.0),
          Form(
              key: _formKey,
              child: Column(
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Week',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a week number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _title = value!;
                },
              ),
              TextFormField(
                maxLength: 30,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Goal',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 4) {
                    return 'Please enter a goal';
                  }
                  return null;
                },
                onSaved: (value) {
                  _goal = value!;
                }
              ),
              TextFormField(
                maxLength: 100,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Description',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                }
                ,
                onSaved: (value) {
                  _description = value!;
                }
              ),
              FilledButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                  _formKey.currentState!.save();
                  setState(() {
                    weeks.add(Week(
                    title: _title,
                    description: _description,
                    goal: _goal));
                  });
                  _formKey.currentState!.reset();
                  }
                },
    child: const Text("Add Week Task"))
            ],
          )
          ),
        ],
      )
      ,
    );
  }
}

