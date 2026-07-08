import 'package:flutter/material.dart';
import 'week-data.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _description = '';
  String _goal = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Task"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Keeps inputs away from edges
          child: Form(
            key: _formKey,
            child: SingleChildScrollView( // Prevents bottom overflow when keyboard opens
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                  const SizedBox(height: 16),
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
                    },
                  ),
                  const SizedBox(height: 16),
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
                    },
                    onSaved: (value) {
                      _description = value!;
                    },
                  ),
                  const SizedBox(height: 24),
                  FilledButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        // 1. Create your new data model object
                        final newWeek = Week(
                          title: _title,
                          description: _description,
                          goal: _goal,
                        );

                        // 2. Add it to the shared global list
                        weeks.add(newWeek);

                        // 3. Return the newly created item to the previous screen
                        Navigator.pop(context, newWeek);
                      }
                    },
                    child: const Text("Add Week Task"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
