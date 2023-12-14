import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:depression_guard_app/presentation/audio_input_screen/models/audio_input_model.dart';
part 'audio_input_event.dart';
part 'audio_input_state.dart';

/// A bloc that manages the state of a AudioInput according to the event that is dispatched to it.
class AudioInputBloc extends Bloc<AudioInputEvent, AudioInputState> {
  AudioInputBloc(AudioInputState initialState) : super(initialState) {
    on<AudioInputInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AudioInputInitialEvent event,
    Emitter<AudioInputState> emit,
  ) async {}
}
