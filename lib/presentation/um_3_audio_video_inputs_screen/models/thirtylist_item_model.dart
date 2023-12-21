import '../../../core/app_export.dart';

/// This class is used in the [thirtylist_item_widget] screen.
class ThirtylistItemModel {
  ThirtylistItemModel({
    this.howWouldYouLike,
    this.id,
  }) {
    howWouldYouLike =
        howWouldYouLike ?? "How would you like to express yourself?";
    id = id ?? "";
  }

  String? howWouldYouLike;

  String? id;
}
