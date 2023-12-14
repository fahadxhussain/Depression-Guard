// ignore_for_file: must_be_immutable

part of 'um_6_mood_tracker_journal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Um6MoodTrackerJournal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Um6MoodTrackerJournalEvent extends Equatable {}

/// Event that is dispatched when the Um6MoodTrackerJournal widget is first created.
class Um6MoodTrackerJournalInitialEvent extends Um6MoodTrackerJournalEvent {
  @override
  List<Object?> get props => [];
}
