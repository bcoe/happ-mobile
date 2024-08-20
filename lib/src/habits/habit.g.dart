// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
