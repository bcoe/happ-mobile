import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:happ_flutter/src/sign_in/login_client.dart';
import 'package:happ_flutter/src/widgets/custom_button.dart';
import 'package:happ_flutter/src/widgets/custom_message.dart';

class SignInView extends ConsumerWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (ref.read(currentLoginProvider).value != null) {
      context.go('/habits');
    }

    ref.listen(authenticateGoogleProvider, (_, state) {
      state.when(
        data: (data) {
          if (data != null) {
            context.go('/habits');
          }
        },
        error: (Object error, StackTrace stackTrace) {
          // TODO smarter result handling
          _showSnackBar(context, "There was an error");
        },
        loading: () {},
      );
    });

    return Scaffold(
        appBar: AppBar(),
        // backgroundColor: CustomColors.white,
        extendBodyBehindAppBar: true,
        body: Stack(children: <Widget>[
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Text('You are not currently signed in.'),
                  CustomButton(
                    text: "Sign in",
                    onPress: () {
                      ref.invalidate(authenticateGoogleProvider);
                    },
                  ),
                ],
              ))
        ]));
  }

  void _showSnackBar(BuildContext context, String message) {
    CustomMessage.show(context, message);
  }
}
