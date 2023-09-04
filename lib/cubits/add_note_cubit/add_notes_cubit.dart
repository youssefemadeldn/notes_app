import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'add_notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}
