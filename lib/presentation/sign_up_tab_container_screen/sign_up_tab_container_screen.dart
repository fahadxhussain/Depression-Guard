import 'bloc/sign_up_tab_container_bloc.dart';
import 'models/sign_up_tab_container_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:depression_guard_app/presentation/log_in_page/log_in_page.dart';
import 'package:depression_guard_app/presentation/sign_up_page/sign_up_page.dart';
import 'package:flutter/material.dart';

class SignUpTabContainerScreen extends StatefulWidget {
  const SignUpTabContainerScreen({Key? key}) : super(key: key);

  @override
  SignUpTabContainerScreenState createState() =>
      SignUpTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpTabContainerBloc>(
        create: (context) => SignUpTabContainerBloc(SignUpTabContainerState(
            signUpTabContainerModelObj: SignUpTabContainerModel()))
          ..add(SignUpTabContainerInitialEvent()),
        child: SignUpTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class SignUpTabContainerScreenState extends State<SignUpTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SignUpTabContainerBloc, SignUpTabContainerState>(
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
                          image: AssetImage(ImageConstant.imgGroup86),
                          fit: BoxFit.cover)),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Column(children: [
                        Spacer(),
                        Container(
                            height: 56.v,
                            width: 294.h,
                            decoration: BoxDecoration(
                                color: appTheme.red100,
                                borderRadius: BorderRadius.circular(28.h)),
                            child: TabBar(
                                controller: tabviewController,
                                labelPadding: EdgeInsets.zero,
                                labelColor: appTheme.pink300,
                                labelStyle: TextStyle(
                                    fontSize: 24.fSize,
                                    fontFamily: 'Atma',
                                    fontWeight: FontWeight.w600),
                                unselectedLabelColor: appTheme.gray400,
                                unselectedLabelStyle: TextStyle(
                                    fontSize: 24.fSize,
                                    fontFamily: 'Atma',
                                    fontWeight: FontWeight.w600),
                                indicatorPadding: EdgeInsets.all(5.5.h),
                                indicator: BoxDecoration(
                                    color: appTheme.deepOrange100,
                                    borderRadius: BorderRadius.circular(22.h),
                                    boxShadow: [
                                      BoxShadow(
                                          color: theme.colorScheme.primary,
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: Offset(0, 4))
                                    ]),
                                tabs: [
                                  Tab(child: Text("lbl_log_in".tr)),
                                  Tab(child: Text("lbl_sign_up".tr))
                                ])),
                        SizedBox(
                            height: 524.v,
                            child: TabBarView(
                                controller: tabviewController,
                                children: [LogInPage(), SignUpPage()]))
                      ])))));
    });
  }
}
