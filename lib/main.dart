import 'package:beesiha_test/injection/dependencies.dart';
import 'package:beesiha_test/presentation/feature/home/characters/providers/get_characters_providers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'injection/injector.dart';
import 'presentation/feature/details/providers/get_comics_providers.dart';
import 'presentation/routes/router.gr.dart';
import 'presentation/utils/ext1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureFirebaseMessaging();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  await DependencyManager.inject();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => injector.get<GetCharactersProviders>(),
        ),
        ChangeNotifierProvider(
          create: (_) => injector.get<GetComicsProviders>(),
        ),
      ],
      child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final appRouter = injector.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
