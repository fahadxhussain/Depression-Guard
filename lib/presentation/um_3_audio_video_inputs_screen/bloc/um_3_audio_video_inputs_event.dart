// ignore_for_file: must_be_immutable

part of 'um_3_audio_video_inputs_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Um3AudioVideoInputs widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Um3AudioVideoInputsEvent extends Equatable {}

/// Event that is dispatched when the Um3AudioVideoInputs widget is first created.
class Um3AudioVideoInputsInitialEvent extends Um3AudioVideoInputsEvent {
  @override
  List<Object?> get props => [];
}
