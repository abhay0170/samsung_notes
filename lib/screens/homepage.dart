import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:samsung_notes/drower/drower.dart';
import 'package:samsung_notes/screens/create_note/create_note.dart';
import 'package:samsung_notes/screens/create_note/note_model.dart';
import 'package:samsung_notes/screens/update%20note/update_note.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final notes = useState<List<Note>>([]);

    void addNote(Note note) {
      notes.value.add(note);
    }

    replaceNote(Note replaceNote, int index) {
      notes.value[index] = replaceNote;
    }

    return Scaffold(
      key: NotesDrower.drowerKey,
      drawer: const NotesDrower(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            expandedHeight: 250.0,
            pinned: false,
            floating: true,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Opacity(
                  opacity: 1.0,
                  child: Text(
                    "All Notes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            pinned: true,
            toolbarHeight: 50,
            title: Title(
              color: Theme.of(context).colorScheme.surface,
              child: Text("All Notes"),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.picture_as_pdf)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Theme.of(context).colorScheme.surface,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(shadowColor: null),
                          child: Row(
                            children: [
                              Icon(
                                Icons.sort,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              Text("Date created"),
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_downward)),
                      ],
                    ),
                  ),
                  Container(
                    color: Theme.of(context).colorScheme.surface,
                    height: MediaQuery.of(context).size.height - 50,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.6,
                          crossAxisCount: 3,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                        ),
                        itemCount: notes.value.length,
                        itemBuilder: (context, index) {
                          return ReplaceNote(
                            note: notes.value[index],
                            index: index,
                            onNoteUpdated: (updatedNote, index) {
                              replaceNote(updatedNote, index);
                            },
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateNote(),
            ),
          ).then((note) {
            if (note != null) {
              addNote(note);
            }
          });
        },
        child: Icon(Icons.edit_document),
      ),
    );
  }
}




// return NoteCard(note: notes.value[index],);
                        // UpdateNote(
                        //   note: notes.value[index],
                        //   index: index,
                        //   onNoteCreated: (updatedNote){
                        //     replaceNote(updatedNote, index);
                        //   }
                        // );
