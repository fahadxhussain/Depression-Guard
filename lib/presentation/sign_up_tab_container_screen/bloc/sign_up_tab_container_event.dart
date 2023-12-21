// ignore_for_file: must_be_immutable

part of 'sign_up_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpTabContainerEvent extends Equatable {}

/// Event that is dispatched when the SignUpTabContainer widget is first created.
class SignUpTabContainerInitialEvent extends SignUpTabContainerEvent {
  @override
  List<Object?> get props => [];
}
