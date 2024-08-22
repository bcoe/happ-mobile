import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:happ_flutter/src/habits/habit_provider.dart';
import 'package:happ_flutter/src/notes/note_provider.dart';
import 'package:intl/intl.dart';

import 'habit.dart';

class HabitListView extends StatelessWidget {
  const HabitListView({super.key});

  static const routeName = '/habits';

  Future<void> completeHabit(WidgetRef ref, Habit habit) async {
    habit = habit.copyWith(status: !habit.status, date: DateTime.now());
    await ref.read(updateHabitStatusProvider(habit).future);

    // TODO this causes a somewhat ugly refresh but it's necessary since dismissing per default removes the item from the list
    ref.invalidate(habitsDailyProvider);
  }

  Future<void> deleteHabit(WidgetRef ref, Habit habit) async {
    await ref.read(deleteHabitProvider(habit.habitId).future);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      bool hasNotesToday = ref.watch(notesProvider).value?.note != null;

      return Scaffold(
        appBar: AppBar(
            title: Text(DateFormat.yMMMd().format(DateTime.now())),
            actions: [
              IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    context.go('/habits/add');
                  }),
              IconButton(
                  icon: Icon(
                      hasNotesToday ? Icons.edit_document : Icons.note_add),
                  onPressed: () {
                    context.go('/habits/notes');
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
                return buildHabits(sortHabits(snapshot.data!.habits, ref), ref);
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
      confirmDismiss: (DismissDirection direction) async {
        if (direction == DismissDirection.startToEnd) {
          return isHabitActiveToday(habit, ref);
        }
        if (direction == DismissDirection.endToStart) {
          return await showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Confirm"),
                content:
                    const Text("Are you sure you wish to delete this item?"),
                actions: <Widget>[
                  TextButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: const Text("DELETE")),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text("CANCEL"),
                  ),
                ],
              );
            },
          );
        }
        return null;
      },
      onDismissed: (direction) {
        if (direction == DismissDirection.startToEnd) {
          completeHabit(ref, habit);
        }
        if (direction == DismissDirection.endToStart) {
          deleteHabit(ref, habit);
        }
      },
      background: Container(
        color: isHabitActiveToday(habit, ref)
            ? (habit.status ? Colors.blue : Colors.green)
            : Colors.transparent,
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: isHabitActiveToday(habit, ref)
              ? <Widget>[Icon(habit.status ? Icons.timer_outlined : Icons.done)]
              : [],
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
          tileColor: isHabitActiveToday(habit, ref)
              ? (habit.status ? Colors.green : Colors.blue)
              : Colors.transparent,
          title: Text(habit.name),
          textColor:
              isHabitActiveToday(habit, ref) ? Colors.black : Colors.black54,
          leading: Icon(iconForHabit(habit, ref)),
          onTap: () {
            context.go('/habits/edit/${habit.habitId}');
          }),
    );
  }

  IconData iconForHabit(Habit habit, WidgetRef ref) {
    if (!isHabitActiveToday(habit, ref)) {
      return Icons.calendar_today;
    }

    return habit.status ? Icons.done : Icons.timer_outlined;
  }

  bool isHabitActiveToday(Habit habit, WidgetRef ref) {
    var currentDayOfWeek = ref.read(habitsDailyProvider).value?.dayOfWeek;
    return habit.days?[currentDayOfWeek] ?? false;
  }

  List<Habit> sortHabits(List<Habit> habits, WidgetRef ref) {
    var sortedHabits = List<Habit>.from(habits);
    sortedHabits.sort((a, b) {
      if (isHabitActiveToday(a, ref) && !isHabitActiveToday(b, ref)) {
        return 0;
      }
      if (!isHabitActiveToday(a, ref) && isHabitActiveToday(b, ref)) {
        return 1;
      }
      if (!a.status && b.status) {
        return 0;
      }
      if (a.status && !b.status) {
        return 1;
      }
      return (a.name.compareTo(b.name));
    });
    return sortedHabits;
  }
}
