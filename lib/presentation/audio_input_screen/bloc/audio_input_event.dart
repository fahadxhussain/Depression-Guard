// ignore_for_file: must_be_immutable

part of 'audio_input_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AudioInput widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AudioInputEvent extends Equatable {}

/// Event that is dispatched when the AudioInput widget is first created.
class AudioInputInitialEvent extends AudioInputEvent {
  @override
  List<Object?> get props => [];
}
