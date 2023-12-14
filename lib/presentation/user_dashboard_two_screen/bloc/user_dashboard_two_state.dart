// ignore_for_file: must_be_immutable

part of 'user_dashboard_two_bloc.dart';

/// Represents the state of UserDashboardTwo in the application.
class UserDashboardTwoState extends Equatable {
  UserDashboardTwoState({
    this.sliderIndex = 0,
    this.userDashboardTwoModelObj,
  });

  UserDashboardTwoModel? userDashboardTwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        userDashboardTwoModelObj,
      ];
  UserDashboardTwoState copyWith({
    int? sliderIndex,
    UserDashboardTwoModel? userDashboardTwoModelObj,
  }) {
    return UserDashboardTwoState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      userDashboardTwoModelObj:
          userDashboardTwoModelObj ?? this.userDashboardTwoModelObj,
    );
  }
}
