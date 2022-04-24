import 'package:cat_project/pages/top_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'cat-app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
      );
  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => TopPage(),
      ),
    ],
  );
}
