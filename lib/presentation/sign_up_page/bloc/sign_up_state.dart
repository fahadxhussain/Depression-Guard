// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.fiftyOneRowController,
    this.fiftyOneRowController1,
    this.emailController,
    this.creatingAnAccount = false,
    this.signUpModelObj,
  });

  TextEditingController? fiftyOneRowController;

  TextEditingController? fiftyOneRowController1;

  TextEditingController? emailController;

  SignUpModel? signUpModelObj;

  bool creatingAnAccount;

  @override
  List<Object?> get props => [
        fiftyOneRowController,
        fiftyOneRowController1,
        emailController,
        creatingAnAccount,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? fiftyOneRowController,
    TextEditingController? fiftyOneRowController1,
    TextEditingController? emailController,
    bool? creatingAnAccount,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      fiftyOneRowController:
          fiftyOneRowController ?? this.fiftyOneRowController,
      fiftyOneRowController1:
          fiftyOneRowController1 ?? this.fiftyOneRowController1,
      emailController: emailController ?? this.emailController,
      creatingAnAccount: creatingAnAccount ?? this.creatingAnAccount,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
