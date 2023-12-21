import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/two_item_model.dart';
import 'package:depression_guard_app/presentation/user_dashboard_one_screen/models/user_dashboard_one_model.dart';
part 'user_dashboard_one_event.dart';
part 'user_dashboard_one_state.dart';

/// A bloc that manages the state of a UserDashboardOne according to the event that is dispatched to it.
class UserDashboardOneBloc
    extends Bloc<UserDashboardOneEvent, UserDashboardOneState> {
  UserDashboardOneBloc(UserDashboardOneState initialState)
      : super(initialState) {
    on<UserDashboardOneInitialEvent>(_onInitialize);
  }

  List<TwoItemModel> fillTwoItemList() {
    return List.generate(1, (index) => TwoItemModel());
  }

  _onInitialize(
    UserDashboardOneInitialEvent event,
    Emitter<UserDashboardOneState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        userDashboardOneModelObj: state.userDashboardOneModelObj?.copyWith(
      twoItemList: fillTwoItemList(),
    )));
  }
}
