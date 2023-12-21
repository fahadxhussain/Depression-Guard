import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/journalcomponent_item_model.dart';
import 'package:depression_guard_app/presentation/um_6_mood_tracker_journal_screen/models/um_6_mood_tracker_journal_model.dart';
part 'um_6_mood_tracker_journal_event.dart';
part 'um_6_mood_tracker_journal_state.dart';

/// A bloc that manages the state of a Um6MoodTrackerJournal according to the event that is dispatched to it.
class Um6MoodTrackerJournalBloc
    extends Bloc<Um6MoodTrackerJournalEvent, Um6MoodTrackerJournalState> {
  Um6MoodTrackerJournalBloc(Um6MoodTrackerJournalState initialState)
      : super(initialState) {
    on<Um6MoodTrackerJournalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Um6MoodTrackerJournalInitialEvent event,
    Emitter<Um6MoodTrackerJournalState> emit,
  ) async {
    emit(state.copyWith(
        um6MoodTrackerJournalModelObj:
            state.um6MoodTrackerJournalModelObj?.copyWith(
      journalcomponentItemList: fillJournalcomponentItemList(),
    )));
  }

  List<JournalcomponentItemModel> fillJournalcomponentItemList() {
    return [
      JournalcomponentItemModel(
          myJournal: "My\nJournal",
          journalImage3: ImageConstant.imgVectorPrimarycontainer)
    ];
  }
}
