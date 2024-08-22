import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:happ_flutter/src/api/api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'note.dart';

part 'note_provider.g.dart';

@riverpod
Future<Notes?> notes(NotesRef ref) async {
  Dio dio = await _getDio(ref);
  try {
    final response = await dio.get("/notes");
    return Notes.fromJson(response.data);
  } on DioException catch (e) {
    Sentry.captureException(e);
    return null;
  }
}

@riverpod
Future<bool> createOrUpdateNote(CreateOrUpdateNoteRef ref, Note note) async {
  Dio dio = await _getDio(ref);
  try {
    final response = await dio.post("/notes", data: note.toJson());
    return response.statusCode == 201;
  } on DioException catch (e) {
    Sentry.captureException(e);
    return false;
  }
}

Future<Dio> _getDio(Ref ref) async {
  return ref.read(apiClientProvider.future);
}
