import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onError,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.pink100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(37.h),
          ),
          shadowColor: colorScheme.primary,
          elevation: 4,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.primaryContainer,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray40002,
          fontSize: 16.fSize,
          fontFamily: 'Assistant',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 14.fSize,
          fontFamily: 'Assistant',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 31.fSize,
          fontFamily: 'Josefin Slab',
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 28.fSize,
          fontFamily: 'Josefin Slab',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 24.fSize,
          fontFamily: 'Josefin Slab',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 20.fSize,
          fontFamily: 'Josefin Slab',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.pink300,
          fontSize: 16.fSize,
          fontFamily: 'Atma',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0X3F000000),
    primaryContainer: Color(0XFF000000),

    // Error colors
    errorContainer: Color(0XFF8FBAC8),
    onError: Color(0XFFFFFFFF),

    // On colors(text colors)
    onPrimary: Color(0X33611CA7),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Blue
  Color get blue100 => Color(0XFFBDE1EC);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray50 => Color(0XFFF1F2F2);

  // Cyan
  Color get cyan100 => Color(0XFFC0FAEF);
  Color get cyan200 => Color(0XFF83EBD9);

  // DeepOrange
  Color get deepOrange100 => Color(0XFFF4BFBF);
  Color get deepOrange200 => Color(0XFFFDB8A2);

  // DeepPurple
  Color get deepPurple100 => Color(0XFFD1B5E7);

  // Gray
  Color get gray400 => Color(0XFFC5A9A9);
  Color get gray40001 => Color(0XFFCDA0B5);
  Color get gray40002 => Color(0XFFB8AEAE);
  Color get gray700 => Color(0XFF5D5D5D);
  Color get gray70001 => Color(0XFF8C5243);
  Color get gray800 => Color(0XFF594A42);

  // LightGreen
  Color get lightGreen400 => Color(0XFFB6D152);

  // Lime
  Color get lime100 => Color(0XFFF8E7CD);
  Color get lime200 => Color(0XFFE4F5A3);
  Color get lime20001 => Color(0XFFE5F5A3);

  // Orange
  Color get orange100 => Color(0XFFF3D5AA);
  Color get orange10001 => Color(0XFFF9D8A6);

  // Pink
  Color get pink100 => Color(0XFFE4BECF);
  Color get pink200 => Color(0XFFFB8EC8);
  Color get pink300 => Color(0XFFBF5888);

  // Purple
  Color get purple100 => Color(0XFFF8C5EA);
  Color get purple10001 => Color(0XFFEECFEB);
  Color get purple10002 => Color(0XFFE5CAD6);
  Color get purple800 => Color(0XFF621DA7);

  // Red
  Color get red100 => Color(0XFFF0D8D8);

  // Teal
  Color get teal100 => Color(0XFFA9D4E1);
  Color get teal10001 => Color(0XFFA1EBDE);
  Color get teal10002 => Color(0XFFA5CDDA);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
