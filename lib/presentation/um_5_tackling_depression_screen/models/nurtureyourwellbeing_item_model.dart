import '../../../core/app_export.dart';

/// This class is used in the [nurtureyourwellbeing_item_widget] screen.
class NurtureyourwellbeingItemModel {
  NurtureyourwellbeingItemModel({
    this.text,
    this.id,
  }) {
    text = text ?? "Relaxation Exercises";
    id = id ?? "";
  }

  String? text;

  String? id;
}
