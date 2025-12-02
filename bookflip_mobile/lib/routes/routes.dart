import 'package:bookflip_mobile/features/auth/presentation/screens/login.screen.dart';
import 'package:bookflip_mobile/features/auth/presentation/screens/register.screen.dart';
import 'package:bookflip_mobile/features/explore/presentation/screens/explore.screen.dart';
import 'package:bookflip_mobile/features/guest/presentation/screens/intro.dart';
import 'package:bookflip_mobile/routes/go_router_refresh_stream.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';


import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'routes.g.dart';


enum AppRoutes { 
  intro,
  login,
  register,
  main  
}


final firebaseProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

@riverpod
GoRouter goRouter(Ref ref) {
  final firebaseAuth = ref.watch(firebaseProvider);
  return GoRouter(
    initialLocation: '/intro',
    debugLogDiagnostics: true,
    redirect: (context, state)  {
      final isLogdedIn = firebaseAuth.currentUser != null;
      if (isLogdedIn && (state.uri.toString() == 'login' || state.uri.toString() == 'register' ) ) {
        return '/main';
      }else if (!isLogdedIn && state.uri.toString().startsWith('/main')){
        return 'login';
      }
      return null;
    },
    refreshListenable: GoRouterRefreshStream(firebaseAuth.authStateChanges()),
    routes: [
      GoRoute(
        path: '/main',
         name: AppRoutes.main.name,
         builder:(context, state) => ExploreScreen(),
      ),
      GoRoute(
        path: '/intro',
         name: AppRoutes.intro.name,
         builder:(context, state) => IntroScreen(),
      ),
      GoRoute(
        path: '/login',
        name: AppRoutes.login.name,
        builder:(context, state) => LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        name: AppRoutes.register.name,
        builder:(context, state) => RegisterScreen(),
      ),
    ],
  );
}
