import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:happ_flutter/src/habits/habit.dart';
import 'package:happ_flutter/src/habits/habit_provider.dart';
import 'package:happ_flutter/src/widgets/custom_button.dart';

class HabitDetailsAddView extends StatefulWidget {
  const HabitDetailsAddView({super.key});

  static const routeName = '/habits/add';

  @override
  State<StatefulWidget> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<StatefulWidget> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
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
                  controller: myController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Which habit do you want to track?',
                  ),
                ),
                CustomButton(
                    text: "Add",
                    onPress: () {
                      ref.read(CreateHabitProvider(Habit(
                          name: myController.text,
                          status: true,
                          date: DateTime.now(),
                          days: {/* TODO */})));
                      ref.invalidate(habitsProvider);
                      context.go('/habits');
                    })
              ],
            ),
          ),
        ),
      );
    });
  }
}
