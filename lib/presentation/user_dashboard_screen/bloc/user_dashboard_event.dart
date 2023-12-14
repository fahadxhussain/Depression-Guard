// ignore_for_file: must_be_immutable

part of 'user_dashboard_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserDashboard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserDashboardEvent extends Equatable {}

/// Event that is dispatched when the UserDashboard widget is first created.
class UserDashboardInitialEvent extends UserDashboardEvent {
  @override
  List<Object?> get props => [];
}
