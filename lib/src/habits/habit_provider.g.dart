// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$habitsDailyHash() => r'31468dc518aa886396c01fdb805f8b1eb6db2dfd';

/// See also [habitsDaily].
@ProviderFor(habitsDaily)
final habitsDailyProvider = AutoDisposeFutureProvider<Habits?>.internal(
  habitsDaily,
  name: r'habitsDailyProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$habitsDailyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HabitsDailyRef = AutoDisposeFutureProviderRef<Habits?>;
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

String _$updateHabitHash() => r'89b30dddde9a2a93d98a56e6f88de0c1f22cbc4d';

/// See also [updateHabit].
@ProviderFor(updateHabit)
const updateHabitProvider = UpdateHabitFamily();

/// See also [updateHabit].
class UpdateHabitFamily extends Family<AsyncValue<bool>> {
  /// See also [updateHabit].
  const UpdateHabitFamily();

  /// See also [updateHabit].
  UpdateHabitProvider call(
    Habit habit,
  ) {
    return UpdateHabitProvider(
      habit,
    );
  }

  @override
  UpdateHabitProvider getProviderOverride(
    covariant UpdateHabitProvider provider,
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
  String? get name => r'updateHabitProvider';
}

/// See also [updateHabit].
class UpdateHabitProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [updateHabit].
  UpdateHabitProvider(
    Habit habit,
  ) : this._internal(
          (ref) => updateHabit(
            ref as UpdateHabitRef,
            habit,
          ),
          from: updateHabitProvider,
          name: r'updateHabitProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateHabitHash,
          dependencies: UpdateHabitFamily._dependencies,
          allTransitiveDependencies:
              UpdateHabitFamily._allTransitiveDependencies,
          habit: habit,
        );

  UpdateHabitProvider._internal(
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
    FutureOr<bool> Function(UpdateHabitRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateHabitProvider._internal(
        (ref) => create(ref as UpdateHabitRef),
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
    return _UpdateHabitProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateHabitProvider && other.habit == habit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, habit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateHabitRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `habit` of this provider.
  Habit get habit;
}

class _UpdateHabitProviderElement extends AutoDisposeFutureProviderElement<bool>
    with UpdateHabitRef {
  _UpdateHabitProviderElement(super.provider);

  @override
  Habit get habit => (origin as UpdateHabitProvider).habit;
}

String _$updateHabitStatusHash() => r'b1563b752f8524116d793471ad6b69d63e68fb80';

/// See also [updateHabitStatus].
@ProviderFor(updateHabitStatus)
const updateHabitStatusProvider = UpdateHabitStatusFamily();

/// See also [updateHabitStatus].
class UpdateHabitStatusFamily extends Family<AsyncValue<bool>> {
  /// See also [updateHabitStatus].
  const UpdateHabitStatusFamily();

  /// See also [updateHabitStatus].
  UpdateHabitStatusProvider call(
    Habit habit,
  ) {
    return UpdateHabitStatusProvider(
      habit,
    );
  }

  @override
  UpdateHabitStatusProvider getProviderOverride(
    covariant UpdateHabitStatusProvider provider,
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
  String? get name => r'updateHabitStatusProvider';
}

/// See also [updateHabitStatus].
class UpdateHabitStatusProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [updateHabitStatus].
  UpdateHabitStatusProvider(
    Habit habit,
  ) : this._internal(
          (ref) => updateHabitStatus(
            ref as UpdateHabitStatusRef,
            habit,
          ),
          from: updateHabitStatusProvider,
          name: r'updateHabitStatusProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateHabitStatusHash,
          dependencies: UpdateHabitStatusFamily._dependencies,
          allTransitiveDependencies:
              UpdateHabitStatusFamily._allTransitiveDependencies,
          habit: habit,
        );

  UpdateHabitStatusProvider._internal(
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
    FutureOr<bool> Function(UpdateHabitStatusRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateHabitStatusProvider._internal(
        (ref) => create(ref as UpdateHabitStatusRef),
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
    return _UpdateHabitStatusProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateHabitStatusProvider && other.habit == habit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, habit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateHabitStatusRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `habit` of this provider.
  Habit get habit;
}

class _UpdateHabitStatusProviderElement
    extends AutoDisposeFutureProviderElement<bool> with UpdateHabitStatusRef {
  _UpdateHabitStatusProviderElement(super.provider);

  @override
  Habit get habit => (origin as UpdateHabitStatusProvider).habit;
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
