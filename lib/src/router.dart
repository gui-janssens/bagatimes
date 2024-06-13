import 'package:bagatimes/src/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  initialLocation: '/',
  navigatorKey: GlobalKey<NavigatorState>(),
  redirect: (_, state) async {
    return HomePage.route;
  },
  routes: [
    GoRoute(
      name: HomePage.route,
      path: HomePage.route,
      builder: (context, state) => const SelectableAreaWrapper(HomePage()),
    ),
  ],
);

class SelectableAreaWrapper extends StatelessWidget {
  final Widget page;
  const SelectableAreaWrapper(this.page, {super.key});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: page,
    );
  }
}
