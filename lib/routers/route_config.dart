import 'package:go_router/go_router.dart';
import 'package:my_app/first_screen.dart';
import 'package:my_app/main.dart';
import 'package:my_app/routers/route_constants.dart';
import 'package:my_app/second_screen.dart';
import 'package:my_app/third_screen.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: RouteConstants().homeScreen,
    builder: (context, state) => const MyHomePage(),
  ),
  GoRoute(
    path: RouteConstants().firstScreen,
    builder: (context, state) => const FirstScreen(),
  ),
  GoRoute(
    path: RouteConstants().secondScreen,
    builder: (context, state) => const SecondScreen(),
  ),
  GoRoute(
    path: RouteConstants().thirdScreen,
    builder: (context, state) => const ThirdScreen(),
  )
]);
