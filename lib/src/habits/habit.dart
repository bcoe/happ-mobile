import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit.freezed.dart';
part 'habit.g.dart';

@freezed
class Habits with _$Habits {
  const factory Habits({
    @JsonKey(name: 'current_dow') required String dayOfWeek,
    required List<Habit> habits,
  }) = _Habits;

  factory Habits.fromJson(Map<String, dynamic> json) => _$HabitsFromJson(json);
}

@freezed
class Habit with _$Habit {
  const factory Habit({
    required String name,
    @JsonKey(name: 'habit_id') habitId,
    String? id,
    required bool status,
    required DateTime date,
  }) = _Habit;

  factory Habit.fromJson(Map<String, dynamic> json) => _$HabitFromJson(json);
}
