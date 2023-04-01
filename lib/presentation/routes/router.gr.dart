// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../domain/entities/character.dart' as _i10;
import '../feature/details/details_screen.dart' as _i3;
import '../feature/home/characters/characters_body.dart' as _i6;
import '../feature/home/favorites/favorites_body.dart' as _i7;
import '../feature/home/main_screen.dart' as _i2;
import '../feature/login/confirm/confirm_screen.dart' as _i5;
import '../feature/login/login_screen.dart' as _i4;
import '../feature/splach/splash_screen.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    MainScreenRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MainScreen(),
      );
    },
    DetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsScreenRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.DetailsScreen(
          key: args.key,
          character: args.character,
        ),
      );
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.LoginScreen(key: args.key),
      );
    },
    ConfirmScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmScreenRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ConfirmScreen(
          key: args.key,
          phoneNumber: args.phoneNumber,
        ),
      );
    },
    CharactersBodyRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.CharactersBody(),
      );
    },
    FavoritesBodyRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.FavoritesBody(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          MainScreenRoute.name,
          path: '/main',
          children: [
            _i8.RouteConfig(
              CharactersBodyRoute.name,
              path: '',
              parent: MainScreenRoute.name,
            ),
            _i8.RouteConfig(
              FavoritesBodyRoute.name,
              path: 'favorites-body',
              parent: MainScreenRoute.name,
            ),
          ],
        ),
        _i8.RouteConfig(
          DetailsScreenRoute.name,
          path: '/details',
        ),
        _i8.RouteConfig(
          LoginScreenRoute.name,
          path: '/login',
        ),
        _i8.RouteConfig(
          ConfirmScreenRoute.name,
          path: '/confirm',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i8.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.MainScreen]
class MainScreenRoute extends _i8.PageRouteInfo<void> {
  const MainScreenRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainScreenRoute.name,
          path: '/main',
          initialChildren: children,
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i3.DetailsScreen]
class DetailsScreenRoute extends _i8.PageRouteInfo<DetailsScreenRouteArgs> {
  DetailsScreenRoute({
    _i9.Key? key,
    required _i10.Character character,
  }) : super(
          DetailsScreenRoute.name,
          path: '/details',
          args: DetailsScreenRouteArgs(
            key: key,
            character: character,
          ),
        );

  static const String name = 'DetailsScreenRoute';
}

class DetailsScreenRouteArgs {
  const DetailsScreenRouteArgs({
    this.key,
    required this.character,
  });

  final _i9.Key? key;

  final _i10.Character character;

  @override
  String toString() {
    return 'DetailsScreenRouteArgs{key: $key, character: $character}';
  }
}

/// generated route for
/// [_i4.LoginScreen]
class LoginScreenRoute extends _i8.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({_i9.Key? key})
      : super(
          LoginScreenRoute.name,
          path: '/login',
          args: LoginScreenRouteArgs(key: key),
        );

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.ConfirmScreen]
class ConfirmScreenRoute extends _i8.PageRouteInfo<ConfirmScreenRouteArgs> {
  ConfirmScreenRoute({
    _i9.Key? key,
    required String phoneNumber,
  }) : super(
          ConfirmScreenRoute.name,
          path: '/confirm',
          args: ConfirmScreenRouteArgs(
            key: key,
            phoneNumber: phoneNumber,
          ),
        );

  static const String name = 'ConfirmScreenRoute';
}

class ConfirmScreenRouteArgs {
  const ConfirmScreenRouteArgs({
    this.key,
    required this.phoneNumber,
  });

  final _i9.Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'ConfirmScreenRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }
}

/// generated route for
/// [_i6.CharactersBody]
class CharactersBodyRoute extends _i8.PageRouteInfo<void> {
  const CharactersBodyRoute()
      : super(
          CharactersBodyRoute.name,
          path: '',
        );

  static const String name = 'CharactersBodyRoute';
}

/// generated route for
/// [_i7.FavoritesBody]
class FavoritesBodyRoute extends _i8.PageRouteInfo<void> {
  const FavoritesBodyRoute()
      : super(
          FavoritesBodyRoute.name,
          path: 'favorites-body',
        );

  static const String name = 'FavoritesBodyRoute';
}
