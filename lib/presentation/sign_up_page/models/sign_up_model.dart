// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [sign_up_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUpModel extends Equatable {
  SignUpModel() {}

  SignUpModel copyWith() {
    return SignUpModel();
  }

  @override
  List<Object?> get props => [];
}
