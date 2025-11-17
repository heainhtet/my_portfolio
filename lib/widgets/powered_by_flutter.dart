import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/extensions.dart';

class PoweredByFlutter extends StatelessWidget {
  const PoweredByFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/flutter.png',
          width: 24,
          height: 24,
          // color: context.colorScheme.onBackground,
        ),
        const Gap(8),
        Text(
          context.texts.poweredByFlutter,
          style: context.textStyle.bodyMdMedium.copyWith(
            color: context.colorScheme.onBackground,
          ),
        ),
      ],
    );
  }
}
