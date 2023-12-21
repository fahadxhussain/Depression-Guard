import '../um_6_mood_tracker_journal_screen/widgets/journalcomponent_item_widget.dart';
import 'bloc/um_6_mood_tracker_journal_bloc.dart';
import 'models/journalcomponent_item_model.dart';
import 'models/um_6_mood_tracker_journal_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:depression_guard_app/widgets/app_bar/appbar_title_image.dart';
import 'package:depression_guard_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Um6MoodTrackerJournalScreen extends StatelessWidget {
  const Um6MoodTrackerJournalScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Um6MoodTrackerJournalBloc>(
      create: (context) => Um6MoodTrackerJournalBloc(Um6MoodTrackerJournalState(
        um6MoodTrackerJournalModelObj: Um6MoodTrackerJournalModel(),
      ))
        ..add(Um6MoodTrackerJournalInitialEvent()),
      child: Um6MoodTrackerJournalScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blue100,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 34.h,
            vertical: 39.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 310.h,
                margin: EdgeInsets.only(right: 12.h),
                child: Text(
                  "msg_how_would_you_like2".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineLarge!.copyWith(
                    height: 1.49,
                  ),
                ),
              ),
              SizedBox(height: 82.v),
              _buildJournalComponent(context),
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
              imagePath: ImageConstant.imgLine38Errorcontainer,
            ),
            SizedBox(height: 4.v),
            AppbarTitleImage(
              imagePath: ImageConstant.imgLine38Errorcontainer,
            ),
            SizedBox(height: 3.v),
            AppbarTitleImage(
              imagePath: ImageConstant.imgLine38Errorcontainer,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildJournalComponent(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: BlocSelector<Um6MoodTrackerJournalBloc,
            Um6MoodTrackerJournalState, Um6MoodTrackerJournalModel?>(
          selector: (state) => state.um6MoodTrackerJournalModelObj,
          builder: (context, um6MoodTrackerJournalModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 70.v,
                );
              },
              itemCount: um6MoodTrackerJournalModelObj
                      ?.journalcomponentItemList.length ??
                  0,
              itemBuilder: (context, index) {
                JournalcomponentItemModel model = um6MoodTrackerJournalModelObj
                        ?.journalcomponentItemList[index] ??
                    JournalcomponentItemModel();
                return JournalcomponentItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
