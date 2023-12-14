import '../um_5_tackling_depression_screen/widgets/nurtureyourwellbeing_item_widget.dart';
import 'bloc/um_5_tackling_depression_bloc.dart';
import 'models/nurtureyourwellbeing_item_model.dart';
import 'models/um_5_tackling_depression_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:depression_guard_app/widgets/app_bar/appbar_title_image.dart';
import 'package:depression_guard_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Um5TacklingDepressionScreen extends StatelessWidget {
  const Um5TacklingDepressionScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Um5TacklingDepressionBloc>(
      create: (context) => Um5TacklingDepressionBloc(Um5TacklingDepressionState(
        um5TacklingDepressionModelObj: Um5TacklingDepressionModel(),
      ))
        ..add(Um5TacklingDepressionInitialEvent()),
      child: Um5TacklingDepressionScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.cyan100,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 41.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 184.h,
                  margin: EdgeInsets.only(left: 63.h),
                  child: Text(
                    "msg_nurture_your_well_being".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineLarge!.copyWith(
                      height: 1.49,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 90.v),
              _buildNurtureYourWellbeing(context),
              SizedBox(height: 50.v),
              _buildEleven(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
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
              imagePath: ImageConstant.imgLine38,
            ),
            SizedBox(height: 4.v),
            AppbarTitleImage(
              imagePath: ImageConstant.imgLine38,
            ),
            SizedBox(height: 3.v),
            AppbarTitleImage(
              imagePath: ImageConstant.imgLine38,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNurtureYourWellbeing(BuildContext context) {
    return BlocSelector<Um5TacklingDepressionBloc, Um5TacklingDepressionState,
        Um5TacklingDepressionModel?>(
      selector: (state) => state.um5TacklingDepressionModelObj,
      builder: (context, um5TacklingDepressionModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 84.v,
            crossAxisCount: 2,
            mainAxisSpacing: 28.h,
            crossAxisSpacing: 28.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: um5TacklingDepressionModelObj
                  ?.nurtureyourwellbeingItemList.length ??
              0,
          itemBuilder: (context, index) {
            NurtureyourwellbeingItemModel model = um5TacklingDepressionModelObj
                    ?.nurtureyourwellbeingItemList[index] ??
                NurtureyourwellbeingItemModel();
            return NurtureyourwellbeingItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 63.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: SizedBox(
        width: 204.h,
        child: Text(
          "msg_eliminate_negative".tr,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineSmall!.copyWith(
            height: 1.50,
          ),
        ),
      ),
    );
  }
}
