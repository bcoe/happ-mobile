import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:happ_flutter/src/habits/habit_provider.dart';

class HabitDetailsView extends StatelessWidget {
  const HabitDetailsView({super.key, required this.habitId});

  static const routeName = '/habitDetails';
  final String? habitId;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      var habit = ref
          .read(habitsProvider)
          .value
          ?.firstWhere((habit) => habit.habitId == habitId);

      return Scaffold(
        appBar: AppBar(
          title: const Text('Habit Details'),
        ),
        body: Center(
          child: Text('This is item ${habit?.name ?? "not found"}'),
        ),
      );
    });
  }
}
