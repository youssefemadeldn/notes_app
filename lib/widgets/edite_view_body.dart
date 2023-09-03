import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_app_bar.dart';

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
        ],
      ),
    );
  }
}
