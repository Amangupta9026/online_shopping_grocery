

import 'package:online_shopping_grocery/local/pref.dart';
import 'package:online_shopping_grocery/router/app_route.dart';
import 'package:online_shopping_grocery/utils.dart/file_collection.dart';
import 'package:online_shopping_grocery/utils.dart/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Prefs.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Online Grocery Shopping',
      theme: themeData,
      routerConfig: appRoute,
      builder: EasyLoading.init(),
    );
  }
}