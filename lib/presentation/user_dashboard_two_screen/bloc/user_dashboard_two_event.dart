// ignore_for_file: must_be_immutable

part of 'user_dashboard_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserDashboardTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserDashboardTwoEvent extends Equatable {}

/// Event that is dispatched when the UserDashboardTwo widget is first created.
class UserDashboardTwoInitialEvent extends UserDashboardTwoEvent {
  @override
  List<Object?> get props => [];
}
