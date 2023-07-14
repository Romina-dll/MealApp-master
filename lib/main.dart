import 'package:flutter/material.dart';
import 'package:untitled3/widgets/notes.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.primaryContainer,
          foregroundColor: kColorScheme.onPrimaryContainer
        ),
        textTheme: ThemeData().textTheme.copyWith(
          bodyLarge: TextStyle(
            fontWeight: FontWeight.w100,
            color: Colors.black,
            fontSize: 24
          )
        ),
      ),
      home: Notes(),
    )
  );
}

var kColorScheme = ColorScheme.fromSeed(
    seedColor: Color.fromARGB(255, 44, 82, 87)
);
