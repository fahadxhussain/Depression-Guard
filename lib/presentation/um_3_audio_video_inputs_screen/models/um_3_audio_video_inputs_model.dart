// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'thirtylist_item_model.dart';

/// This class defines the variables used in the [um_3_audio_video_inputs_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Um3AudioVideoInputsModel extends Equatable {
  Um3AudioVideoInputsModel({this.thirtylistItemList = const []}) {}

  List<ThirtylistItemModel> thirtylistItemList;

  Um3AudioVideoInputsModel copyWith(
      {List<ThirtylistItemModel>? thirtylistItemList}) {
    return Um3AudioVideoInputsModel(
      thirtylistItemList: thirtylistItemList ?? this.thirtylistItemList,
    );
  }

  @override
  List<Object?> get props => [thirtylistItemList];
}
