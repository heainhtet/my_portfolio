import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/features/testimoni/presentation/testimony_item.dart';

class TestimonyList extends StatelessWidget {
  const TestimonyList({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isDesktopOrTablet ? _DesktopTestimony() : _PhoneTestimony();
  }
}

class _DesktopTestimony extends StatelessWidget {
  const _DesktopTestimony();

  @override
  Widget build(BuildContext context) {
    return SliverMasonryGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return TestimonyItem();
      }, childCount: 10),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: context.isDesktop ? 3 : 2,
      ),
    );
  }
}

class _PhoneTestimony extends StatelessWidget {
  const _PhoneTestimony();

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) {
        return TestimonyItem();
      },
      separatorBuilder: (context, index) => const Gap(16),
      itemCount: 10,
    );
  }
}
