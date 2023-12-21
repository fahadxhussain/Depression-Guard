// ignore_for_file: must_be_immutable

part of 'um_6_mood_tracker_journal_bloc.dart';

/// Represents the state of Um6MoodTrackerJournal in the application.
class Um6MoodTrackerJournalState extends Equatable {
  Um6MoodTrackerJournalState({this.um6MoodTrackerJournalModelObj});

  Um6MoodTrackerJournalModel? um6MoodTrackerJournalModelObj;

  @override
  List<Object?> get props => [
        um6MoodTrackerJournalModelObj,
      ];
  Um6MoodTrackerJournalState copyWith(
      {Um6MoodTrackerJournalModel? um6MoodTrackerJournalModelObj}) {
    return Um6MoodTrackerJournalState(
      um6MoodTrackerJournalModelObj:
          um6MoodTrackerJournalModelObj ?? this.um6MoodTrackerJournalModelObj,
    );
  }
}
