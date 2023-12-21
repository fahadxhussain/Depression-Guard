// ignore_for_file: must_be_immutable

part of 'my_journal_bloc.dart';

/// Represents the state of MyJournal in the application.
class MyJournalState extends Equatable {
  MyJournalState({this.myJournalModelObj});

  MyJournalModel? myJournalModelObj;

  @override
  List<Object?> get props => [
        myJournalModelObj,
      ];
  MyJournalState copyWith({MyJournalModel? myJournalModelObj}) {
    return MyJournalState(
      myJournalModelObj: myJournalModelObj ?? this.myJournalModelObj,
    );
  }
}
