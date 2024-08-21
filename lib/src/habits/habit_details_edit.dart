import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:happ_flutter/src/habits/habit.dart';
import 'package:happ_flutter/src/habits/habit_provider.dart';
import 'package:happ_flutter/src/widgets/custom_button.dart';

class HabitDetailsEditView extends ConsumerStatefulWidget {
  const HabitDetailsEditView({super.key, required this.habitId});

  static const routeName = '/habits/edit/';
  final String? habitId;

  @override
  EditHabitViewState createState() => EditHabitViewState();
}

class EditHabitViewState extends ConsumerState<HabitDetailsEditView> {
  late TextEditingController textEditingController;

  Map<DayOfWeek, bool>? days = {
    DayOfWeek.Sun: false,
    DayOfWeek.Mon: false,
    DayOfWeek.Tue: false,
    DayOfWeek.Wed: false,
    DayOfWeek.Thu: false,
    DayOfWeek.Fri: false,
    DayOfWeek.Sat: false,
  };

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var habit = ref
        .read(habitsDailyProvider)
        .value
        ?.habits
        .firstWhere((habit) => habit.habitId == widget.habitId);

    habit?.days?.forEach((k, v) => days?[k] = v);

    textEditingController = TextEditingController(text: habit?.name);

    StatefulBuilder createDayOfWeek(DayOfWeek dow) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        return CheckboxListTile(
          title: Text(dow.name),
          value: days?[dow],
          onChanged: (bool? value) {
            setState(() {
              days?[dow] = value ?? false;
            });
          },
        );
      });
    }

    Future<void> updateAndRefreshHabits(WidgetRef ref) async {
      habit = habit?.copyWith(name: textEditingController.text, days: days);
      await ref.read(updateHabitProvider(habit!).future);
      ref.invalidate(habitsDailyProvider);
    }

    Future<void> deleteAndRefreshHabits(WidgetRef ref, Habit? habit) async {
      await ref.read(deleteHabitProvider(habit?.habitId).future);
      ref.invalidate(habitsDailyProvider);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Update a habit'),
        actions: [
          IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () async {
                await deleteAndRefreshHabits(ref, habit);
                context.go('/habits');
              }),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Expanded(
                child: ListView(
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
              CustomButton(
                  text: "Update",
                  onPress: () async {
                    await updateAndRefreshHabits(ref);
                    context.go('/habits');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
