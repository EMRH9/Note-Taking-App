import 'package:flutter/material.dart';
import 'package:keep_note/widgets/my_app_bar.dart';
import 'package:keep_note/widgets/notes_lable_card.dart';

class NoteListScreen extends StatelessWidget {
  const NoteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Personal'),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 20,
        children: [],
      ),
    );
  }
}
