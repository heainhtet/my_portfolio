import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/extensions.dart';

import '../../../style/app_size.dart';
import '../../../widgets/styled_buttons.dart';

class LargeHeroButtons extends StatelessWidget {
  const LargeHeroButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PrimaryButton(title: context.texts.courses),
        Gap(Insets.lg),
        OutLineButton(title: context.texts.cooperation),
      ],
    );
  }
}

class SmallHeroButtons extends StatelessWidget {
  const SmallHeroButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: PrimaryButton(title: context.texts.courses),
        ),
        Gap(Insets.lg),

        SizedBox(
          width: double.infinity,
          child: OutLineButton(title: context.texts.cooperation),
        ),
      ],
    );
  }
}
