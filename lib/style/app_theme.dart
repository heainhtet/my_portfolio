import 'package:flutter/material.dart';
import 'package:my_portfolio/style/app_colors.dart';

import 'app_size.dart';

// class AppTheme {
//   static ThemeData get dart => ThemeData(
//     colorScheme: ColorScheme.dark(
//       primary: AppColors.primaryColor,
//       surface: AppColors.darkBackgroundColor,
//       onSurface: AppColors.grey[100]!,
//     ),
//     useMaterial3: true,
//     scaffoldBackgroundColor: AppColors.darkBackgroundColor,
//     appBarTheme: AppBarTheme(backgroundColor: AppColors.grey[900]),
//   );
// }
class AppTheme {
  final String fontFamily;
  AppTheme({required this.fontFamily});
  ThemeData get dark {
    return _getThemeData(
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        background: AppColors.darkBackgroundColor,
        surface: AppColors.grey[850]!,
        outline: AppColors.grey[800]!,
        outlineVariant: AppColors.grey[700]!,
        onBackground: AppColors.grey[100]!,
        onSurface: AppColors.grey[300]!,
        onSurfaceVariant: AppColors.grey[400]!,
        tertiary: AppColors.grey[900]!,
      ),
      scaffoldBackgroundColor: AppColors.darkBackgroundColor,
      elevatedButtonTextStyle: _darkElevatedButtonTextStyle,
      outlinedButtonTextStyle: _darkOutlinedButtonTextStyle,
      appBarTheme: AppBarTheme(color: AppColors.grey[900]!.withOpacity(0.3)),
    );
  }

  ThemeData get light {
    return _getThemeData(
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        background: AppColors.grey[100]!,
        surface: AppColors.grey[200]!,
        outline: AppColors.grey[300]!,
        outlineVariant: AppColors.grey[400]!,
        onBackground: AppColors.grey[800]!,
        onSurface: AppColors.grey[700]!,
        onSurfaceVariant: AppColors.grey[600]!,
        tertiary: AppColors.grey[900]!,
      ),
      scaffoldBackgroundColor: AppColors.grey[100]!,
      elevatedButtonTextStyle: _lightElevatedButtonTextStyle,
      outlinedButtonTextStyle: _lightOutlinedButtonTextStyle,
      appBarTheme: AppBarTheme(color: AppColors.grey[100]!.withOpacity(0.3)),
    );
  }

  ThemeData _getThemeData({
    required ColorScheme colorScheme,
    required WidgetStateProperty<TextStyle> elevatedButtonTextStyle,
    required WidgetStateProperty<TextStyle> outlinedButtonTextStyle,
    required Color scaffoldBackgroundColor,
    required AppBarTheme appBarTheme,
  }) {
    return ThemeData(
      colorScheme: colorScheme,
      useMaterial3: true,
      fontFamily: fontFamily,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      appBarTheme: appBarTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          fixedSize: const WidgetStatePropertyAll(Size.fromHeight(40)),
          backgroundColor: _primaryButtonStates,
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: Insets.xl, vertical: 10),
          ),
          textStyle: elevatedButtonTextStyle,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          fixedSize: const WidgetStatePropertyAll(Size.fromHeight(40)),
          side: _outlineButtonStates,
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: Insets.xl, vertical: 10),
          ),
          textStyle: outlinedButtonTextStyle,
        ),
      ),
    );
  }

  final _primaryButtonStates = WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.hovered) ||
        states.contains(WidgetState.pressed)) {
      return const Color(0xff561895).withOpacity(0.7);
    }
    return AppColors.primaryColor;
  });
  final _outlineButtonStates = WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.hovered) ||
        states.contains(WidgetState.pressed)) {
      return BorderSide(color: Color(0xff561895).withOpacity(0.7));
    }
    return const BorderSide(color: Color(0xff561895));
  });

  WidgetStatePropertyAll<TextStyle> get _darkElevatedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.grey[100],
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
      );
  WidgetStatePropertyAll<TextStyle> get _lightElevatedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.grey[100],
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
      );

  WidgetStatePropertyAll<TextStyle> get _darkOutlinedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.grey[100],
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
      );
  WidgetStatePropertyAll<TextStyle> get _lightOutlinedButtonTextStyle =>
      WidgetStatePropertyAll(
        TextStyle(
          color: AppColors.grey[800],
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
        ),
      );
}
