import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:happ_flutter/src/sign_in/login_client.dart';
import 'package:happ_flutter/src/widgets/custom_button.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  static const routeName = '/settings';

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
          ),
        );
      },
    );
  }
}
