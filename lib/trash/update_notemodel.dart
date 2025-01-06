// import 'package:flutter/material.dart';
// import 'package:samsung_notes/screens/create_note/note_model.dart';
// import 'package:samsung_notes/screens/update%20note/update_note.dart';

// class ReplaceNote {
//    final Note note;
//    final int index;
//    final Function onNoteCreated;


//   ReplaceNote({
//     required this.note,
//     required this.index,
//     required this.onNoteCreated
//     });
// }

// class ReplaceNoteCard extends StatelessWidget {
//   final Note note;
//   final int index;
//   final Function onNoteCreated;


//   const ReplaceNoteCard({
//     super.key,
//     required this.note,
//     required this.index,
//     required this.onNoteCreated
//   });

//   @override
//   Widget build(BuildContext context) {



//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           constraints: BoxConstraints(
//             minHeight: 160.0,
//             minWidth: 100,
//           ),
//           child: GestureDetector(
//             onTap: () => Navigator.of(context).push(MaterialPageRoute(
//               builder: (context) => UpdateNote(note:note,index:index,onNoteCreated: onNoteCreated,)
//             )).then(
//               (ReplaceNote){
//                 if (ReplaceNote!=null) {
//                   return ReplaceNote;
//                 }
//               }
//             ),
//             child: Card(
//               margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: Text(
//                     textAlign: TextAlign.start,
//                     note.body,
//                     style: const TextStyle(fontSize: 16),
//                     maxLines: 5,
//                     overflow: TextOverflow.fade,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         // Title outside the card with word wrapping
//         Padding(
//           padding: const EdgeInsets.only(left: 15, right: 15),
//           child: Text(
//             note.title,
//             style: const TextStyle(
//               fontWeight: FontWeight.w600,
//               fontSize: 17,
//             ),
//             softWrap: true, // Allows wrapping of long words
//             overflow: TextOverflow.ellipsis, // Adds ellipsis for overflow
//           ),
//         ),
//       ],
//     );
//   }
// }
