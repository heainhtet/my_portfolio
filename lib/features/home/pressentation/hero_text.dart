import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/widgets/seo_text.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

import '../../../style/app_size.dart';

class HeroText extends StatelessWidget {
  const HeroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: context.isDesktopOrTablet
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        SEOText(
          context.texts.hhz,
          textAlign: context.isDesktopOrTablet
              ? TextAlign.left
              : TextAlign.center,
          style: context.textStyle.titleLgBold.copyWith(
            color: context.colorScheme.onBackground,
          ),
          textRendererStyle: TextRendererStyle.header1,
        ),
        Gap((Insets.sm)),
        SEOText(
          context.texts.mobileDeveloper,
          textAlign: context.isDesktopOrTablet
              ? TextAlign.left
              : TextAlign.center,
          style: context.textStyle.titleMdMedium.copyWith(
            color: context.colorScheme.onBackground,
          ),
          textRendererStyle: TextRendererStyle.header2,
        ),
        Gap((Insets.lg)),
        SEOText(
          context.texts.mobileDev,
          textAlign: context.isDesktopOrTablet
              ? TextAlign.left
              : TextAlign.center,
          style: context.textStyle.bodyMdMedium.copyWith(
            color: context.colorScheme.onSurface,
          ),
          textRendererStyle: TextRendererStyle.header3,
        ),
      ],
    );
  }
}
