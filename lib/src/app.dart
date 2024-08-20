import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:happ_flutter/src/habits/habit_details_add.dart';
import 'package:happ_flutter/src/habits/habit_details_view.dart';
import 'package:happ_flutter/src/habits/habit_list_view.dart';
import 'package:happ_flutter/src/settings/settings_view.dart';
import 'package:happ_flutter/src/sign_in/sign_in_view.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

final GoRouter _router = GoRouter(
  observers: [SentryNavigatorObserver()],
  initialLocation: '/signIn',
  routes: <RouteBase>[
    GoRoute(
      path: '/signIn',
      builder: (context, state) => const SignInView(),
    ),
    GoRoute(
        path: '/habits',
        builder: (context, state) => const HabitListView(),
        routes: [
          GoRoute(
            path: 'details/:habitId',
            builder: (context, state) =>
                HabitDetailsView(habitId: state.pathParameters['habitId']),
          ),
          GoRoute(
            path: 'add',
            builder: (context, state) => const HabitDetailsAddView(),
          ),
          GoRoute(
            path: 'settings',
            builder: (context, state) => const SettingsView(),
          ),
        ]),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );

    // Glue the SettingsController to the MaterialApp.
    //
    // The ListenableBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    // return ListenableBuilder(
    //   listenable: settingsController,
    //   builder: (BuildContext context, Widget? child) {
    //     return MaterialApp(
    //       // Providing a restorationScopeId allows the Navigator built by the
    //       // MaterialApp to restore the navigation stack when a user leaves and
    //       // returns to the app after it has been killed while running in the
    //       // background.
    //       restorationScopeId: 'app',

    //       // Provide the generated AppLocalizations to the MaterialApp. This
    //       // allows descendant Widgets to display the correct translations
    //       // depending on the user's locale.
    //       localizationsDelegates: const [
    //         AppLocalizations.delegate,
    //         GlobalMaterialLocalizations.delegate,
    //         GlobalWidgetsLocalizations.delegate,
    //         GlobalCupertinoLocalizations.delegate,
    //       ],
    //       supportedLocales: const [
    //         Locale('en', ''), // English, no country code
    //       ],

    //       // Use AppLocalizations to configure the correct application title
    //       // depending on the user's locale.
    //       //
    //       // The appTitle is defined in .arb files found in the localization
    //       // directory.
    //       onGenerateTitle: (BuildContext context) =>
    //           AppLocalizations.of(context)!.appTitle,

    //       // Define a light and dark color theme. Then, read the user's
    //       // preferred ThemeMode (light, dark, or system default) from the
    //       // SettingsController to display the correct theme.
    //       theme: ThemeData(),
    //       darkTheme: ThemeData.dark(),
    //       themeMode: settingsController.themeMode,

    //       // Define a function to handle named routes in order to support
    //       // Flutter web url navigation and deep linking.
    //       onGenerateRoute: (RouteSettings routeSettings) {
    //         return MaterialPageRoute<void>(
    //           settings: routeSettings,
    //           builder: (BuildContext context) {
    //             switch (routeSettings.name) {
    //               case SettingsView.routeName:
    //                 return SettingsView(controller: settingsController);
    //               case SampleItemDetailsView.routeName:
    //                 return const SampleItemDetailsView();
    //               case SampleItemListView.routeName:
    //               default:
    //                 return const SampleItemListView();
    //             }
    //           },
    //         );
    //       },
    //     );
    //   },
    // );
  }
}
