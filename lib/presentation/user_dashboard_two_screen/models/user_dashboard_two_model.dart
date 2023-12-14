// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'sixtynine_item_model.dart';

/// This class defines the variables used in the [user_dashboard_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UserDashboardTwoModel extends Equatable {
  UserDashboardTwoModel({this.sixtynineItemList = const []}) {}

  List<SixtynineItemModel> sixtynineItemList;

  UserDashboardTwoModel copyWith(
      {List<SixtynineItemModel>? sixtynineItemList}) {
    return UserDashboardTwoModel(
      sixtynineItemList: sixtynineItemList ?? this.sixtynineItemList,
    );
  }

  @override
  List<Object?> get props => [sixtynineItemList];
}
