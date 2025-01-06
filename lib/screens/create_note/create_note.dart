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
            icon: Icon(Icons.remove_red_eye),
            tooltip: "Reading Mode",
          ),
          TextButton(
              onPressed: () {
                saveNote();
              },
              child: Text(
                'Save',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )),
          IconButton(
            onPressed: () {
              
            },
            icon: Icon(Icons.more_vert_rounded),
            tooltip: "More Opptions",
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
