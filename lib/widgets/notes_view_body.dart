import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_app_bar.dart';
//import 'package:noteapp/widgets/custom_note_item.dart';
import 'package:noteapp/widgets/note_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 55,
          ),
          CustomeAppBar(
            titel: 'Notes',
            icon: Icons.search,
          ),
          NotesListViwe(),
        ],
      ),
    );
  }
}
