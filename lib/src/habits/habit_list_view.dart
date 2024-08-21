import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:happ_flutter/src/habits/habit_provider.dart';
import 'package:intl/intl.dart';

import 'habit.dart';

class HabitListView extends StatelessWidget {
  const HabitListView({super.key});

  static const routeName = '/habits';

  Future<void> completeHabit(WidgetRef ref, Habit habit) async {
    habit = habit.copyWith(status: !habit.status, date: DateTime.now());
    await ref.read(updateHabitStatusProvider(habit).future);
    ref.invalidate(habitsDailyProvider);
  }

  Future<void> deleteHabit(WidgetRef ref, Habit habit) async {
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
          onRefresh: () async => ref.refresh(habitsDailyProvider.future),
          child: FutureBuilder<Habits?>(
            future: ref.watch(habitsDailyProvider.future),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasData) {
                return buildHabits(snapshot.data!.habits, ref);
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
        // primary
        if (direction == DismissDirection.startToEnd) {
          completeHabit(ref, habit);
        }
        // secondary
        if (direction == DismissDirection.endToStart) {
          deleteHabit(ref, habit);
        }
      },
      background: Container(
        color: Colors.blue,
        padding: const EdgeInsets.only(left: 20.0),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.done,
            )
          ],
        ),
      ),
      secondaryBackground: Container(
        color: Colors.red,
        padding: const EdgeInsets.only(right: 20.0),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.delete,
            )
          ],
        ),
      ),
      child: ListTile(
          title: Text(habit.name),
          leading: Icon(iconForHabit(habit, ref)),
          onTap: () {
            context.go('/habits/edit/${habit.habitId}');
          }),
    );
  }

  IconData iconForHabit(Habit habit, WidgetRef ref) {
    var currentDayOfWeek = ref.read(habitsDailyProvider).value?.dayOfWeek;
    if (currentDayOfWeek == null || habit.days == null) {
      return Icons.error;
    }
    if ((habit.days?[currentDayOfWeek] ?? false) == false) {
      return Icons.calendar_today;
    }
    return habit.status ? Icons.done : Icons.timer_outlined;
  }
}
