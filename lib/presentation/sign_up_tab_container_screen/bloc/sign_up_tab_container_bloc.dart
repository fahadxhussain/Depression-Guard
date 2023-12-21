import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:depression_guard_app/presentation/sign_up_tab_container_screen/models/sign_up_tab_container_model.dart';
part 'sign_up_tab_container_event.dart';
part 'sign_up_tab_container_state.dart';

/// A bloc that manages the state of a SignUpTabContainer according to the event that is dispatched to it.
class SignUpTabContainerBloc
    extends Bloc<SignUpTabContainerEvent, SignUpTabContainerState> {
  SignUpTabContainerBloc(SignUpTabContainerState initialState)
      : super(initialState) {
    on<SignUpTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUpTabContainerInitialEvent event,
    Emitter<SignUpTabContainerState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.accountCreationScreen,
      );
    });
  }
}
