import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'login_client.g.dart';

final googleSignIn = GoogleSignIn(
  scopes: ['email'],
);

@riverpod
Future<Map<String, String>?> currentLogin(CurrentLoginRef ref) async {
  try {
    if (await googleSignIn.isSignedIn()) {
      return (await googleSignIn.signInSilently())?.authHeaders;
    }
  } catch (error) {
    rethrow;
  }
  return null;
}

@riverpod
Future<Map<String, String>?> authenticateGoogle(
    AuthenticateGoogleRef ref) async {
  try {
    if (await googleSignIn.isSignedIn()) {
      return (await googleSignIn.signInSilently())?.authHeaders;
    }
    final credential = await googleSignIn.signIn();
    return credential?.authHeaders;
  } catch (error) {
    rethrow;
  }
}

@riverpod
Future<Map<String, String>?> logout(LogoutRef ref) async {
  await googleSignIn.signOut();
  return null;
}
