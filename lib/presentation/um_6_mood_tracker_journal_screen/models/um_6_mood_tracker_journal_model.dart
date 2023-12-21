// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'journalcomponent_item_model.dart';

/// This class defines the variables used in the [um_6_mood_tracker_journal_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Um6MoodTrackerJournalModel extends Equatable {
  Um6MoodTrackerJournalModel({this.journalcomponentItemList = const []}) {}

  List<JournalcomponentItemModel> journalcomponentItemList;

  Um6MoodTrackerJournalModel copyWith(
      {List<JournalcomponentItemModel>? journalcomponentItemList}) {
    return Um6MoodTrackerJournalModel(
      journalcomponentItemList:
          journalcomponentItemList ?? this.journalcomponentItemList,
    );
  }

  @override
  List<Object?> get props => [journalcomponentItemList];
}
