import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:depression_guard_app/presentation/my_journal_screen/models/my_journal_model.dart';
part 'my_journal_event.dart';
part 'my_journal_state.dart';

/// A bloc that manages the state of a MyJournal according to the event that is dispatched to it.
class MyJournalBloc extends Bloc<MyJournalEvent, MyJournalState> {
  MyJournalBloc(MyJournalState initialState) : super(initialState) {
    on<MyJournalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyJournalInitialEvent event,
    Emitter<MyJournalState> emit,
  ) async {}
}
