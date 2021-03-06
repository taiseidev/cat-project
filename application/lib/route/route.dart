import 'package:cat_project/pages/signUp_page.dart';
import 'package:cat_project/pages/top_page.dart';
import 'package:cat_project/route/error_page.dart';
import 'package:cat_project/route/page_path.dart';
import 'package:go_router/go_router.dart';

class PageRoutes {
  static final router = GoRouter(
    initialLocation: PagePath.topPagePath,
    routes: [
      GoRoute(
        path: PagePath.topPagePath,
        builder: (context, state) => const TopPage(),
      ),
      GoRoute(
        path: PagePath.signUpPagePath,
        builder: (context, state) => const SignUpPage(),
      ),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
  );
}
