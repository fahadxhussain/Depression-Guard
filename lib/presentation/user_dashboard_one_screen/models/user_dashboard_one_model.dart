// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'two_item_model.dart';

/// This class defines the variables used in the [user_dashboard_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UserDashboardOneModel extends Equatable {
  UserDashboardOneModel({this.twoItemList = const []}) {}

  List<TwoItemModel> twoItemList;

  UserDashboardOneModel copyWith({List<TwoItemModel>? twoItemList}) {
    return UserDashboardOneModel(
      twoItemList: twoItemList ?? this.twoItemList,
    );
  }

  @override
  List<Object?> get props => [twoItemList];
}
