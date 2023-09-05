part of 'add_notes_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSucscss extends AddNoteState {}

class AddNoteFailur extends AddNoteState {
  final String errMessage;

  AddNoteFailur(this.errMessage);
}
