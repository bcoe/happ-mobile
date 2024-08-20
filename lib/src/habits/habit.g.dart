// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitsImpl _$$HabitsImplFromJson(Map<String, dynamic> json) => _$HabitsImpl(
      dayOfWeek: json['current_dow'] as String,
      habits: (json['habits'] as List<dynamic>)
          .map((e) => Habit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HabitsImplToJson(_$HabitsImpl instance) =>
    <String, dynamic>{
      'current_dow': instance.dayOfWeek,
      'habits': instance.habits,
    };

_$HabitImpl _$$HabitImplFromJson(Map<String, dynamic> json) => _$HabitImpl(
      name: json['name'] as String,
      habitId: json['habit_id'],
      id: json['id'] as String?,
      status: json['status'] as bool,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$HabitImplToJson(_$HabitImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'habit_id': instance.habitId,
      'id': instance.id,
      'status': instance.status,
      'date': instance.date.toIso8601String(),
    };
