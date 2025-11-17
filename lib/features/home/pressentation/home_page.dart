import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/features/home/pressentation/experiences_body.dart';
import 'package:my_portfolio/features/home/pressentation/hero_widget.dart';
import 'package:my_portfolio/features/home/pressentation/home_course_list.dart';
import 'package:my_portfolio/features/home/pressentation/testimony_list.dart';
import 'package:my_portfolio/widgets/appBar/background_blur.dart';
import 'package:my_portfolio/widgets/home_title_subtitle.dart';
import 'package:my_portfolio/widgets/my_footer.dart';

import '../../../style/app_size.dart';
import '../../../widgets/appBar/my_app_bar.dart';
import '../../../widgets/app_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
            child: HeroWidget(),
          ),
        ),
        SliverGap(context.insets.gap),
        SliverToBoxAdapter(child: HomeCourseList()),
        SliverGap(context.insets.gap),
        SliverToBoxAdapter(child: ExperiencesBody()),
        SliverGap(context.insets.gap),

        SliverToBoxAdapter(
          child: HomeTitleSubtitle(
            title: context.texts.feedBack,
            subtitle: context.texts.feedBackDesc,
          ),
        ),
        const SliverGap(32),
        SliverPadding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: context.insets.padding,
          ),
          sliver: TestimonyList(),
        ),
      ],
    );
  }
}
