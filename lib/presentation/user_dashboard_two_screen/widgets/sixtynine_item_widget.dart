import '../models/sixtynine_item_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:depression_guard_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SixtynineItemWidget extends StatelessWidget {
  SixtynineItemWidget(
    this.sixtynineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SixtynineItemModel sixtynineItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      width: 306.h,
      text: "msg_recent_diagnoses".tr,
      margin: EdgeInsets.only(bottom: 384.v),
    );
  }
}
