// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Habits _$HabitsFromJson(Map<String, dynamic> json) {
  return _Habits.fromJson(json);
}

/// @nodoc
mixin _$Habits {
  @JsonKey(name: 'current_dow')
  DayOfWeek get dayOfWeek => throw _privateConstructorUsedError;
  List<Habit> get habits => throw _privateConstructorUsedError;

  /// Serializes this Habits to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Habits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HabitsCopyWith<Habits> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitsCopyWith<$Res> {
  factory $HabitsCopyWith(Habits value, $Res Function(Habits) then) =
      _$HabitsCopyWithImpl<$Res, Habits>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_dow') DayOfWeek dayOfWeek, List<Habit> habits});
}

/// @nodoc
class _$HabitsCopyWithImpl<$Res, $Val extends Habits>
    implements $HabitsCopyWith<$Res> {
  _$HabitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Habits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? habits = null,
  }) {
    return _then(_value.copyWith(
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      habits: null == habits
          ? _value.habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitsImplCopyWith<$Res> implements $HabitsCopyWith<$Res> {
  factory _$$HabitsImplCopyWith(
          _$HabitsImpl value, $Res Function(_$HabitsImpl) then) =
      __$$HabitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_dow') DayOfWeek dayOfWeek, List<Habit> habits});
}

/// @nodoc
class __$$HabitsImplCopyWithImpl<$Res>
    extends _$HabitsCopyWithImpl<$Res, _$HabitsImpl>
    implements _$$HabitsImplCopyWith<$Res> {
  __$$HabitsImplCopyWithImpl(
      _$HabitsImpl _value, $Res Function(_$HabitsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Habits
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? habits = null,
  }) {
    return _then(_$HabitsImpl(
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as DayOfWeek,
      habits: null == habits
          ? _value._habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HabitsImpl implements _Habits {
  const _$HabitsImpl(
      {@JsonKey(name: 'current_dow') required this.dayOfWeek,
      required final List<Habit> habits})
      : _habits = habits;

  factory _$HabitsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitsImplFromJson(json);

  @override
  @JsonKey(name: 'current_dow')
  final DayOfWeek dayOfWeek;
  final List<Habit> _habits;
  @override
  List<Habit> get habits {
    if (_habits is EqualUnmodifiableListView) return _habits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habits);
  }

  @override
  String toString() {
    return 'Habits(dayOfWeek: $dayOfWeek, habits: $habits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitsImpl &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            const DeepCollectionEquality().equals(other._habits, _habits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, dayOfWeek, const DeepCollectionEquality().hash(_habits));

  /// Create a copy of Habits
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitsImplCopyWith<_$HabitsImpl> get copyWith =>
      __$$HabitsImplCopyWithImpl<_$HabitsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitsImplToJson(
      this,
    );
  }
}

abstract class _Habits implements Habits {
  const factory _Habits(
      {@JsonKey(name: 'current_dow') required final DayOfWeek dayOfWeek,
      required final List<Habit> habits}) = _$HabitsImpl;

  factory _Habits.fromJson(Map<String, dynamic> json) = _$HabitsImpl.fromJson;

  @override
  @JsonKey(name: 'current_dow')
  DayOfWeek get dayOfWeek;
  @override
  List<Habit> get habits;

  /// Create a copy of Habits
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HabitsImplCopyWith<_$HabitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Habit _$HabitFromJson(Map<String, dynamic> json) {
  return _Habit.fromJson(json);
}

/// @nodoc
mixin _$Habit {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'habit_id')
  dynamic get habitId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Map<DayOfWeek, bool>? get days => throw _privateConstructorUsedError;

  /// Serializes this Habit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Habit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HabitCopyWith<Habit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitCopyWith<$Res> {
  factory $HabitCopyWith(Habit value, $Res Function(Habit) then) =
      _$HabitCopyWithImpl<$Res, Habit>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'habit_id') dynamic habitId,
      String? id,
      bool status,
      DateTime date,
      Map<DayOfWeek, bool>? days});
}

/// @nodoc
class _$HabitCopyWithImpl<$Res, $Val extends Habit>
    implements $HabitCopyWith<$Res> {
  _$HabitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Habit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? habitId = freezed,
    Object? id = freezed,
    Object? status = null,
    Object? date = null,
    Object? days = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      habitId: freezed == habitId
          ? _value.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as Map<DayOfWeek, bool>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitImplCopyWith<$Res> implements $HabitCopyWith<$Res> {
  factory _$$HabitImplCopyWith(
          _$HabitImpl value, $Res Function(_$HabitImpl) then) =
      __$$HabitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'habit_id') dynamic habitId,
      String? id,
      bool status,
      DateTime date,
      Map<DayOfWeek, bool>? days});
}

/// @nodoc
class __$$HabitImplCopyWithImpl<$Res>
    extends _$HabitCopyWithImpl<$Res, _$HabitImpl>
    implements _$$HabitImplCopyWith<$Res> {
  __$$HabitImplCopyWithImpl(
      _$HabitImpl _value, $Res Function(_$HabitImpl) _then)
      : super(_value, _then);

  /// Create a copy of Habit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? habitId = freezed,
    Object? id = freezed,
    Object? status = null,
    Object? date = null,
    Object? days = freezed,
  }) {
    return _then(_$HabitImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      habitId: freezed == habitId ? _value.habitId! : habitId,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      days: freezed == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as Map<DayOfWeek, bool>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HabitImpl implements _Habit {
  const _$HabitImpl(
      {required this.name,
      @JsonKey(name: 'habit_id') this.habitId,
      this.id,
      required this.status,
      required this.date,
      final Map<DayOfWeek, bool>? days})
      : _days = days;

  factory _$HabitImpl.fromJson(Map<String, dynamic> json) =>
      _$$HabitImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'habit_id')
  final dynamic habitId;
  @override
  final String? id;
  @override
  final bool status;
  @override
  final DateTime date;
  final Map<DayOfWeek, bool>? _days;
  @override
  Map<DayOfWeek, bool>? get days {
    final value = _days;
    if (value == null) return null;
    if (_days is EqualUnmodifiableMapView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Habit(name: $name, habitId: $habitId, id: $id, status: $status, date: $date, days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.habitId, habitId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(habitId),
      id,
      status,
      date,
      const DeepCollectionEquality().hash(_days));

  /// Create a copy of Habit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitImplCopyWith<_$HabitImpl> get copyWith =>
      __$$HabitImplCopyWithImpl<_$HabitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HabitImplToJson(
      this,
    );
  }
}

abstract class _Habit implements Habit {
  const factory _Habit(
      {required final String name,
      @JsonKey(name: 'habit_id') final dynamic habitId,
      final String? id,
      required final bool status,
      required final DateTime date,
      final Map<DayOfWeek, bool>? days}) = _$HabitImpl;

  factory _Habit.fromJson(Map<String, dynamic> json) = _$HabitImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'habit_id')
  dynamic get habitId;
  @override
  String? get id;
  @override
  bool get status;
  @override
  DateTime get date;
  @override
  Map<DayOfWeek, bool>? get days;

  /// Create a copy of Habit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HabitImplCopyWith<_$HabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
