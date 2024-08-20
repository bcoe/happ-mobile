import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:happ_flutter/src/api/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'habit.dart';

part 'habit_provider.g.dart';

@riverpod
Future<List<Habit>> habits(HabitsRef ref) async {
  Dio dio = await _getDio(ref);
  try {
    final response = await dio.get("/habits-daily");
    return (response.data as List)
        .map((object) => Habit.fromJson(object))
        .toList();
  } on DioException catch (e) {
    Sentry.captureException(e);
    return [];
  }
}

@riverpod
Future<bool> createHabit(CreateHabitRef ref, Habit habit) async {
  Dio dio = await _getDio(ref);
  try {
    final response = await dio.post("/habits", data: habit.toJson());
    return response.statusCode == 201;
  } on DioException catch (e) {
    Sentry.captureException(e);
    return false;
  }
}

@riverpod
Future<bool> deleteHabit(DeleteHabitRef ref, String habitId) async {
  Dio dio = await _getDio(ref);
  try {
    final response = await dio.delete("/habits/$habitId");
    return response.statusCode == 200;
  } on DioException catch (e) {
    Sentry.captureException(e);
    return false;
  }
}

Future<Dio> _getDio(Ref ref) async {
  return ref.read(apiClientProvider.future);
}
