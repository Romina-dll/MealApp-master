import 'package:flutter/cupertino.dart';
import 'package:untitled3/models/note.dart';
import 'package:untitled3/widgets/note_item.dart';

class NoteList extends StatelessWidget{
  NoteList({super.key , required this.notes});


  final List<Note> notes;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (ctx , index) => Dismissible(
        key: ValueKey(notes[index]),
        onDismissed: (direction){},
        child:NoteItem(note : notes[index])
      ),
    );
  }
}