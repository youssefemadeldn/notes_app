import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_app_bar.dart';
import 'package:noteapp/widgets/custom_text_field.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

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
            titel: 'Edite Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomeTextField(hintText: 'Titel'),
          SizedBox(
            height: 16,
          ),
          CustomeTextField(
            hintText: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
