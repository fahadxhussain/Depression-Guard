import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:depression_guard_app/core/utils/validation_functions.dart';
import 'package:depression_guard_app/widgets/custom_checkbox_button.dart';
import 'package:depression_guard_app/widgets/custom_elevated_button.dart';
import 'package:depression_guard_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  SignUpPageState createState() => SignUpPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpPage());
  }
}

// ignore_for_file: must_be_immutable
class SignUpPageState extends State<SignUpPage>
    with AutomaticKeepAliveClientMixin<SignUpPage> {
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
                          SizedBox(height: 27.v),
                          Padding(
                              padding: EdgeInsets.only(left: 55.h, right: 48.h),
                              child: Column(children: [
                                Padding(
                                    padding: EdgeInsets.only(right: 8.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          _buildFiftyOneRow(context),
                                          _buildFiftyOneRow1(context)
                                        ])),
                                SizedBox(height: 20.v),
                                _buildEmail(context),
                                SizedBox(height: 13.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: Text("lbl_password".tr,
                                            style: theme.textTheme.bodyLarge))),
                                SizedBox(height: 13.v),
                                _buildCreatingAnAccount(context),
                                SizedBox(height: 9.v),
                                _buildCreateAccount(context)
                              ]))
                        ]))))));
  }

  /// Section Widget
  Widget _buildFiftyOneRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 250.v),
        child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
            selector: (state) => state.fiftyOneRowController,
            builder: (context, fiftyOneRowController) {
              return CustomTextFormField(
                  width: 121.h,
                  controller: fiftyOneRowController,
                  hintText: "lbl_full_name".tr,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 8.h));
            }));
  }

  /// Section Widget
  Widget _buildFiftyOneRow1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 250.v),
        child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
            selector: (state) => state.fiftyOneRowController1,
            builder: (context, fiftyOneRowController1) {
              return CustomTextFormField(
                  width: 120.h,
                  controller: fiftyOneRowController1,
                  hintText: "lbl_username".tr,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.h));
            }));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: BlocSelector<SignUpBloc, SignUpState, TextEditingController?>(
            selector: (state) => state.emailController,
            builder: (context, emailController) {
              return CustomTextFormField(
                  controller: emailController,
                  hintText: "lbl_email_address".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 7.h));
            }));
  }

  /// Section Widget
  Widget _buildCreatingAnAccount(BuildContext context) {
    return BlocSelector<SignUpBloc, SignUpState, bool?>(
        selector: (state) => state.creatingAnAccount,
        builder: (context, creatingAnAccount) {
          return CustomCheckboxButton(
              text: "msg_creating_an_account".tr,
              isExpandedText: true,
              value: creatingAnAccount,
              onChange: (value) {
                context
                    .read<SignUpBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              });
        });
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomElevatedButton(
        height: 35.v,
        width: 163.h,
        text: "lbl_create_account".tr,
        buttonStyle: CustomButtonStyles.fillDeepOrange,
        buttonTextStyle: theme.textTheme.titleMedium!,
        onPressed: () {
          onTapCreateAccount(context);
        },
        alignment: Alignment.centerRight);
  }

  /// Navigates to the accountCreationScreen when the action is triggered.
  onTapCreateAccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.accountCreationScreen,
    );
  }
}
