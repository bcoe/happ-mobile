import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:happ_flutter/src/sign_in/login_client.dart';
import 'package:happ_flutter/src/widgets/custom_button.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  static const routeName = '/settings';

  // final SettingsController controller;

  // TODO add logout, settings, etc.

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Settings'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: CustomButton(
              text: "Sign out",
              onPress: () {
                ref.read(logoutProvider);
                context.go('/signIn');
              },
            ),
            // Glue the SettingsController to the theme selection DropdownButton.
            //
            // When a user selects a theme from the dropdown list, the
            // SettingsController is updated, which rebuilds the MaterialApp.
            // child: DropdownButton<ThemeMode>(
            //   // Read the selected themeMode from the controller
            //   value: controller.themeMode,
            //   // Call the updateThemeMode method any time the user selects a theme.
            //   onChanged: controller.updateThemeMode,
            //   items: const [
            //     DropdownMenuItem(
            //       value: ThemeMode.system,
            //       child: Text('System Theme'),
            //     ),
            //     DropdownMenuItem(
            //       value: ThemeMode.light,
            //       child: Text('Light Theme'),
            //     ),
            //     DropdownMenuItem(
            //       value: ThemeMode.dark,
            //       child: Text('Dark Theme'),
            //     )
            //   ],
            // ),
          ),
        );
      },
    );
  }
}
