import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewNote extends StatefulWidget {
  NewNote({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NewNote();
  }
}

class _NewNote extends State<NewNote> {

  @override
  Widget build(BuildContext context) {

    return SizedBox(
        child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16,16, 16, 16),
        child: Expanded(
          child: Column(
            children: [
              TextField(
                maxLength: 50,
                decoration: InputDecoration(
                label: Text('Title'),
                hintText: 'Enter the title ..'
              ),
            ),
            Spacer(),
            TextField(
              decoration: InputDecoration(
                label: Text('Text'),
                hintText: 'main text ...'
              ),
            )
          ],
        ),
      ),
    )
    );
  }
}