import 'package:auto_route/auto_route.dart';
import 'package:beesiha_test/presentation/feature/details/details_screen.dart';
import 'package:beesiha_test/presentation/feature/home/characters/characters_body.dart';
import 'package:beesiha_test/presentation/feature/home/favorites/favorites_body.dart';
import 'package:beesiha_test/presentation/feature/home/main_screen.dart';
import 'package:beesiha_test/presentation/feature/login/confirm/confirm_screen.dart';
import 'package:beesiha_test/presentation/feature/login/login_screen.dart';
import 'package:beesiha_test/presentation/feature/splach/splash_screen.dart';
import 'package:injectable/injectable.dart';

@MaterialAutoRouter(
  //replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashScreen, path: '/', initial: true),
    AutoRoute(
      page: MainScreen,
      path: '/main',
      children: [
        AutoRoute(page: CharactersBody, initial: true),
        AutoRoute(page: FavoritesBody),
      ],
    ),
    AutoRoute(page: DetailsScreen, path: '/details',),
    AutoRoute(page: LoginScreen, path: '/login',),
    AutoRoute(page: ConfirmScreen, path: '/confirm',),
  ],
)
@Injectable()
class $AppRouter {}
