import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/widgets/home_title_subtitle.dart';
import 'package:my_portfolio/widgets/styled_card.dart';

const expLengtg = 6;
const expPointSzie = 16.0;
const expScaleFactor = 150.0;
const expPointFactor = expHeight / 2 - expPointSzie / 2;

class ExperiencesBody extends StatelessWidget {
  const ExperiencesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitleSubtitle(
          title: context.texts.experiences,
          subtitle: context.texts.experiencesDesc,
        ),
        const Gap(32),
        context.isDesktop ? DesktopExperiencesBody() : PhoneExperiencesBody(),
      ],
    );
    // DesktopExperiencesBody();
  }
}

class DesktopExperiencesBody extends StatelessWidget {
  const DesktopExperiencesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: expLengtg * expScaleFactor + expScaleFactor,

      child: Stack(
        children: [
          Center(
            child: Container(
              width: 3,
              height: expLengtg * expScaleFactor + expScaleFactor,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    context.colorScheme.primary.withOpacity(0),
                    context.colorScheme.primary,
                    context.colorScheme.primary.withOpacity(0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          for (int i = 0; i < expLengtg; i++) ...[
            if (i.isEven)
              Positioned(
                top: i * expScaleFactor,
                right: 400,
                left: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ExperienceItems(),
                    SizedBox(
                      width: 100,
                      child: DottedLine(
                        dashColor: context.colorScheme.onBackground,
                      ),
                    ),
                  ],
                ),
              )
            else
              Positioned(
                top: i * expScaleFactor,
                left: 400,
                right: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: DottedLine(
                        dashColor: context.colorScheme.onBackground,
                      ),
                    ),
                    ExperienceItems(),
                  ],
                ),
              ),
            Positioned(
              top: i * expScaleFactor + expPointFactor,
              right: 0,
              left: 0,
              child: Container(
                alignment: Alignment.center,
                width: expPointSzie,
                height: expPointSzie,
                decoration: BoxDecoration(
                  color: context.colorScheme.onBackground.withOpacity(0.25),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: expPointSzie / 2,
                  height: expPointSzie / 2,
                  decoration: BoxDecoration(
                    color: context.colorScheme.onBackground.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class PhoneExperiencesBody extends StatelessWidget {
  const PhoneExperiencesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ExperienceItems(),
          SizedBox(
            height: 60,
            child: DottedLine(
              dashColor: Colors.white,
              direction: Axis.vertical,
            ),
          ),
          ExperienceItems(),
          SizedBox(
            height: 60,
            child: DottedLine(
              dashColor: Colors.white,
              direction: Axis.vertical,
            ),
          ),
          ExperienceItems(),
          SizedBox(
            height: 60,
            child: DottedLine(
              dashColor: Colors.white,
              direction: Axis.vertical,
            ),
          ),
          ExperienceItems(),
          SizedBox(
            height: 60,
            child: DottedLine(
              dashColor: Colors.white,
              direction: Axis.vertical,
            ),
          ),
          ExperienceItems(),
        ],
      ),
    );
  }
}

const expWidth = 300.0;
const expHeight = 230.0;

class ExperienceItems extends StatelessWidget {
  const ExperienceItems({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      width: expWidth,
      height: expHeight,
      borderEffect: true,
      child: Column(
        children: [
          Text(
            "Experience Title",
            style: context.textStyle.bodyLgBold.copyWith(
              color: context.colorScheme.onBackground,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                _ExperienceDescriptionItem(),
                _ExperienceDescriptionItem(),

                _ExperienceDescriptionItem(),

                _ExperienceDescriptionItem(),

                _ExperienceDescriptionItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ExperienceDescriptionItem extends StatelessWidget {
  const _ExperienceDescriptionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.colorScheme.onBackground,
          ),
        ),
        Gap(6),
        Expanded(
          child: Text(
            'Description item with ',
            style: context.textStyle.bodyMdMedium.copyWith(
              color: context.colorScheme.onSurface,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
