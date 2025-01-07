import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:samsung_notes/screens/create_note/note_model.dart';

class CreateNote extends HookWidget {
  const CreateNote({super.key});

  @override
  Widget build(BuildContext context) {
    final titleCntroller = useTextEditingController();
    final bodyController = useTextEditingController();

    void saveNote() {
      if (titleCntroller.text.isEmpty || bodyController.text.isEmpty) {
        Navigator.pop(context);
        return;
      }
      final note = Note(
        title: titleCntroller.text,
        body: bodyController.text,
      );
      Navigator.pop(context, note);
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              saveNote();
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: TextField(
          controller: titleCntroller,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          decoration: InputDecoration(
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
            icon: Icon(Icons.menu_book_rounded),
            tooltip: "Reading Mode",
          ),
          PopupMenuButton<String>(
            icon: Icon(Icons.add),
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Row(
                            spacing: 10,
                            children: [
                              Icon(
                                Icons.image,
                                color: Colors.black,
                              ),
                              Text(
                                "Image",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Row(
                            spacing: 10,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.black,
                              ),
                              Text(
                                "Camera",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Row(
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.picture_as_pdf_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            "PDF",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),
                ],
              )),
              PopupMenuDivider(),
              PopupMenuItem(
                  child: Row(
                children: [
                  Icon(Icons.mic_none),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Voice recording")
                ],
              )),
              PopupMenuItem(
                  child: Row(
                children: [
                  Icon(Icons.music_note_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Audio file"),
                ],
              )),
              PopupMenuItem(
                  child: Row(
                children: [
                  Icon(Icons.color_lens_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Drawing"),
                ],
              )),
              PopupMenuItem(
                  child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Text box"),
                ],
              )),
            ],
          ),
          PopupMenuButton<String>(
            constraints: BoxConstraints(minWidth: 250),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            itemBuilder: (context) => [
              PopupMenuItem(child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Row(
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.edit_document,
                            color: Colors.black,
                          ),
                          Text(
                            "Edit cover",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),),
              PopupMenuItem(child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Row(
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.notes_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            "Page template",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ))),
              PopupMenuItem(child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Row(
                        spacing: 10,
                        children: [
                          Icon(
                            Icons.color_lens_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            "Background colour",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ))),
              PopupMenuDivider(),
              PopupMenuItem(child: Text("Full screen")),
              PopupMenuItem(child: Text("Add to")),
              PopupMenuItem(child: Text("Tag")),
              PopupMenuItem(child: Text("Save as file")),
              PopupMenuDivider(),
              PopupMenuItem(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete_outline_outlined))
                ],
              ))
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          controller: bodyController,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
          maxLines: null,
        ),
      ),
    );
  }
}

// class PopupMenuExample extends HookWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Use a hook to manage the selected value
//     final selectedOption = useState<String>('None');

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Popup Menu with Hooks'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Selected Option: ${selectedOption.value}',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 20),
//             PopupMenuButton<String>(
//               icon: Icon(Icons.more_vert), // Menu button icon
//               onSelected: (String value) {
//                 // Update state using the hook
//                 selectedOption.value = value;
//               },
//               itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
//                 PopupMenuItem<String>(
//                   value: 'Option 1',
//                   child: Text('Option 1'),
//                 ),
//                 PopupMenuItem<String>(
//                   value: 'Option 2',
//                   child: Text('Option 2'),
//                 ),
//                 PopupMenuItem<String>(
//                   value: 'Option 3',
//                   child: Text('Option 3'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
