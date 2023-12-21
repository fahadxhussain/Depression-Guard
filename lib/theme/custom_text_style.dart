import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Headline text style
  static get headlineLargePink300 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.pink300,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeRegular => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 32.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeRegular32 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 32.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallAtmaGray400 =>
      theme.textTheme.headlineSmall!.atma.copyWith(
        color: appTheme.gray400,
      );
  static get headlineSmallAtmaPink300 =>
      theme.textTheme.headlineSmall!.atma.copyWith(
        color: appTheme.pink300,
      );
  // Title text style
  static get titleLargeAssistantGray40002 =>
      theme.textTheme.titleLarge!.assistant.copyWith(
        color: appTheme.gray40002,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeAtmaGray70001 =>
      theme.textTheme.titleLarge!.atma.copyWith(
        color: appTheme.gray70001,
      );
  static get titleLargeGray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontSize: 23.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumJosefinSlabGray700 =>
      theme.textTheme.titleMedium!.josefinSlab.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumJosefinSlabPrimaryContainer =>
      theme.textTheme.titleMedium!.josefinSlab.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
}

extension on TextStyle {
  TextStyle get assistant {
    return copyWith(
      fontFamily: 'Assistant',
    );
  }

  TextStyle get atma {
    return copyWith(
      fontFamily: 'Atma',
    );
  }

  TextStyle get josefinSlab {
    return copyWith(
      fontFamily: 'Josefin Slab',
    );
  }
}
