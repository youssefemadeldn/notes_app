import 'package:flutter/material.dart';
import 'package:noteapp/widgets/custom_buttom.dart';
import 'package:noteapp/widgets/custom_text_field.dart';

class AddNoteBottumSheet extends StatelessWidget {
  const AddNoteBottumSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            CustomeTextField(
              hintText: 'Titel',
            ),
            SizedBox(
              height: 16,
            ),
            CustomeTextField(
              hintText: 'Content',
              maxLines: 4,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButton(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
