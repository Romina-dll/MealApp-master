import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/models/note.dart';
import 'package:untitled3/widgets/new_note.dart';
import 'package:untitled3/widgets/note_list.dart';

class Notes extends StatefulWidget{
  Notes({super.key});



  @override
  State<Notes> createState() {
    // TODO: implement createState
    return _Notes();
  }
}

class _Notes extends State<Notes>{
  final _titleController = TextEditingController();
  final _mainTextController = TextEditingController();
  final _searchController = TextEditingController();
   List<Note> _searchedNoteList = [];
  List<Note> _noteList = [
    Note(title: 'First Note', isCheck: false,mainText: 'ddddddddssssssssssssswswswswswwswvbvbvvbvbbvbvbvbvbvbvbbvbhbhbh bhbh bhbddd'),
    Note(title: 'second Note', isCheck: false,mainText: 'ddddddddddd'),
    Note(title: 'third Note', isCheck: false,mainText: 'ddddddddddd'),
    Note(title: 'third Noteeeeeee', isCheck: false,mainText: 'ddddddddddd'),
    Note(title: 'First Note', isCheck: false,mainText: 'ddddddddddd'),
    Note(title: 'second Note', isCheck: false,mainText: 'ddddddddddd'),
    Note(title: 'third Note', isCheck: false,mainText: 'ddddddddddd'),
    Note(title: 'third Noteeeeeee', isCheck: false,mainText: 'ddddddddddd'),
  ];

  @override
  void dispose(){
    _titleController.dispose();
    _mainTextController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _openAddNewNote(){
    showModalBottomSheet(context: context,
        useSafeArea: true,
        builder:(ctx) => NewNote()
    );
  }

  void _searchList(){

  }

  void _addNewNote(Note note){
    _noteList.add(note);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.draw),
        actions: [
          IconButton(
            onPressed: _openAddNewNote,
            icon: Icon(Icons.add) ,
            color: Colors.black,
          )
        ],
      ),
      body:Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child:  Padding(
              padding: EdgeInsets.symmetric(  horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      onTap: (){
                        _searchList();
                      },
                      controller: _searchController,
                      decoration: InputDecoration(
                          hintText: 'Search note  ...',
                          icon: Icon(Icons.search)
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text('   All ToDos' ,
                    style: TextStyle(
                        color: Colors.black ,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Expanded(child: NoteList(notes: _noteList,))
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20,right: 10),
            alignment: Alignment.bottomRight,
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.add_box_rounded, size: 45,),
              color: Theme.of(context).primaryColor,

            ),
          )
        ],
      )
     
    );
  }
}