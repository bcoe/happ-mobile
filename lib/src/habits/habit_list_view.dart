import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:happ_flutter/src/habits/habit_provider.dart';
import 'package:intl/intl.dart';

import 'habit.dart';

class HabitListView extends StatelessWidget {
  const HabitListView({super.key});

  static const routeName = '/habits';

  Future<void> deleteAndRefreshHabits(WidgetRef ref, Habit habit) async {
    await ref.read(deleteHabitProvider(habit.habitId).future);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Scaffold(
        appBar: AppBar(
            title:
                Text('Habits for ${DateFormat.yMMMd().format(DateTime.now())}'),
            actions: [
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
                return buildHabits(snapshot.data!, ref);
              } else {
                return const Center(child: Text("No data available"));
              }
            },
          ),
        ),
      );
    });
  }

  Widget buildHabits(List<Habit> habits, WidgetRef ref) {
    return ListView.builder(
      restorationId: 'habitsListView',
      itemCount: habits.length,
      itemBuilder: (BuildContext context, int index) {
        final habit = habits[index];
        return buildHabitItem(habit, context, ref);
      },
    );
  }

  Dismissible buildHabitItem(Habit habit, BuildContext context, WidgetRef ref) {
    return Dismissible(
      key: Key(habit.habitId),
      onDismissed: (direction) {
        deleteAndRefreshHabits(ref, habit);
      },
      background: Container(color: Colors.red),
      child: ListTile(
          title: Text(habit.name),
          leading: const CircleAvatar(
            foregroundImage:
                AssetImage('assets/images/flutter_logo.png'), // TODO
          ),
          onTap: () {
            context.go('/habits/edit/${habit.habitId}');
          }),
    );
  }
}
