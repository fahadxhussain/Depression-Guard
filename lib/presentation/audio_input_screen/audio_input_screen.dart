import 'bloc/audio_input_bloc.dart';
import 'models/audio_input_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:depression_guard_app/widgets/app_bar/appbar_title_image.dart';
import 'package:depression_guard_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AudioInputScreen extends StatelessWidget {
  const AudioInputScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AudioInputBloc>(
      create: (context) => AudioInputBloc(AudioInputState(
        audioInputModelObj: AudioInputModel(),
      ))
        ..add(AudioInputInitialEvent()),
      child: AudioInputScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AudioInputBloc, AudioInputState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.purple100,
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 55.v,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 229.h,
                    child: Text(
                      "msg_speak_your_heart_out".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineLarge!.copyWith(
                        height: 1.49,
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 60,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup34,
                    height: 118.v,
                    width: 115.h,
                  ),
                  SizedBox(height: 33.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup37,
                    height: 120.v,
                    width: 376.h,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "lbl_03_47".tr,
                    style: CustomTextStyles.titleLargeGray700,
                  ),
                  Spacer(
                    flex: 39,
                  ),
                ],
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
              imagePath: ImageConstant.imgLine38Pink200,
            ),
            SizedBox(height: 4.v),
            AppbarTitleImage(
              imagePath: ImageConstant.imgLine38Pink200,
            ),
            SizedBox(height: 3.v),
            AppbarTitleImage(
              imagePath: ImageConstant.imgLine38Pink200,
            ),
          ],
        ),
      ),
    );
  }
}
