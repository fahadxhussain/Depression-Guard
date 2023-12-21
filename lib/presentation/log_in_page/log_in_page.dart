import 'bloc/log_in_bloc.dart';
import 'models/log_in_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:depression_guard_app/core/utils/validation_functions.dart';
import 'package:depression_guard_app/widgets/custom_elevated_button.dart';
import 'package:depression_guard_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  LogInPageState createState() => LogInPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInBloc>(
        create: (context) => LogInBloc(LogInState(logInModelObj: LogInModel()))
          ..add(LogInInitialEvent()),
        child: LogInPage());
  }
}

// ignore_for_file: must_be_immutable
class LogInPageState extends State<LogInPage>
    with AutomaticKeepAliveClientMixin<LogInPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onError,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup86),
                        fit: BoxFit.cover)),
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        decoration: AppDecoration.fillOnError.copyWith(
                            image: DecorationImage(
                                image: AssetImage(ImageConstant.imgGroup86),
                                fit: BoxFit.cover)),
                        child: Column(children: [
                          SizedBox(height: 30.v),
                          _buildLoginSection(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildLoginSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 48.h, right: 54.h),
        child: Column(children: [
          SizedBox(height: 250.v),
          Padding(
              padding: EdgeInsets.only(left: 9.h, right: 3.h),
              child:
                  BlocSelector<LogInBloc, LogInState, TextEditingController?>(
                      selector: (state) => state.emailController,
                      builder: (context, emailController) {
                        return CustomTextFormField(
                            controller: emailController,
                            hintText: "lbl_email".tr,
                            hintStyle:
                                CustomTextStyles.titleLargeAssistantGray40002,
                            textInputType: TextInputType.emailAddress,
                            prefix: Container(
                                margin: EdgeInsets.only(
                                    left: 13.h, right: 15.h, bottom: 10.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgFrame,
                                    height: 25.v,
                                    width: 23.h)),
                            prefixConstraints: BoxConstraints(maxHeight: 35.v),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            });
                      })),
          SizedBox(height: 18.v),
          Padding(
              padding: EdgeInsets.only(left: 9.h, right: 3.h),
              child:
                  BlocSelector<LogInBloc, LogInState, TextEditingController?>(
                      selector: (state) => state.passwordController,
                      builder: (context, passwordController) {
                        return CustomTextFormField(
                            controller: passwordController,
                            hintText: "lbl_password".tr,
                            hintStyle:
                                CustomTextStyles.titleLargeAssistantGray40002,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            prefix: Container(
                                margin: EdgeInsets.only(
                                    left: 14.h, right: 20.h, bottom: 6.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgFrameGray40002,
                                    height: 25.v,
                                    width: 18.h)),
                            prefixConstraints: BoxConstraints(maxHeight: 31.v),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: true);
                      })),
          SizedBox(height: 25.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(top: 8.v),
                child: Text("msg_forgot_password".tr,
                    style: theme.textTheme.titleMedium)),
            CustomElevatedButton(
                height: 35.v,
                width: 92.h,
                text: "lbl_log_in".tr,
                buttonStyle: CustomButtonStyles.fillDeepOrange,
                buttonTextStyle: theme.textTheme.titleMedium!,
                onPressed: () {
                  onTapLogIn(context);
                })
          ])
        ]));
  }

  /// Navigates to the userDashboardScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.userDashboardScreen,
    );
  }
}
