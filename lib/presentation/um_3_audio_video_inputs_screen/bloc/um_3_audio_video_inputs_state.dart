// ignore_for_file: must_be_immutable

part of 'um_3_audio_video_inputs_bloc.dart';

/// Represents the state of Um3AudioVideoInputs in the application.
class Um3AudioVideoInputsState extends Equatable {
  Um3AudioVideoInputsState({this.um3AudioVideoInputsModelObj});

  Um3AudioVideoInputsModel? um3AudioVideoInputsModelObj;

  @override
  List<Object?> get props => [
        um3AudioVideoInputsModelObj,
      ];
  Um3AudioVideoInputsState copyWith(
      {Um3AudioVideoInputsModel? um3AudioVideoInputsModelObj}) {
    return Um3AudioVideoInputsState(
      um3AudioVideoInputsModelObj:
          um3AudioVideoInputsModelObj ?? this.um3AudioVideoInputsModelObj,
    );
  }
}
