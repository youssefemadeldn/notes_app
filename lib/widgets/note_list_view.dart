import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_note_item.dart';

class NotesListViwe extends StatelessWidget {
  const NotesListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: NoteItem(),
        );
      }),
    );
  }
}
