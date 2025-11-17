import 'package:go_router/go_router.dart';
import 'package:my_portfolio/features/about/presentation/about_page.dart';
import 'package:my_portfolio/features/blog/presentation/blog_page.dart';
import 'package:my_portfolio/features/course/course_page.dart';
import 'package:my_portfolio/features/home/pressentation/home_page.dart';

class Routes {
  static const String home = '/';
  static const String courses = '/courses';
  static const String blog = '/blog';
  static const String aboutMe = '/about';
}

class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.home,
        pageBuilder: (context, state) => NoTransitionPage(child: HomePage()),
      ),
      GoRoute(
        path: Routes.courses,
        pageBuilder: (context, state) => NoTransitionPage(child: CoursePage()),
      ),
      GoRoute(
        path: Routes.blog,
        pageBuilder: (context, state) => NoTransitionPage(child: BlogPage()),
      ),

      GoRoute(
        path: Routes.aboutMe,
        pageBuilder: (context, state) => NoTransitionPage(child: AboutPage()),
      ),
    ],
  );
}
