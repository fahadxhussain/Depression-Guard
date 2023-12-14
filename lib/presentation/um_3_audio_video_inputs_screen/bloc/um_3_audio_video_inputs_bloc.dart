import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/thirtylist_item_model.dart';
import 'package:depression_guard_app/presentation/um_3_audio_video_inputs_screen/models/um_3_audio_video_inputs_model.dart';
part 'um_3_audio_video_inputs_event.dart';
part 'um_3_audio_video_inputs_state.dart';

/// A bloc that manages the state of a Um3AudioVideoInputs according to the event that is dispatched to it.
class Um3AudioVideoInputsBloc
    extends Bloc<Um3AudioVideoInputsEvent, Um3AudioVideoInputsState> {
  Um3AudioVideoInputsBloc(Um3AudioVideoInputsState initialState)
      : super(initialState) {
    on<Um3AudioVideoInputsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Um3AudioVideoInputsInitialEvent event,
    Emitter<Um3AudioVideoInputsState> emit,
  ) async {
    emit(state.copyWith(
        um3AudioVideoInputsModelObj:
            state.um3AudioVideoInputsModelObj?.copyWith(
      thirtylistItemList: fillThirtylistItemList(),
    )));
  }

  List<ThirtylistItemModel> fillThirtylistItemList() {
    return [
      ThirtylistItemModel(
          howWouldYouLike: "How would you like to express yourself?")
    ];
  }
}
