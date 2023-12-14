import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:depression_guard_app/presentation/mood_tracker_screen/models/mood_tracker_model.dart';
part 'mood_tracker_event.dart';
part 'mood_tracker_state.dart';

/// A bloc that manages the state of a MoodTracker according to the event that is dispatched to it.
class MoodTrackerBloc extends Bloc<MoodTrackerEvent, MoodTrackerState> {
  MoodTrackerBloc(MoodTrackerState initialState) : super(initialState) {
    on<MoodTrackerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MoodTrackerInitialEvent event,
    Emitter<MoodTrackerState> emit,
  ) async {}
}
