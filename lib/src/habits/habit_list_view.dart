import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'habit.dart';

/// Displays a list of SampleItems.
class HabitListView extends StatelessWidget {
  const HabitListView({
    super.key,
    this.items = const [
      // Habit("79sduga89u32h", "Habit 1", "1", true, "2024-08-20")
    ],
  });

  static const routeName = '/habits';

  final List<Habit> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Habits'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              // Navigator.restorablePushNamed(context, SettingsView.routeName);
              context.go('/habits/settings');
            },
          ),
        ],
      ),

      // To work with lists that may contain a large number of items, it’s best
      // to use the ListView.builder constructor.
      //
      // In contrast to the default ListView constructor, which requires
      // building all Widgets up front, the ListView.builder constructor lazily
      // builds Widgets as they’re scrolled into view.
      body: ListView.builder(
        // Providing a restorationId allows the ListView to restore the
        // scroll position when a user leaves and returns to the app after it
        // has been killed while running in the background.
        restorationId: 'habitsListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ListTile(
              title: Text('Habit ${item.id}'),
              leading: const CircleAvatar(
                foregroundImage: AssetImage('assets/images/flutter_logo.png'),
              ),
              onTap: () {
                context.go('/habits/details/${item.id}');
              });
        },
      ),
    );
  }
}
