import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "2- Sign up - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.signUpTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "3- Account creation".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.accountCreationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "4- User Dashboard".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.userDashboardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "4- User Dashboard Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.userDashboardTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "4- User Dashboard One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.userDashboardOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "UM - 5 (TACKLING DEPRESSION)".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.um5TacklingDepressionScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "UM - 3 (AUDIO & VIDEO INPUTS)".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.um3AudioVideoInputsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "3.1 (audio input)".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.audioInputScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "UM- 6 (MOOD TRACKER & JOURNAL)".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.um6MoodTrackerJournalScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "6.1 (my journal)".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myJournalScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "6.2 (mood tracker)".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.moodTrackerScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
