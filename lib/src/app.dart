import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:happ_flutter/src/habits/habit_details_add.dart';
import 'package:happ_flutter/src/habits/habit_details_edit.dart';
import 'package:happ_flutter/src/habits/habit_list_view.dart';
import 'package:happ_flutter/src/notes/notes_view.dart';
import 'package:happ_flutter/src/settings/settings_view.dart';
import 'package:happ_flutter/src/sign_in/sign_in_view.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

final GoRouter _router = GoRouter(
  observers: [SentryNavigatorObserver()],
  initialLocation: '/signIn',
  routes: <RouteBase>[
    GoRoute(
      path: '/signIn',
      name: '/signIn',
      builder: (context, state) => const SignInView(),
    ),
    GoRoute(
        path: '/habits',
        name: '/habits',
        builder: (context, state) => const HabitListView(),
        routes: [
          GoRoute(
            path: 'edit/:habitId',
            name: '/habits/edit/:habitId',
            builder: (context, state) =>
                HabitDetailsEditView(habitId: state.pathParameters['habitId']),
          ),
          GoRoute(
            path: 'add',
            name: '/habits/add',
            builder: (context, state) => const HabitDetailsAddView(),
          ),
          GoRoute(
            path: 'settings',
            name: '/habits/settings',
            builder: (context, state) => const SettingsView(),
          ),
          GoRoute(
            path: 'notes',
            name: '/habits/notes',
            builder: (context, state) => const NotesView(),
          ),
        ]),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
