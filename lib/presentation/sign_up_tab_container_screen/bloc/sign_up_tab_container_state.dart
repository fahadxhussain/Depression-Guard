// ignore_for_file: must_be_immutable

part of 'sign_up_tab_container_bloc.dart';

/// Represents the state of SignUpTabContainer in the application.
class SignUpTabContainerState extends Equatable {
  SignUpTabContainerState({this.signUpTabContainerModelObj});

  SignUpTabContainerModel? signUpTabContainerModelObj;

  @override
  List<Object?> get props => [
        signUpTabContainerModelObj,
      ];
  SignUpTabContainerState copyWith(
      {SignUpTabContainerModel? signUpTabContainerModelObj}) {
    return SignUpTabContainerState(
      signUpTabContainerModelObj:
          signUpTabContainerModelObj ?? this.signUpTabContainerModelObj,
    );
  }
}
