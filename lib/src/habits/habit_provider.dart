import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:happ_flutter/src/api/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'habit.dart';

part 'habit_provider.g.dart';

@riverpod
Future<Habits?> habitsDaily(HabitsDailyRef ref) async {
  Dio dio = await _getDio(ref);
  try {
    final response = await dio.get("/habits-daily");
    return Habits.fromJson(response.data);
  } on DioException catch (e) {
    Sentry.captureException(e);
    return null;
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
Future<bool> updateHabit(UpdateHabitRef ref, Habit habit) async {
  Dio dio = await _getDio(ref);
  try {
    final response =
        await dio.put("/habits/${habit.habitId}", data: habit.toJson());
    return response.statusCode == 200;
  } on DioException catch (e) {
    Sentry.captureException(e);
    return false;
  }
}

@riverpod
Future<bool> updateHabitStatus(UpdateHabitStatusRef ref, Habit habit) async {
  Dio dio = await _getDio(ref);
  try {
    final response = await dio.post("/habits-daily", data: habit.toJson());
    return response.statusCode == 200;
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
