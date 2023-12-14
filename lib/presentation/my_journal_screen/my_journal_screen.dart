import 'bloc/my_journal_bloc.dart';
import 'models/my_journal_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:depression_guard_app/widgets/custom_elevated_button.dart';
import 'package:depression_guard_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class MyJournalScreen extends StatelessWidget {
  const MyJournalScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyJournalBloc>(
      create: (context) => MyJournalBloc(MyJournalState(
        myJournalModelObj: MyJournalModel(),
      ))
        ..add(MyJournalInitialEvent()),
      child: MyJournalScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<MyJournalBloc, MyJournalState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Container(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                decoration: AppDecoration.fillLime,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Opacity(
                      opacity: 0.18,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgJournalBgForPhone,
                        height: 844.v,
                        width: 389.h,
                        alignment: Alignment.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMegaphone,
                              height: 16.v,
                              width: 22.h,
                              alignment: Alignment.centerLeft,
                            ),
                            SizedBox(height: 1.v),
                            Padding(
                              padding: EdgeInsets.only(right: 46.h),
                              child: Text(
                                "msg_script_your_soul".tr,
                                style: theme.textTheme.headlineLarge,
                              ),
                            ),
                            SizedBox(height: 54.v),
                            Divider(
                              indent: 22.h,
                            ),
                            SizedBox(height: 60.v),
                            Divider(
                              indent: 22.h,
                            ),
                            SizedBox(height: 60.v),
                            Divider(
                              indent: 22.h,
                            ),
                            SizedBox(height: 60.v),
                            Divider(
                              indent: 22.h,
                            ),
                            SizedBox(height: 60.v),
                            Divider(
                              indent: 22.h,
                            ),
                            SizedBox(height: 60.v),
                            Divider(
                              indent: 22.h,
                            ),
                            SizedBox(height: 60.v),
                            Divider(
                              indent: 22.h,
                            ),
                            SizedBox(height: 60.v),
                            Divider(
                              indent: 22.h,
                            ),
                            SizedBox(height: 60.v),
                            Divider(
                              indent: 22.h,
                            ),
                            SizedBox(height: 60.v),
                            Divider(
                              indent: 22.h,
                            ),
                            SizedBox(height: 60.v),
                            Divider(
                              indent: 22.h,
                            ),
                            SizedBox(height: 24.v),
                            Padding(
                              padding: EdgeInsets.only(left: 19.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: CustomIconButton(
                                      height: 36.v,
                                      width: 38.h,
                                      child: CustomImageView(),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 106.h,
                                      top: 5.v,
                                      bottom: 7.v,
                                    ),
                                    child: Text(
                                      "lbl_9".tr,
                                      style: theme.textTheme.headlineSmall,
                                    ),
                                  ),
                                  Container(
                                    width: 94.h,
                                    margin: EdgeInsets.only(left: 54.h),
                                    decoration:
                                        AppDecoration.outlinePrimary4.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder12,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomIconButton(
                                          height: 36.v,
                                          width: 46.h,
                                          child: CustomImageView(),
                                        ),
                                        CustomElevatedButton(
                                          height: 36.v,
                                          width: 38.h,
                                          text: "lbl".tr,
                                          margin: EdgeInsets.only(left: 10.h),
                                          buttonStyle:
                                              CustomButtonStyles.fillOrange,
                                          buttonTextStyle:
                                              theme.textTheme.headlineSmall!,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
}
