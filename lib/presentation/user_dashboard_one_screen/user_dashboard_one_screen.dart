import '../user_dashboard_one_screen/widgets/two_item_widget.dart';
import 'bloc/user_dashboard_one_bloc.dart';
import 'models/two_item_model.dart';
import 'models/user_dashboard_one_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UserDashboardOneScreen extends StatelessWidget {
  const UserDashboardOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<UserDashboardOneBloc>(
      create: (context) => UserDashboardOneBloc(UserDashboardOneState(
        userDashboardOneModelObj: UserDashboardOneModel(),
      ))
        ..add(UserDashboardOneInitialEvent()),
      child: UserDashboardOneScreen(),
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
              _buildFiftyThree(context),
              SizedBox(height: 56.v),
              SizedBox(
                height: 540.v,
                width: 348.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _buildTwo(context),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: BlocBuilder<UserDashboardOneBloc,
                          UserDashboardOneState>(
                        builder: (context, state) {
                          return Container(
                            height: 9.v,
                            margin: EdgeInsets.only(bottom: 27.v),
                            child: AnimatedSmoothIndicator(
                              activeIndex: state.sliderIndex,
                              count: state.userDashboardOneModelObj?.twoItemList
                                      .length ??
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
                    ),
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
  Widget _buildFiftyThree(BuildContext context) {
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
  Widget _buildTwo(BuildContext context) {
    return BlocBuilder<UserDashboardOneBloc, UserDashboardOneState>(
      builder: (context, state) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 540.v,
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
          itemCount: state.userDashboardOneModelObj?.twoItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            TwoItemModel model =
                state.userDashboardOneModelObj?.twoItemList[index] ??
                    TwoItemModel();
            return TwoItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
