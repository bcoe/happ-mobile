// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$habitsHash() => r'17699c9d3ec4c079739ef7c984d5bd27df9af6f8';

/// See also [habits].
@ProviderFor(habits)
final habitsProvider = AutoDisposeFutureProvider<List<Habit>>.internal(
  habits,
  name: r'habitsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$habitsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HabitsRef = AutoDisposeFutureProviderRef<List<Habit>>;
String _$createHabitHash() => r'cc367ac7c83462f9301f31f486c746561b472c15';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [createHabit].
@ProviderFor(createHabit)
const createHabitProvider = CreateHabitFamily();

/// See also [createHabit].
class CreateHabitFamily extends Family<AsyncValue<bool>> {
  /// See also [createHabit].
  const CreateHabitFamily();

  /// See also [createHabit].
  CreateHabitProvider call(
    Habit habit,
  ) {
    return CreateHabitProvider(
      habit,
    );
  }

  @override
  CreateHabitProvider getProviderOverride(
    covariant CreateHabitProvider provider,
  ) {
    return call(
      provider.habit,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createHabitProvider';
}

/// See also [createHabit].
class CreateHabitProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [createHabit].
  CreateHabitProvider(
    Habit habit,
  ) : this._internal(
          (ref) => createHabit(
            ref as CreateHabitRef,
            habit,
          ),
          from: createHabitProvider,
          name: r'createHabitProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createHabitHash,
          dependencies: CreateHabitFamily._dependencies,
          allTransitiveDependencies:
              CreateHabitFamily._allTransitiveDependencies,
          habit: habit,
        );

  CreateHabitProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.habit,
  }) : super.internal();

  final Habit habit;

  @override
  Override overrideWith(
    FutureOr<bool> Function(CreateHabitRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateHabitProvider._internal(
        (ref) => create(ref as CreateHabitRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        habit: habit,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _CreateHabitProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateHabitProvider && other.habit == habit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, habit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateHabitRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `habit` of this provider.
  Habit get habit;
}

class _CreateHabitProviderElement extends AutoDisposeFutureProviderElement<bool>
    with CreateHabitRef {
  _CreateHabitProviderElement(super.provider);

  @override
  Habit get habit => (origin as CreateHabitProvider).habit;
}

String _$deleteHabitHash() => r'b163ecaafdcb5121dad35945e7d8556d460d4b38';

/// See also [deleteHabit].
@ProviderFor(deleteHabit)
const deleteHabitProvider = DeleteHabitFamily();

/// See also [deleteHabit].
class DeleteHabitFamily extends Family<AsyncValue<bool>> {
  /// See also [deleteHabit].
  const DeleteHabitFamily();

  /// See also [deleteHabit].
  DeleteHabitProvider call(
    String habitId,
  ) {
    return DeleteHabitProvider(
      habitId,
    );
  }

  @override
  DeleteHabitProvider getProviderOverride(
    covariant DeleteHabitProvider provider,
  ) {
    return call(
      provider.habitId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteHabitProvider';
}

/// See also [deleteHabit].
class DeleteHabitProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [deleteHabit].
  DeleteHabitProvider(
    String habitId,
  ) : this._internal(
          (ref) => deleteHabit(
            ref as DeleteHabitRef,
            habitId,
          ),
          from: deleteHabitProvider,
          name: r'deleteHabitProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteHabitHash,
          dependencies: DeleteHabitFamily._dependencies,
          allTransitiveDependencies:
              DeleteHabitFamily._allTransitiveDependencies,
          habitId: habitId,
        );

  DeleteHabitProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.habitId,
  }) : super.internal();

  final String habitId;

  @override
  Override overrideWith(
    FutureOr<bool> Function(DeleteHabitRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteHabitProvider._internal(
        (ref) => create(ref as DeleteHabitRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        habitId: habitId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _DeleteHabitProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteHabitProvider && other.habitId == habitId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, habitId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteHabitRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `habitId` of this provider.
  String get habitId;
}

class _DeleteHabitProviderElement extends AutoDisposeFutureProviderElement<bool>
    with DeleteHabitRef {
  _DeleteHabitProviderElement(super.provider);

  @override
  String get habitId => (origin as DeleteHabitProvider).habitId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
