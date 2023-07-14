import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/models/note.dart';


class MainText extends StatelessWidget{
  MainText({super.key,required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(note.title),
      ),
      body: Card(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20 , horizontal:  30),
          child: Text(note.mainText ,
            style: Theme.of(context).textTheme!.bodyLarge,
          ),
        )
      ),
    );
  }
}