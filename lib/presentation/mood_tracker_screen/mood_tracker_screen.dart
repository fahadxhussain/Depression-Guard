import 'bloc/mood_tracker_bloc.dart';
import 'models/mood_tracker_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:depression_guard_app/widgets/app_bar/appbar_title_image.dart';
import 'package:depression_guard_app/widgets/app_bar/custom_app_bar.dart';
import 'package:depression_guard_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class MoodTrackerScreen extends StatelessWidget {
  const MoodTrackerScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MoodTrackerBloc>(
      create: (context) => MoodTrackerBloc(MoodTrackerState(
        moodTrackerModelObj: MoodTrackerModel(),
      ))
        ..add(MoodTrackerInitialEvent()),
      child: MoodTrackerScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<MoodTrackerBloc, MoodTrackerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.lime200,
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 35.v),
                child: Column(
                  children: [
                    _buildMoodTracker(context),
                    SizedBox(height: 68.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 31.h,
                        vertical: 26.v,
                      ),
                      decoration: AppDecoration.fillLightGreen.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildTellUsAboutYour(context),
                          SizedBox(height: 357.v),
                          CustomElevatedButton(
                            height: 30.v,
                            width: 60.h,
                            text: "lbl_done".tr,
                            margin: EdgeInsets.only(right: 8.h),
                            buttonStyle: CustomButtonStyles.outlinePrimaryTL11,
                            buttonTextStyle: CustomTextStyles
                                .titleMediumJosefinSlabPrimaryContainer,
                            alignment: Alignment.centerRight,
                          ),
                          SizedBox(height: 70.v),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 25.h),
        child: Column(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgLine38LightGreen400,
            ),
            SizedBox(height: 4.v),
            AppbarTitleImage(
              imagePath: ImageConstant.imgLine38LightGreen400,
            ),
            SizedBox(height: 3.v),
            AppbarTitleImage(
              imagePath: ImageConstant.imgLine38LightGreen400,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMoodTracker(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: Column(
        children: [
          SizedBox(
            width: 191.h,
            child: Text(
              "msg_how_are_you_feeling".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineLarge!.copyWith(
                height: 1.49,
              ),
            ),
          ),
          SizedBox(height: 1.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1,
            height: 80.v,
            width: 364.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTellUsAboutYour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_tell_us_about_your".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 2.v),
          Text(
            "lbl_type_here".tr,
            style: CustomTextStyles.titleLargePrimary,
          ),
        ],
      ),
    );
  }
}
