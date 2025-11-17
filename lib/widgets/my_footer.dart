import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/style/app_size.dart';
import 'package:my_portfolio/widgets/appBar/my_app_bar.dart';
import 'package:my_portfolio/widgets/powered_by_flutter.dart';

import '../constants/app_icon.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: Insets.maxWidth),

      child: Container(
        color: context.theme.appBarTheme.backgroundColor,
        padding: EdgeInsets.all(context.insets.padding),
        child: Column(
          children: [
            context.isDesktop ? _DesktopFooter() : _PhoneFooter(),
            const Divider(height: 24),
            const PoweredByFlutter(),
          ],
        ),
      ),
    );
  }
}

class _PhoneFooter extends StatelessWidget {
  const _PhoneFooter();

  @override
  Widget build(BuildContext context) {
    return Column(children: [AppLogo(), SmallMenus(), _FooterLinks()]);
  }
}

class _DesktopFooter extends StatelessWidget {
  const _DesktopFooter();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [AppLogo(), Spacer(), LargeMenus(), Spacer(), _FooterLinks()],
    );
  }
}

class _FooterLinks extends StatelessWidget {
  const _FooterLinks();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _FooterLinkItem(onPressed: () {}, icon: AppIcon.git),
        _FooterLinkItem(onPressed: () {}, icon: AppIcon.linkedin),
        _FooterLinkItem(onPressed: () {}, icon: AppIcon.git),
        _FooterLinkItem(onPressed: () {}, icon: AppIcon.linkedin),
      ],
    );
  }
}

class _FooterLinkItem extends StatelessWidget {
  const _FooterLinkItem({required this.onPressed, required this.icon});
  final VoidCallback onPressed;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          context.colorScheme.onBackground,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
