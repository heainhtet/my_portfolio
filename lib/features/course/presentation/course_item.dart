import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/widgets/seo_text.dart';
import 'package:my_portfolio/widgets/styled_card.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      child: AspectRatio(
        aspectRatio: 0.7,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                child: Image.network(
                  'https://dummyimage.com/350x250/33cc99/fff',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Gap(24),
            SEOText(
              "Random",
              style: context.textStyle.bodyLgBold.copyWith(
                color: context.colorScheme.onBackground,
              ),
              textRendererStyle: TextRendererStyle.header4,
            ),
            const Gap(8),
            Expanded(
              child: SEOText(
                "some description for testing ",
                style: context.textStyle.bodyMdMedium.copyWith(
                  color: context.colorScheme.onSurface,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
