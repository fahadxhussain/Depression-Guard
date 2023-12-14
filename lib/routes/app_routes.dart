import 'package:flutter/material.dart';
import 'package:depression_guard_app/presentation/sign_up_tab_container_screen/sign_up_tab_container_screen.dart';
import 'package:depression_guard_app/presentation/account_creation_screen/account_creation_screen.dart';
import 'package:depression_guard_app/presentation/user_dashboard_screen/user_dashboard_screen.dart';
import 'package:depression_guard_app/presentation/user_dashboard_two_screen/user_dashboard_two_screen.dart';
import 'package:depression_guard_app/presentation/user_dashboard_one_screen/user_dashboard_one_screen.dart';
import 'package:depression_guard_app/presentation/um_5_tackling_depression_screen/um_5_tackling_depression_screen.dart';
import 'package:depression_guard_app/presentation/um_3_audio_video_inputs_screen/um_3_audio_video_inputs_screen.dart';
import 'package:depression_guard_app/presentation/audio_input_screen/audio_input_screen.dart';
import 'package:depression_guard_app/presentation/um_6_mood_tracker_journal_screen/um_6_mood_tracker_journal_screen.dart';
import 'package:depression_guard_app/presentation/my_journal_screen/my_journal_screen.dart';
import 'package:depression_guard_app/presentation/mood_tracker_screen/mood_tracker_screen.dart';
import 'package:depression_guard_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String logInPage = '/log_in_page';

  static const String signUpPage = '/sign_up_page';

  static const String signUpTabContainerScreen =
      '/sign_up_tab_container_screen';

  static const String accountCreationScreen = '/account_creation_screen';

  static const String userDashboardScreen = '/user_dashboard_screen';

  static const String userDashboardTwoScreen = '/user_dashboard_two_screen';

  static const String userDashboardOneScreen = '/user_dashboard_one_screen';

  static const String um5TacklingDepressionScreen =
      '/um_5_tackling_depression_screen';

  static const String um3AudioVideoInputsScreen =
      '/um_3_audio_video_inputs_screen';

  static const String audioInputScreen = '/audio_input_screen';

  static const String um6MoodTrackerJournalScreen =
      '/um_6_mood_tracker_journal_screen';

  static const String myJournalScreen = '/my_journal_screen';

  static const String moodTrackerScreen = '/mood_tracker_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        signUpTabContainerScreen: SignUpTabContainerScreen.builder,
        accountCreationScreen: AccountCreationScreen.builder,
        userDashboardScreen: UserDashboardScreen.builder,
        userDashboardTwoScreen: UserDashboardTwoScreen.builder,
        userDashboardOneScreen: UserDashboardOneScreen.builder,
        um5TacklingDepressionScreen: Um5TacklingDepressionScreen.builder,
        um3AudioVideoInputsScreen: Um3AudioVideoInputsScreen.builder,
        audioInputScreen: AudioInputScreen.builder,
        um6MoodTrackerJournalScreen: Um6MoodTrackerJournalScreen.builder,
        myJournalScreen: MyJournalScreen.builder,
        moodTrackerScreen: MoodTrackerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SignUpTabContainerScreen.builder
      };
}
