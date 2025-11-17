import 'package:flutter/material.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/widgets/app_scaffold.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      slivers: [
        SliverToBoxAdapter(

          child: Padding(padding: EdgeInsets.all(context.insets.padding),


          child: Center(child: Text("Coming Soon!",style: TextStyle(

            fontSize: 40,
          ),)),
          ),
        )
      ],
    );
  }
}