import 'package:freezed_annotation/freezed_annotation.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Notes with _$Notes {
  const factory Notes({
    required Note note,
  }) = _Notes;

  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);
}

@freezed
class Note with _$Note {
  const factory Note({
    @JsonKey(name: 'note') required String text,
    @JsonKey(name: '_id') String? id,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
