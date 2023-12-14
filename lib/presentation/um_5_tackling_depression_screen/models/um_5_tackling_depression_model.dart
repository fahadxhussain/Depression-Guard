// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'nurtureyourwellbeing_item_model.dart';

/// This class defines the variables used in the [um_5_tackling_depression_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Um5TacklingDepressionModel extends Equatable {
  Um5TacklingDepressionModel({this.nurtureyourwellbeingItemList = const []}) {}

  List<NurtureyourwellbeingItemModel> nurtureyourwellbeingItemList;

  Um5TacklingDepressionModel copyWith(
      {List<NurtureyourwellbeingItemModel>? nurtureyourwellbeingItemList}) {
    return Um5TacklingDepressionModel(
      nurtureyourwellbeingItemList:
          nurtureyourwellbeingItemList ?? this.nurtureyourwellbeingItemList,
    );
  }

  @override
  List<Object?> get props => [nurtureyourwellbeingItemList];
}
