import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HabitDetailsAddView extends StatelessWidget {
  const HabitDetailsAddView({super.key});

  static const routeName = '/habits/add';

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Habit Add'),
        ),
        body: Center(
          child: Text('TODO'),
        ),
      );
    });
  }
}
