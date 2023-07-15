import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:untitled3/models/note.dart';
import 'package:untitled3/screens/main_text.dart';
import 'package:untitled3/widgets/notes.dart';

import 'note_list.dart';

class NoteItem extends StatefulWidget{
  final Note note;

  NoteItem({super.key, required this.note });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NoteItems();
  }
}

class NoteItems extends State<NoteItem>{


  void _selectedNote(){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => MainText(note: widget.note,)));
  }

  void _removeNote(){

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Card(
      child: InkWell(
        onTap: _selectedNote,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15 , horizontal: 20),
          child: Row(
            children: [
              Checkbox(value: widget.note.isCheck, onChanged: (bool? newValue){
                setState(() {
                  widget.note.isCheck = newValue!;
                });
              }),
              SizedBox(width: 20,),
              Text(
                widget.note.title ,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                softWrap: true,
              ),
              Spacer(),
              IconButton(
                onPressed: _removeNote,
                icon: Icon(Icons.delete) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}