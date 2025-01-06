import 'package:flutter/material.dart';
import 'package:samsung_notes/screens/create_note/create_note.dart';

class Note {
  final String title;
  final String body;

  Note({required this.title, required this.body});
}

class NoteCard extends StatelessWidget {
  final Note note;

  const NoteCard({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(
            minHeight: 160.0,
            minWidth: 100,
          ),
          child: GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CreateNote())),
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
