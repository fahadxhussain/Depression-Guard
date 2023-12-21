// ignore_for_file: must_be_immutable

part of 'um_5_tackling_depression_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Um5TacklingDepression widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Um5TacklingDepressionEvent extends Equatable {}

/// Event that is dispatched when the Um5TacklingDepression widget is first created.
class Um5TacklingDepressionInitialEvent extends Um5TacklingDepressionEvent {
  @override
  List<Object?> get props => [];
}
