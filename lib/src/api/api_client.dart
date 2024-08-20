import 'package:dio/dio.dart';
import 'package:happ_flutter/src/sign_in/login_client.dart';
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

  var authHeaders = ref
      .read(authenticateGoogleProvider)
      .value; // TODO this should use currentLoginProvider but doesn't work, need to listen?
  dio.options.headers = authHeaders;
  return dio;
}
