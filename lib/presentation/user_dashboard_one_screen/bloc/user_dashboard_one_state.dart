// ignore_for_file: must_be_immutable

part of 'user_dashboard_one_bloc.dart';

/// Represents the state of UserDashboardOne in the application.
class UserDashboardOneState extends Equatable {
  UserDashboardOneState({
    this.sliderIndex = 0,
    this.userDashboardOneModelObj,
  });

  UserDashboardOneModel? userDashboardOneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        userDashboardOneModelObj,
      ];
  UserDashboardOneState copyWith({
    int? sliderIndex,
    UserDashboardOneModel? userDashboardOneModelObj,
  }) {
    return UserDashboardOneState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      userDashboardOneModelObj:
          userDashboardOneModelObj ?? this.userDashboardOneModelObj,
    );
  }
}
