import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:happ_flutter/src/habits/habit_provider.dart';

import 'habit.dart';

class HabitListView extends StatelessWidget {
  const HabitListView({super.key});

  static const routeName = '/habits';

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Scaffold(
        appBar: AppBar(title: const Text('Habits'), actions: [
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                context.go('/habits/add');
              }),
          IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                context.go('/habits/settings');
              }),
        ]),
        body: RefreshIndicator(
          onRefresh: () async => ref.refresh(habitsProvider.future),
          child: FutureBuilder<List<Habit>>(
            future: ref.watch(habitsProvider.future),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasData) {
                return buildHabits(snapshot.data!);
              } else {
                return const Center(child: Text("No data available"));
              }
            },
          ),
        ),
      );
    });
  }

  Widget buildHabits(List<Habit> habits) {
    return ListView.builder(
      restorationId: 'habitsListView',
      itemCount: habits.length,
      itemBuilder: (BuildContext context, int index) {
        final habit = habits[index];
        return buildHabitItem(habit, context);
      },
    );
  }

  ListTile buildHabitItem(Habit habit, BuildContext context) {
    return ListTile(
        title: Text('Habit ${habit.name}'),
        leading: const CircleAvatar(
          foregroundImage: AssetImage('assets/images/flutter_logo.png'),
        ),
        onTap: () {
          context.go('/habits/details/${habit.habitId}');
        });
  }
}
