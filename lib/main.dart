import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:libraryproject/services/notes_service.dart';
import 'package:libraryproject/views/note_list.dart';

void setuplocator() {
  GetIt.instance.registerLazySingleton(() => NotesService());
}

void main() {
  setuplocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NoteList(),
    );
  }
}
