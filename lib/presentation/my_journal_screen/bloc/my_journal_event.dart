// ignore_for_file: must_be_immutable

part of 'my_journal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyJournal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyJournalEvent extends Equatable {}

/// Event that is dispatched when the MyJournal widget is first created.
class MyJournalInitialEvent extends MyJournalEvent {
  @override
  List<Object?> get props => [];
}
