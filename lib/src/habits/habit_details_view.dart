import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:happ_flutter/src/habits/habit.dart';
import 'package:happ_flutter/src/habits/habit_provider.dart';

class HabitDetailsView extends StatelessWidget {
  const HabitDetailsView({super.key, required this.habitId});

  static const routeName = '/habits/details';
  final String? habitId;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      var habit = ref
          .read(habitsProvider)
          .value
          ?.firstWhere((habit) => habit.habitId == habitId);

      CheckboxListTile createDayOfWeek(DayOfWeek dow) {
        return CheckboxListTile(
          title: Text(dow.name),
          value: habit?.days?[dow] ?? false,
          onChanged: (bool? value) {},
        );
      }

      return Scaffold(
        appBar: AppBar(
          title: Text(habit?.name ?? "<unknown>"),
          actions: [
            IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  deleteAndRefreshHabits(ref, habit);
                  context.go('/habits');
                }),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Center(
            child: Column(
              children: [
                createDayOfWeek(DayOfWeek.Sun),
                createDayOfWeek(DayOfWeek.Mon),
                createDayOfWeek(DayOfWeek.Tue),
                createDayOfWeek(DayOfWeek.Wed),
                createDayOfWeek(DayOfWeek.Thu),
                createDayOfWeek(DayOfWeek.Fri),
                createDayOfWeek(DayOfWeek.Sat),
              ],
            ),
          ),
        ),
      );
    });
  }

  Future<void> deleteAndRefreshHabits(WidgetRef ref, Habit? habit) async {
    await ref.read(deleteHabitProvider(habit?.habitId).future);
    ref.invalidate(habitsProvider);
  }
}
