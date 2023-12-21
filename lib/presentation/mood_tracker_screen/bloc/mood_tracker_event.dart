// ignore_for_file: must_be_immutable

part of 'mood_tracker_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MoodTracker widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MoodTrackerEvent extends Equatable {}

/// Event that is dispatched when the MoodTracker widget is first created.
class MoodTrackerInitialEvent extends MoodTrackerEvent {
  @override
  List<Object?> get props => [];
}
