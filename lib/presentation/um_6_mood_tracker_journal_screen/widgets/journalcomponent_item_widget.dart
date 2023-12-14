import '../models/journalcomponent_item_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class JournalcomponentItemWidget extends StatelessWidget {
  JournalcomponentItemWidget(
    this.journalcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  JournalcomponentItemModel journalcomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 37.h,
          vertical: 33.v,
        ),
        decoration: AppDecoration.outlinePrimary3.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 95.h,
              margin: EdgeInsets.only(bottom: 16.v),
              child: Text(
                journalcomponentItemModelObj.myJournal!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.headlineLargeRegular32,
              ),
            ),
            Container(
              height: 72.v,
              width: 60.h,
              margin: EdgeInsets.only(
                left: 64.h,
                top: 7.v,
                bottom: 7.v,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 18.h,
                        right: 18.h,
                        bottom: 20.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 2.v,
                            width: 24.h,
                          ),
                          SizedBox(height: 9.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 3.v,
                            width: 24.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: journalcomponentItemModelObj?.journalImage3,
                    height: 66.v,
                    width: 60.h,
                    alignment: Alignment.bottomCenter,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 11.v,
                    width: 3.h,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 12.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 11.v,
                    width: 3.h,
                    alignment: Alignment.topCenter,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 11.v,
                    width: 3.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(right: 9.h),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
