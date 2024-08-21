import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:happ_flutter/src/habits/habit.dart';
import 'package:happ_flutter/src/habits/habit_provider.dart';
import 'package:happ_flutter/src/widgets/custom_button.dart';

class HabitDetailsAddView extends ConsumerStatefulWidget {
  const HabitDetailsAddView({super.key});

  static const routeName = '/habits/add';

  @override
  AddHabitViewState createState() => AddHabitViewState();
}

class AddHabitViewState extends ConsumerState<HabitDetailsAddView> {
  final textEditingController = TextEditingController();

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

    Future<void> addAndRefreshHabits(WidgetRef ref) async {
      await ref.read(createHabitProvider(Habit(
              name: textEditingController.text,
              status: true,
              date: DateTime.now(),
              days: days))
          .future);
      ref.invalidate(habitsDailyProvider);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new Habit'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Which habit do you want to track?',
                ),
              ),
              createDayOfWeek(DayOfWeek.Sun),
              createDayOfWeek(DayOfWeek.Mon),
              createDayOfWeek(DayOfWeek.Tue),
              createDayOfWeek(DayOfWeek.Wed),
              createDayOfWeek(DayOfWeek.Thu),
              createDayOfWeek(DayOfWeek.Fri),
              createDayOfWeek(DayOfWeek.Sat),
              CustomButton(
                  text: "Add",
                  onPress: () async {
                    await addAndRefreshHabits(ref);
                    context.go('/habits');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
