// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:samsung_notes/screens/create_note/note_model.dart';

// class UpdateNote extends HookWidget {
//   final Note note;
//   final int index;
//   final Function onNoteCreated;

//   const UpdateNote({
//     super.key,
//     required this.note,
//     required this.index,
//     required this.onNoteCreated,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final updatedTitleController = useTextEditingController(text: note.title);
//     final updatedBodyController = useTextEditingController(text: note.body);

//     void updateNote() {
//       if (updatedTitleController.text.isEmpty ||
//           updatedBodyController.text.isEmpty) {
//         return;
//       }
//       final updatedNote = Note(
//         title: updatedTitleController.text,
//         body: updatedBodyController.text,
//       );
//       Navigator.pop(context, updatedNote);
//     }

//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             onPressed: () {
//               updateNote();
//             },
//             icon: Icon(Icons.arrow_back_ios)),
//         title: TextField(
//           controller: updatedTitleController,
//           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//           decoration: InputDecoration(
//               hintText: "Title",
//               hintStyle: TextStyle(
//                   color: Colors.black54,
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold),
//               border: InputBorder.none),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.edit),
//             tooltip: "Edit",
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.search),
//             tooltip: "Search",
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.more_vert_rounded),
//             tooltip: "More Options",
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: TextField(
//           controller: updatedBodyController,
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//           decoration: InputDecoration(
//             border: InputBorder.none,
//           ),
//           maxLines: null,
//         ),
//       ),
//     );
//   }
// }
