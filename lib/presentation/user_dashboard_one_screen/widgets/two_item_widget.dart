import '../models/two_item_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:depression_guard_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TwoItemWidget extends StatelessWidget {
  TwoItemWidget(
    this.twoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwoItemModel twoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 21.h,
          vertical: 20.v,
        ),
        decoration: AppDecoration.fillPurple10002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: CustomElevatedButton(
          text: "lbl_settings".tr,
        ),
      ),
    );
  }
}
