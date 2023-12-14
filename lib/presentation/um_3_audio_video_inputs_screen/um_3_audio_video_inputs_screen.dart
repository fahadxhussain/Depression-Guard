import '../um_3_audio_video_inputs_screen/widgets/thirtylist_item_widget.dart';
import 'bloc/um_3_audio_video_inputs_bloc.dart';
import 'models/thirtylist_item_model.dart';
import 'models/um_3_audio_video_inputs_model.dart';
import 'package:depression_guard_app/core/app_export.dart';
import 'package:depression_guard_app/widgets/app_bar/appbar_title_image.dart';
import 'package:depression_guard_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Um3AudioVideoInputsScreen extends StatelessWidget {
  const Um3AudioVideoInputsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Um3AudioVideoInputsBloc>(
      create: (context) => Um3AudioVideoInputsBloc(Um3AudioVideoInputsState(
        um3AudioVideoInputsModelObj: Um3AudioVideoInputsModel(),
      ))
        ..add(Um3AudioVideoInputsInitialEvent()),
      child: Um3AudioVideoInputsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 47.h,
            top: 55.v,
            right: 47.h,
          ),
          child: BlocSelector<Um3AudioVideoInputsBloc, Um3AudioVideoInputsState,
              Um3AudioVideoInputsModel?>(
            selector: (state) => state.um3AudioVideoInputsModelObj,
            builder: (context, um3AudioVideoInputsModelObj) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 75.v,
                  );
                },
                itemCount:
                    um3AudioVideoInputsModelObj?.thirtylistItemList.length ?? 0,
                itemBuilder: (context, index) {
                  ThirtylistItemModel model =
                      um3AudioVideoInputsModelObj?.thirtylistItemList[index] ??
                          ThirtylistItemModel();
                  return ThirtylistItemWidget(
                    model,
                  );
                },
              );
            },
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
              imagePath: ImageConstant.imgLine38Purple800,
            ),
            SizedBox(height: 4.v),
            AppbarTitleImage(
              imagePath: ImageConstant.imgLine38Purple800,
            ),
            SizedBox(height: 3.v),
            AppbarTitleImage(
              imagePath: ImageConstant.imgLine38Purple800,
            ),
          ],
        ),
      ),
    );
  }
}
