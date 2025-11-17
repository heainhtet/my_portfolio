import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/features/course/presentation/course_item.dart';
import 'package:my_portfolio/widgets/home_title_subtitle.dart';

class HomeCourseList extends StatelessWidget {
  const HomeCourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitleSubtitle(
          title: context.texts.courses,
          subtitle: context.texts.courseDesc,
        ),
        Gap(32),
        context.isDesktop ?
        _HomeCourseListDesktop() : _HomeCourseListPhone(),
      ],
    );
  }
}

class _HomeCourseListDesktop extends StatelessWidget {
  const _HomeCourseListDesktop();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: Row(
        children: [
          Expanded(child: CourseItem()),
          Expanded(child: CourseItem()),
          Expanded(child: CourseItem()),
        ],
      ),
    );
  }
}

class _HomeCourseListPhone extends StatelessWidget {
  const _HomeCourseListPhone();

  @override
  Widget build(BuildContext context) {
    return Center(
child: SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      SizedBox(width: 240,
      child: CourseItem(),),
      SizedBox(width: 240,
      child: CourseItem(),),
      SizedBox(width: 240,
      child: CourseItem(),),
    ],
  ),
),
    );
  }
}