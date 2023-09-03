import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_note_item.dart';

class NotesListViwe extends StatelessWidget {
  const NotesListViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                NoteItem(),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
