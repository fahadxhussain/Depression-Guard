import '../../../core/app_export.dart';

/// This class is used in the [journalcomponent_item_widget] screen.
class JournalcomponentItemModel {
  JournalcomponentItemModel({
    this.myJournal,
    this.journalImage3,
    this.id,
  }) {
    myJournal = myJournal ?? "My\nJournal";
    journalImage3 = journalImage3 ?? ImageConstant.imgVectorPrimarycontainer;
    id = id ?? "";
  }

  String? myJournal;

  String? journalImage3;

  String? id;
}
