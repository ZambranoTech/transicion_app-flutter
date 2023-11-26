import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:transicion_app/presentation/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const Screen1(),
  ),
  GoRoute(
    path: '/screen-2',
    pageBuilder: (context, state) => CustomTransitionPage(
      transitionDuration: const Duration(milliseconds: 2000),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation =
            CurvedAnimation(parent: animation, curve: Curves.easeInOut);

        // return SlideTransition(
        //   position: Tween<Offset>(begin: Offset(0.0, -1.0) , end: Offset.zero).animate(curvedAnimation),
        //   child: child,
        // );

        // return ScaleTransition(
        //   scale: Tween<double>(begin: 0.0 , end: 1.0).animate(curvedAnimation),
        //   child: child,
        // );

        // return RotationTransition(
        //   turns: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
        //   child: child,
        // );

        // return FadeTransition(
        //   opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
        //   child: child,
        // );

        return RotationTransition(
          turns: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
          child: FadeTransition(
            opacity:
                Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
            child: child,
          ),
        );
      },
      child: const Screen2(),
    ),
  )
]);
