import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:depression_guard_app/presentation/user_dashboard_screen/models/user_dashboard_model.dart';
part 'user_dashboard_event.dart';
part 'user_dashboard_state.dart';

/// A bloc that manages the state of a UserDashboard according to the event that is dispatched to it.
class UserDashboardBloc extends Bloc<UserDashboardEvent, UserDashboardState> {
  UserDashboardBloc(UserDashboardState initialState) : super(initialState) {
    on<UserDashboardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserDashboardInitialEvent event,
    Emitter<UserDashboardState> emit,
  ) async {}
}
