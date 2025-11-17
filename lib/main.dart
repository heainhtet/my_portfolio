import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/features/home/pressentation/home_page.dart';
import 'package:my_portfolio/l10n/app_localizations.dart';
import 'package:my_portfolio/shared/app_theme_controller.dart';

import 'routes/app_routes.dart';
import 'shared/app_locale_controller.dart';
import 'style/app_theme.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final locale = ref.watch(appLocaleControllerProvider);
    final theme = ref.watch(appThemeControllerProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      darkTheme: AppTheme(fontFamily: _fontFamily(locale.value)).dark,
      theme: AppTheme(fontFamily: _fontFamily(locale.value)).light,
      themeMode: theme.value,
      supportedLocales: [Locale('en'), Locale('my')],
      locale: Locale(locale.value ?? 'en'),

      routerConfig: AppRoutes.router,
    );
  }

  String _fontFamily(String? locale) {
    return (locale ?? 'en') == 'en' ? 'Poppins' : 'NotoSerifMyanmar';
  }
}
