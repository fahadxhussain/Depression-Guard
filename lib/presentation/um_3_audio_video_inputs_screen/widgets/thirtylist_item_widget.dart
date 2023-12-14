import '../models/thirtylist_item_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ThirtylistItemWidget extends StatelessWidget {
  ThirtylistItemWidget(
    this.thirtylistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ThirtylistItemModel thirtylistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 274.h,
      child: Text(
        thirtylistItemModelObj.howWouldYouLike!,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: theme.textTheme.headlineLarge!.copyWith(
          height: 1.49,
        ),
      ),
    );
  }
}
