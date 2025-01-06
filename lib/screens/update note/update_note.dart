import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:samsung_notes/screens/create_note/note_model.dart';

class ReplaceNote extends StatelessWidget {
  final Note note;
  final int index;
  final Function(Note updatedNote, int index) onNoteUpdated;

  const ReplaceNote({
    super.key,
    required this.note,
    required this.index,
    required this.onNoteUpdated,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: const BoxConstraints(
            minHeight: 160.0,
            minWidth: 100,
          ),
          child: GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => UpdateNote(
                note: note,
                index: index,
                onNoteUpdated: onNoteUpdated,
              ),
            )),
            child: Card(
              margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    textAlign: TextAlign.start,
                    note.body,
                    style: const TextStyle(fontSize: 16),
                    maxLines: 5,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Text(
            note.title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class UpdateNote extends HookWidget {
  final Note note;
  final int index;
  final Function(Note updatedNote, int index) onNoteUpdated;

  const UpdateNote({
    super.key,
    required this.note,
    required this.index,
    required this.onNoteUpdated,
  });

  @override
  Widget build(BuildContext context) {
    final updatedTitleController = useTextEditingController(text: note.title);
    final updatedBodyController = useTextEditingController(text: note.body);

    void updateNote() {
      if (updatedTitleController.text.isEmpty ||
          updatedBodyController.text.isEmpty) {
        return;
      }
      final updatedNote = Note(
        title: updatedTitleController.text,
        body: updatedBodyController.text,
      );
      onNoteUpdated(updatedNote, index);
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              updateNote();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: TextField(
          controller: updatedTitleController,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          decoration: const InputDecoration(
              hintText: "Title",
              hintStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              border: InputBorder.none),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
            tooltip: "Edit",
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            tooltip: "Search",
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
            tooltip: "More Options",
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          controller: updatedBodyController,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          maxLines: null,
        ),
      ),
    );
  }
}



