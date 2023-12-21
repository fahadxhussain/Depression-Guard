import '../models/nurtureyourwellbeing_item_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NurtureyourwellbeingItemWidget extends StatelessWidget {
  NurtureyourwellbeingItemWidget(
    this.nurtureyourwellbeingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NurtureyourwellbeingItemModel nurtureyourwellbeingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          SizedBox(
            width: 91.h,
            child: Text(
              nurtureyourwellbeingItemModelObj.text!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge!.copyWith(
                height: 1.49,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
