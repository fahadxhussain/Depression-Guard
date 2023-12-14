// ignore_for_file: must_be_immutable

part of 'audio_input_bloc.dart';

/// Represents the state of AudioInput in the application.
class AudioInputState extends Equatable {
  AudioInputState({this.audioInputModelObj});

  AudioInputModel? audioInputModelObj;

  @override
  List<Object?> get props => [
        audioInputModelObj,
      ];
  AudioInputState copyWith({AudioInputModel? audioInputModelObj}) {
    return AudioInputState(
      audioInputModelObj: audioInputModelObj ?? this.audioInputModelObj,
    );
  }
}
