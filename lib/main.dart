import 'package:cat_project/route/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'cat-app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerDelegate: PageRoutes.router.routerDelegate,
        routeInformationParser: PageRoutes.router.routeInformationParser,
      );
}
