import 'package:dio/dio.dart';
import 'package:happ_flutter/src/dependencies.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client.g.dart';

@riverpod
Future<Dio> apiClient(ApiClientRef ref) async {
  var dio = Dio(
    BaseOptions(
      baseUrl: "http://127.0.0.1:3000/v1",
      responseType: ResponseType.json,
    ),
  );
  // TODO listen to loginRepositoryProvider and set when changes
  var authHeaders =
      await ref.read(loginRepositoryProvider).authenticateGoogle();
  dio.options.headers = authHeaders;
  return dio;
}
