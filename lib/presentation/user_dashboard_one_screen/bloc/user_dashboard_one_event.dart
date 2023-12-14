// ignore_for_file: must_be_immutable

part of 'user_dashboard_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserDashboardOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserDashboardOneEvent extends Equatable {}

/// Event that is dispatched when the UserDashboardOne widget is first created.
class UserDashboardOneInitialEvent extends UserDashboardOneEvent {
  @override
  List<Object?> get props => [];
}
