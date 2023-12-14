// ignore_for_file: must_be_immutable

part of 'user_dashboard_bloc.dart';

/// Represents the state of UserDashboard in the application.
class UserDashboardState extends Equatable {
  UserDashboardState({this.userDashboardModelObj});

  UserDashboardModel? userDashboardModelObj;

  @override
  List<Object?> get props => [
        userDashboardModelObj,
      ];
  UserDashboardState copyWith({UserDashboardModel? userDashboardModelObj}) {
    return UserDashboardState(
      userDashboardModelObj:
          userDashboardModelObj ?? this.userDashboardModelObj,
    );
  }
}
