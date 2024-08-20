import 'package:dio/dio.dart';
import 'package:happ_flutter/src/dependencies.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'habit.dart';

part 'habit_provider.g.dart';

@riverpod
Future<List<Habit>> habits(HabitsRef ref) async {
  var dio = Dio(
    BaseOptions(
      baseUrl: "http://127.0.0.1:3000/v1", //Endpoints.baseURL, TODO
      responseType: ResponseType.json,
    ),
  );
  var authHeaders =
      await ref.read(loginRepositoryProvider).authenticateGoogle();
  dio.options.headers = authHeaders; // TODO get auth token from somewhere
  final response = await dio.get("/habits-daily");
  return (response.data as List)
      .map((object) => Habit.fromJson(object))
      .toList();
}
