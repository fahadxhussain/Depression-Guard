// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [mood_tracker_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MoodTrackerModel extends Equatable {
  MoodTrackerModel() {}

  MoodTrackerModel copyWith() {
    return MoodTrackerModel();
  }

  @override
  List<Object?> get props => [];
}
