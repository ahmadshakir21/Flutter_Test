import 'package:go_router/go_router.dart';
import 'package:my_app/screen/detail_screen.dart';
import 'package:my_app/screen/home_screen.dart';

final router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
  GoRoute(
      path: '/details/:user',
      builder: (context, state) {
        final user = state.pathParameters["user"]!;
        return DetailScreen(
          user: user,
        );
      })
]);
