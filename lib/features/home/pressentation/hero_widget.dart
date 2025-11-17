import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/features/home/pressentation/hero_text.dart';
import 'package:my_portfolio/widgets/powered_by_flutter.dart';

import '../../../style/app_size.dart';
import '../../../widgets/hero_image.dart';
import 'hero_buttons.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PoweredByFlutter(),
        context.isDesktop || context.isTablet
            ? const _LargeHero()
            : const _SmallHero(),
      ],
    );
  }
}

class _SmallHero extends StatelessWidget {
  const _SmallHero();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 140),
          child: const HeroImage(),
        ),
        Gap(Insets.xl),
        HeroText(),
        Gap(Insets.xxl),
        SmallHeroButtons(),
      ],
    );
  }
}

class _LargeHero extends StatelessWidget {
  const _LargeHero();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: const HeroImage()),
        Gap(Insets.xxxl),
        Expanded(
          flex: 2,
          child: Column(
            children: [HeroText(), Gap(Insets.xxl), LargeHeroButtons()],
          ),
        ),
      ],
    );
  }
}
