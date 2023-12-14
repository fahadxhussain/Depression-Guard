import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/nurtureyourwellbeing_item_model.dart';
import 'package:depression_guard_app/presentation/um_5_tackling_depression_screen/models/um_5_tackling_depression_model.dart';
part 'um_5_tackling_depression_event.dart';
part 'um_5_tackling_depression_state.dart';

/// A bloc that manages the state of a Um5TacklingDepression according to the event that is dispatched to it.
class Um5TacklingDepressionBloc
    extends Bloc<Um5TacklingDepressionEvent, Um5TacklingDepressionState> {
  Um5TacklingDepressionBloc(Um5TacklingDepressionState initialState)
      : super(initialState) {
    on<Um5TacklingDepressionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Um5TacklingDepressionInitialEvent event,
    Emitter<Um5TacklingDepressionState> emit,
  ) async {
    emit(state.copyWith(
        um5TacklingDepressionModelObj:
            state.um5TacklingDepressionModelObj?.copyWith(
      nurtureyourwellbeingItemList: fillNurtureyourwellbeingItemList(),
    )));
  }

  List<NurtureyourwellbeingItemModel> fillNurtureyourwellbeingItemList() {
    return [
      NurtureyourwellbeingItemModel(text: "Relaxation Exercises"),
      NurtureyourwellbeingItemModel(text: "Mindfulness Training"),
      NurtureyourwellbeingItemModel(text: "Self-care Enhancement"),
      NurtureyourwellbeingItemModel(text: "Self-esteem Improvement")
    ];
  }
}
