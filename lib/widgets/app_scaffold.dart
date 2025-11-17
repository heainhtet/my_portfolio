import 'package:flutter/material.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/widgets/appBar/background_blur.dart';

import '../style/app_size.dart';
import 'appBar/my_app_bar.dart';
import 'my_footer.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.slivers});
  final List<Widget> slivers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundBlur(),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              constraints: BoxConstraints(maxWidth: Insets.maxWidth),
              padding: EdgeInsets.only(top: context.insets.appBarHeight),
              child: CustomScrollView(
                slivers: [
                  ...slivers,

                  const SliverToBoxAdapter(child: MyFooter()),
                ],
              ),
            ),
          ),

          const MyAppBar(),
        ],
      ),
    );
  }
}
