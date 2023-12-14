import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sixtynine_item_model.dart';
import 'package:depression_guard_app/presentation/user_dashboard_two_screen/models/user_dashboard_two_model.dart';
part 'user_dashboard_two_event.dart';
part 'user_dashboard_two_state.dart';

/// A bloc that manages the state of a UserDashboardTwo according to the event that is dispatched to it.
class UserDashboardTwoBloc
    extends Bloc<UserDashboardTwoEvent, UserDashboardTwoState> {
  UserDashboardTwoBloc(UserDashboardTwoState initialState)
      : super(initialState) {
    on<UserDashboardTwoInitialEvent>(_onInitialize);
  }

  List<SixtynineItemModel> fillSixtynineItemList() {
    return List.generate(5, (index) => SixtynineItemModel());
  }

  _onInitialize(
    UserDashboardTwoInitialEvent event,
    Emitter<UserDashboardTwoState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        userDashboardTwoModelObj: state.userDashboardTwoModelObj?.copyWith(
      sixtynineItemList: fillSixtynineItemList(),
    )));
  }
}
