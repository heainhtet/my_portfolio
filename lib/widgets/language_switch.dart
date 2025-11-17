import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/widgets/seo_text.dart';

import '../shared/app_locale_controller.dart';
import '../constants/app_icon.dart';

class LanguageSwitch extends ConsumerWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final locale = ref.watch(appLocaleControllerProvider);
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: 0,
            child: PopUpLanguageSwitchItem(
              language: 'English',
              icon: AppIcon.us,
            ),
          ),
          PopupMenuItem(
            value: 1,
            child: PopUpLanguageSwitchItem(
              language: 'Burmese',
              icon: AppIcon.burma,
            ),
          ),
        ];
      },
      initialValue: locale.value == 'en' ? 0 : 1,
      onSelected: (value) {
        if (value == 0) {
          ref.read(appLocaleControllerProvider.notifier).changeLocale('en');
        } else if (value == 1) {
          ref.read(appLocaleControllerProvider.notifier).changeLocale('my');
        } else {}
      },
      child: Row(
        children: [
          Icon(Icons.language, color: context.colorScheme.onSurface),
          Gap(4),
          SEOText(locale.value == 'en' ? 'En' : 'Myyyy'),
        ],
      ),
    );
  }
}

class PopUpLanguageSwitchItem extends StatelessWidget {
  const PopUpLanguageSwitchItem({
    super.key,
    required this.language,
    required this.icon,
  });
  final String language;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, width: 18, height: 18),
        const Gap(8),
        SEOText(language),
      ],
    );
  }
}
