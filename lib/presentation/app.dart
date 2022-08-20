import 'package:banco_finandina/presentation/theme/theme_data.dart';
import 'package:flutter/material.dart';
import '../common/configs/configuration.dart';
import 'routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = Routes.router;
    return MaterialApp.router(
      title: Configuration.name,
      theme: appTheme(context),
      debugShowCheckedModeBanner: false,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
