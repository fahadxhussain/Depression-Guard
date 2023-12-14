// ignore_for_file: must_be_immutable

part of 'um_5_tackling_depression_bloc.dart';

/// Represents the state of Um5TacklingDepression in the application.
class Um5TacklingDepressionState extends Equatable {
  Um5TacklingDepressionState({this.um5TacklingDepressionModelObj});

  Um5TacklingDepressionModel? um5TacklingDepressionModelObj;

  @override
  List<Object?> get props => [
        um5TacklingDepressionModelObj,
      ];
  Um5TacklingDepressionState copyWith(
      {Um5TacklingDepressionModel? um5TacklingDepressionModelObj}) {
    return Um5TacklingDepressionState(
      um5TacklingDepressionModelObj:
          um5TacklingDepressionModelObj ?? this.um5TacklingDepressionModelObj,
    );
  }
}
