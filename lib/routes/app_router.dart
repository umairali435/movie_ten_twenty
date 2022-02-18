import 'package:flutter/material.dart';
import 'package:movies_app/routes/app_routes.dart';
import 'package:movies_app/views/screens/details_screen.dart';
import 'package:movies_app/views/screens/search_screen.dart';
import 'package:movies_app/views/screens/trailer_screen.dart';
import 'package:movies_app/views/screens/watch_screen.dart';

@immutable
class AppRouter {
  const AppRouter._();
  static const String initialRoute = Routes.watchInitialRoute;

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static Future<dynamic> pushNamed(String routeName, {dynamic args}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  static Future<void> pop([dynamic result]) async {
    navigatorKey.currentState!.pop(result);
  }

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.watchInitialRoute:
        return MaterialPageRoute<dynamic>(
            builder: (_) => WatchScreen(),
            settings: RouteSettings(name: Routes.watchInitialRoute));
      case Routes.watchsearchRoute:
        return MaterialPageRoute<dynamic>(
            builder: (_) => SearchPage(),
            settings: RouteSettings(name: Routes.watchsearchRoute));
      case Routes.watchdetailsRoute:
        return MaterialPageRoute<dynamic>(
            builder: (_) => DetailsScreen(),
            settings: RouteSettings(name: Routes.watchdetailsRoute));
      case Routes.watchtrailerRoute:
        return MaterialPageRoute<dynamic>(
            builder: (_) => TrailerScreen(),
            settings: RouteSettings(name: Routes.watchdetailsRoute));
      default:
    }
  }
}
