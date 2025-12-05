import 'package:bookflip_mobile/firebase_options.dart';
import 'package:bookflip_mobile/config/theme/default.dart';
import 'package:bookflip_mobile/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // optional
  // if (kDebugMode) {
  //   await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  //   FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8085);
  // }

  runApp(ProviderScope(child:  MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return ShadcnApp.router(
      theme: AppDesign.appTheme,
      // home: IntroScreen()
      debugShowCheckedModeBanner: false,
      routerConfig: ref.watch(goRouterProvider),
     );
  }
}
