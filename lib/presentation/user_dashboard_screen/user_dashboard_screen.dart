import 'bloc/user_dashboard_bloc.dart';
import 'models/user_dashboard_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:depression_guard_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class UserDashboardScreen extends StatelessWidget {
  const UserDashboardScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<UserDashboardBloc>(
      create: (context) => UserDashboardBloc(UserDashboardState(
        userDashboardModelObj: UserDashboardModel(),
      ))
        ..add(UserDashboardInitialEvent()),
      child: UserDashboardScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<UserDashboardBloc, UserDashboardState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.purple10001,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 51.v,
              ),
              child: Column(
                children: [
                  _buildUserDashboard(context),
                  SizedBox(height: 56.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 21.h,
                      vertical: 20.v,
                    ),
                    decoration: AppDecoration.fillPurple10002.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomElevatedButton(
                          text: "msg_depression_tests".tr,
                        ),
                        SizedBox(height: 21.v),
                        CustomElevatedButton(
                          text: "msg_depression_tackling".tr,
                        ),
                        SizedBox(height: 21.v),
                        CustomElevatedButton(
                          text: "lbl_appointments".tr,
                        ),
                        SizedBox(height: 21.v),
                        Container(
                          width: 306.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 30.h,
                            vertical: 21.v,
                          ),
                          decoration: AppDecoration.outlinePrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder37,
                          ),
                          child: Text(
                            "lbl_audio_video".tr,
                            style: theme.textTheme.headlineMedium,
                          ),
                        ),
                        SizedBox(height: 21.v),
                        Container(
                          width: 306.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 75.h,
                            vertical: 8.v,
                          ),
                          decoration: AppDecoration.outlinePrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder37,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 2.v),
                              Container(
                                width: 149.h,
                                margin: EdgeInsets.only(right: 6.h),
                                child: Text(
                                  "msg_mood_tracking".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.titleLargeRegular,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 9.v,
                          width: 55.h,
                        ),
                        SizedBox(height: 7.v),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildUserDashboard(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 89.h,
            child: Text(
              "lbl_akbar_ali".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.headlineLargePink300.copyWith(
                height: 1.50,
              ),
            ),
          ),
          Text(
            "lbl_akbar_ali2".tr,
            style: CustomTextStyles.titleMediumJosefinSlabGray700,
          ),
        ],
      ),
    );
  }
}
