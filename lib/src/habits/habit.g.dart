// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HabitsImpl _$$HabitsImplFromJson(Map<String, dynamic> json) => _$HabitsImpl(
      dayOfWeek: $enumDecode(_$DayOfWeekEnumMap, json['current_dow']),
      habits: (json['habits'] as List<dynamic>)
          .map((e) => Habit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HabitsImplToJson(_$HabitsImpl instance) =>
    <String, dynamic>{
      'current_dow': _$DayOfWeekEnumMap[instance.dayOfWeek]!,
      'habits': instance.habits,
    };

const _$DayOfWeekEnumMap = {
  DayOfWeek.Mon: 'Mon',
  DayOfWeek.Tue: 'Tue',
  DayOfWeek.Wed: 'Wed',
  DayOfWeek.Thu: 'Thu',
  DayOfWeek.Fri: 'Fri',
  DayOfWeek.Sat: 'Sat',
  DayOfWeek.Sun: 'Sun',
};

_$HabitImpl _$$HabitImplFromJson(Map<String, dynamic> json) => _$HabitImpl(
      name: json['name'] as String,
      habitId: json['habit_id'],
      id: json['id'] as String?,
      status: json['status'] as bool,
      date: DateTime.parse(json['date'] as String),
      days: (json['days'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry($enumDecode(_$DayOfWeekEnumMap, k), e as bool),
      ),
    );

Map<String, dynamic> _$$HabitImplToJson(_$HabitImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'habit_id': instance.habitId,
      'id': instance.id,
      'status': instance.status,
      'date': instance.date.toIso8601String(),
      'days': instance.days?.map((k, e) => MapEntry(_$DayOfWeekEnumMap[k]!, e)),
    };
