import 'package:flutter/material.dart';
import 'package:my_portfolio/extensions.dart';
import 'package:my_portfolio/features/course/presentation/course_item.dart';
import 'package:my_portfolio/widgets/app_scaffold.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

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
        // SliverPadding(
        //   padding: EdgeInsets.all(context.insets.padding),
        //   sliver: SliverGrid.builder(
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: (context.mq.size.width ~/ 300) >= 3
        //           ? 3
        //           : context.mq.size.width ~/ 300,
        //       crossAxisSpacing: 24,
        //       mainAxisSpacing: 24,
        //       childAspectRatio: 0.8,
        //     ),

        //     itemBuilder: (context, index) {
        //       return CourseItem();
        //     },
        //     itemCount: 10,
        //   ),
        // ),
      ],
    );
  }
}
