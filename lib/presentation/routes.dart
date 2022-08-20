import 'package:go_router/go_router.dart';

import '../common/constants/route_constants.dart';
import 'screens/introduction/introduction_screen.dart';

class Routes {
  static final router = GoRouter(
    initialLocation: RoutesList.introduction,
    routes: [
      GoRoute(
        path: RoutesList.introduction,
        builder: (context, state) => const IntroductionsScreen(),
      ),
    ],
  );
}
