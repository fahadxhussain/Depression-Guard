// ignore_for_file: must_be_immutable

part of 'mood_tracker_bloc.dart';

/// Represents the state of MoodTracker in the application.
class MoodTrackerState extends Equatable {
  MoodTrackerState({this.moodTrackerModelObj});

  MoodTrackerModel? moodTrackerModelObj;

  @override
  List<Object?> get props => [
        moodTrackerModelObj,
      ];
  MoodTrackerState copyWith({MoodTrackerModel? moodTrackerModelObj}) {
    return MoodTrackerState(
      moodTrackerModelObj: moodTrackerModelObj ?? this.moodTrackerModelObj,
    );
  }
}
