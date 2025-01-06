import 'package:flutter/material.dart';

class Folders extends StatelessWidget {
  const Folders({super.key});

  @override
  Widget build(BuildContext context) {
//     return  Scaffold(
// //       appBar: AppBar(
// //         leading: IconButton(onPressed: (){
// //           Navigator.pop(context);
// //         }, icon: Icon(Icons.arrow_back)),
// //         title: Text('Folders'),
// //       ),
// //     );
// //   }
// // }

// // class AnjayPage extends StatelessWidget {
// //   const AnjayPage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
//     // return Scaffold(
//       appBar: AppBar(
//         title: const Text('Notes'),
//       ),
//       body: GridView.builder(
//         padding: const EdgeInsets.all(10.0),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//           childAspectRatio: 1.0,
//         ),
//         itemCount: 10,
//         itemBuilder: (context, index) {
//           return Container(
//             padding: const EdgeInsets.all(8.0),
//             decoration: BoxDecoration(
//               color: Colors.amberAccent,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Center(
//               child: Text('Note ${index + 1}'),
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.pushNamed(context, '/create');
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// class CreateNotePage extends StatelessWidget {
//   const CreateNotePage({super.key});

//   @override
//   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: 'Content',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
