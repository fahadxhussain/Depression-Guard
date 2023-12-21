import '../user_dashboard_two_screen/widgets/sixtynine_item_widget.dart';
import 'bloc/user_dashboard_two_bloc.dart';
import 'models/sixtynine_item_model.dart';
import 'models/user_dashboard_two_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UserDashboardTwoScreen extends StatelessWidget {
  const UserDashboardTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<UserDashboardTwoBloc>(
      create: (context) => UserDashboardTwoBloc(UserDashboardTwoState(
        userDashboardTwoModelObj: UserDashboardTwoModel(),
      ))
        ..add(UserDashboardTwoInitialEvent()),
      child: UserDashboardTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

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
              _buildFortyNine(context),
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
                    _buildSixtyNine(context),
                    SizedBox(height: 25.v),
                    BlocBuilder<UserDashboardTwoBloc, UserDashboardTwoState>(
                      builder: (context, state) {
                        return SizedBox(
                          height: 9.v,
                          child: AnimatedSmoothIndicator(
                            activeIndex: state.sliderIndex,
                            count: state.userDashboardTwoModelObj
                                    ?.sixtynineItemList.length ??
                                0,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                              spacing: 14,
                              activeDotColor: appTheme.pink300,
                              dotColor: appTheme.gray40001,
                              dotHeight: 9.v,
                              dotWidth: 9.h,
                            ),
                          ),
                        );
                      },
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
  }

  /// Section Widget
  Widget _buildFortyNine(BuildContext context) {
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

  /// Section Widget
  Widget _buildSixtyNine(BuildContext context) {
    return BlocBuilder<UserDashboardTwoBloc, UserDashboardTwoState>(
      builder: (context, state) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 459.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              state.sliderIndex = index;
            },
          ),
          itemCount:
              state.userDashboardTwoModelObj?.sixtynineItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            SixtynineItemModel model =
                state.userDashboardTwoModelObj?.sixtynineItemList[index] ??
                    SixtynineItemModel();
            return SixtynineItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
