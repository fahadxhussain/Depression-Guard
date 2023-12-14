import 'bloc/account_creation_bloc.dart';
import 'models/account_creation_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:depression_guard_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AccountCreationScreen extends StatelessWidget {
  const AccountCreationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountCreationBloc>(
      create: (context) => AccountCreationBloc(AccountCreationState(
        accountCreationModelObj: AccountCreationModel(),
      ))
        ..add(AccountCreationInitialEvent()),
      child: AccountCreationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AccountCreationBloc, AccountCreationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              decoration: BoxDecoration(
                color: theme.colorScheme.onError,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.img3AccountCreation,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 336.v),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    CustomElevatedButton(
                      height: 44.v,
                      width: 150.h,
                      text: "lbl_let_s_begin".tr,
                      buttonStyle: CustomButtonStyles.fillDeepOrangeTL22,
                      buttonTextStyle: CustomTextStyles.titleLargeAtmaGray70001,
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
