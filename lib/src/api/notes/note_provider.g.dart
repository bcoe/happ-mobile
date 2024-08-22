// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notesHash() => r'9bf5f355a80c383e437e0cab239093c4453ad2e9';

/// See also [notes].
@ProviderFor(notes)
final notesProvider = AutoDisposeFutureProvider<Notes?>.internal(
  notes,
  name: r'notesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$notesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NotesRef = AutoDisposeFutureProviderRef<Notes?>;
String _$createOrUpdateNoteHash() =>
    r'b2948c9e5f0207bb888a17a885211699c90fd920';

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

/// See also [createOrUpdateNote].
@ProviderFor(createOrUpdateNote)
const createOrUpdateNoteProvider = CreateOrUpdateNoteFamily();

/// See also [createOrUpdateNote].
class CreateOrUpdateNoteFamily extends Family<AsyncValue<bool>> {
  /// See also [createOrUpdateNote].
  const CreateOrUpdateNoteFamily();

  /// See also [createOrUpdateNote].
  CreateOrUpdateNoteProvider call(
    Note note,
  ) {
    return CreateOrUpdateNoteProvider(
      note,
    );
  }

  @override
  CreateOrUpdateNoteProvider getProviderOverride(
    covariant CreateOrUpdateNoteProvider provider,
  ) {
    return call(
      provider.note,
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
  String? get name => r'createOrUpdateNoteProvider';
}

/// See also [createOrUpdateNote].
class CreateOrUpdateNoteProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [createOrUpdateNote].
  CreateOrUpdateNoteProvider(
    Note note,
  ) : this._internal(
          (ref) => createOrUpdateNote(
            ref as CreateOrUpdateNoteRef,
            note,
          ),
          from: createOrUpdateNoteProvider,
          name: r'createOrUpdateNoteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createOrUpdateNoteHash,
          dependencies: CreateOrUpdateNoteFamily._dependencies,
          allTransitiveDependencies:
              CreateOrUpdateNoteFamily._allTransitiveDependencies,
          note: note,
        );

  CreateOrUpdateNoteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.note,
  }) : super.internal();

  final Note note;

  @override
  Override overrideWith(
    FutureOr<bool> Function(CreateOrUpdateNoteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateOrUpdateNoteProvider._internal(
        (ref) => create(ref as CreateOrUpdateNoteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        note: note,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _CreateOrUpdateNoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateOrUpdateNoteProvider && other.note == note;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, note.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateOrUpdateNoteRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `note` of this provider.
  Note get note;
}

class _CreateOrUpdateNoteProviderElement
    extends AutoDisposeFutureProviderElement<bool> with CreateOrUpdateNoteRef {
  _CreateOrUpdateNoteProviderElement(super.provider);

  @override
  Note get note => (origin as CreateOrUpdateNoteProvider).note;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
