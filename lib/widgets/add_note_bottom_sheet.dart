import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:noteapp/widgets/add_note_form.dart';
//import 'package:noteapp/widgets/custom_buttom.dart';
//import 'package:noteapp/widgets/custom_text_field.dart';

class AddNoteBottumSheet extends StatefulWidget {
  const AddNoteBottumSheet({super.key});

  @override
  State<AddNoteBottumSheet> createState() => _AddNoteBottumSheetState();
}

class _AddNoteBottumSheetState extends State<AddNoteBottumSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailur) {
            print("failed ${state.errMessage}");
          }

          if (state is AddNoteSucscss) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
