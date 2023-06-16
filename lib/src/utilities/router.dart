part of 'utilities.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return HomeScreen();
      },
      routes: [
        GoRoute(
          path: 'quis',
          builder: (context, state) {
            return QuisPage();
          },
        ),
      ],
    ),
  ],
);
