import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:happ_flutter/src/api/notes/note.dart';
import 'package:happ_flutter/src/api/notes/note_provider.dart';
import 'package:happ_flutter/src/widgets/custom_button.dart';

class NotesView extends ConsumerStatefulWidget {
  const NotesView({super.key});

  static const routeName = '/habits/notes/';

  @override
  NotesViewState createState() => NotesViewState();
}

class NotesViewState extends ConsumerState<NotesView> {
  late TextEditingController textEditingController;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var note = ref.watch(notesProvider).value?.note ?? const Note(text: "");

    textEditingController = TextEditingController(text: note.text);

    Future<void> updateNote(WidgetRef ref) async {
      note = note.copyWith(text: textEditingController.text);
      await ref.read(createOrUpdateNoteProvider(note).future);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Today\'s Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 5,
                  maxLines: 100,
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              // Expanded(
              //   child: ListView(
              //     children: [
              //        // TODO show previous days' notes here
              //     ],
              //   ),
              // ),
              CustomButton(
                  text: "Update",
                  onPress: () async {
                    await updateNote(ref);
                    context.go('/habits');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
