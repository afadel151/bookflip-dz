import 'package:bookflip_mobile/features/auth/presentation/screens/login.screen.dart';
import 'package:bookflip_mobile/features/auth/presentation/screens/register.screen.dart';
import 'package:bookflip_mobile/features/chat/presentation/screens/chats_screen.dart';
import 'package:bookflip_mobile/features/explore/presentation/screens/explore.screen.dart';
import 'package:bookflip_mobile/features/guest/presentation/screens/intro.dart';
import 'package:bookflip_mobile/features/library/presentation/screens/library_screen.dart';
import 'package:bookflip_mobile/features/profile/presentation/screens/profile.screen.dart';
import 'package:bookflip_mobile/features/settings/presentation/screens/settings_screen.dart';
import 'package:bookflip_mobile/routes/go_router_refresh_stream.dart';
import 'package:bookflip_mobile/utils/main_app_shell.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

part 'routes.g.dart';

enum AppRoutes {
  intro,
  login,
  register,
  main,
  profile,
  chats,
  library,
  settings,
}

final firebaseProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});
final _rootNavigatorKey = GlobalKey<NavigatorState>();
const Map<String, String> _branchTitles = {
  '/main': 'Explore new books',
  '/library': 'Your personal library',
  '/profile': 'User\'s profile',
  '/chats': 'Your chats',
  '/settings': 'Settings',
};
@riverpod
GoRouter goRouter(Ref ref) {
  final firebaseAuth = ref.watch(firebaseProvider);
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/intro',
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final isLogdedIn = firebaseAuth.currentUser != null;
      final path = state.fullPath;
      if (isLogdedIn &&
          (path == '/login' || path == '/register' || path == '/intro')) {
        return '/main';
      } else if (!isLogdedIn &&
          (path!.startsWith('/main') ||
              path.startsWith('/library') ||
              path.startsWith('/profile') ||
              path.startsWith('/chats') ||
              path.startsWith('/settings'))) {
        return '/login';
      }
      return null;
    },
    refreshListenable: GoRouterRefreshStream(firebaseAuth.authStateChanges()),
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          final currentPath = state.fullPath;

          // 2. Look up the corresponding title in the map
          // Use a default title if the path isn't found (shouldn't happen here)
          final String title = _branchTitles[currentPath] ?? 'Page';
          return MainAppShell(navigationShell: navigationShell, title: title);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/main',
                name: AppRoutes.main.name,
                builder: (context, state) => ExploreScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/library',
                name: AppRoutes.library.name,
                builder: (context, state) => LibraryScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                name: AppRoutes.profile.name,
                builder: (context, state) => ProfileScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/chats',
                name: AppRoutes.chats.name,
                builder: (context, state) => ChatsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/settings',
                name: AppRoutes.settings.name,
                builder: (context, state) => SettingsScreen(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/intro',
        name: AppRoutes.intro.name,
        builder: (context, state) => IntroScreen(),
      ),
      GoRoute(
        path: '/login',
        name: AppRoutes.login.name,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        name: AppRoutes.register.name,
        builder: (context, state) => RegisterScreen(),
      ),
    ],
  );
}
