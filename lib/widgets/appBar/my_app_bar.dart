import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/app_text_styles.dart';
import 'package:my_portfolio/constants/app_menu_list.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/shared/app_theme_controller.dart';
import 'package:my_portfolio/style/app_size.dart';
import 'package:my_portfolio/widgets/appBar/app_bar_drawer_icon.dart';
import 'package:my_portfolio/widgets/language_switch.dart';

import 'drawer_menu.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(microseconds: 400),
          alignment: Alignment.center,
          height: context.insets.appBarHeight,
          padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
          color: context.theme.appBarTheme.backgroundColor,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: Insets.maxWidth),
            child: Row(
              children: [
                AppLogo(),
                Spacer(),

                if (context.isDesktop) LargeMenus(),
                Spacer(),
                LanguageSwitch(),
                ThemeToggle(),
                if (!context.isDesktop) AppBarDrawerIcon(),
              ],
            ),
          ),
        ),
        if (!context.isDesktop) DrawerMenu(),
      ],
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Portfolio", style: context.textStyle.titleLgBold);
  }
}

class LargeMenus extends StatelessWidget {
  const LargeMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AppMenuList.getItems(context)
          .map(
            (e) => LargeAppBarMenuItems(
              text: e.title,
              isSelected: GoRouterState.of(context).fullPath == e.path,
              onTap: () {
                GoRouter.of(context).go(e.path);
              },
            ),
          )
          .toList(),
    );
  }
}

class SmallMenus extends StatelessWidget {
  const SmallMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: AppMenuList.getItems(context)
          .map(
            (e) => LargeAppBarMenuItems(
              text: e.title,
              isSelected: GoRouterState.of(context).fullPath == e.path,
              onTap: () {
                GoRouter.of(context).go(e.path);
              },
            ),
          )
          .toList(),
    );
  }
}

class LargeAppBarMenuItems extends StatelessWidget {
  const LargeAppBarMenuItems({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Insets.med,
          vertical: Insets.xs,
        ),
        child: Text(
          text,
          style: SmallTextStyles().bodyLgMedium.copyWith(
            color: isSelected
                ? context.colorScheme.onBackground
                : context.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}

class ThemeToggle extends ConsumerWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(appThemeControllerProvider);
    return Switch(
      value: state.value == ThemeMode.dark,
      onChanged: (value) {
        ref
            .read(appThemeControllerProvider.notifier)
            .changeTheme(value ? ThemeMode.dark : ThemeMode.light);
      },
    );
  }
}
