import 'package:flutter/material.dart';

class HabitDetailsView extends StatelessWidget {
  const HabitDetailsView({super.key, required this.habitId});

  static const routeName = '/habitDetails';
  final String? habitId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habit Details'),
      ),
      body: Center(
        child: Text('This is item $habitId'),
      ),
    );
  }
}
