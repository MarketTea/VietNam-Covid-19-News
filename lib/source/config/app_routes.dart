import 'package:flutter/material.dart';

class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    print('Route: ${settings.name}');
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => TabsPage(),
          settings: RouteSettings(name: TabsPage.routeName),
        );
      case HomeScreen.routeName:
        return TabsPage.route();

      // case LocationScreen.routeName:
      //   return LocationScreen.route();
      // case FilterScreen.routeName:
      //   return FilterScreen.route();
      // case RestaurantDetailsScreen.routeName:
      //   return RestaurantDetailsScreen.route(
      //       restaurant: settings.arguments as Restaurant);
      // case RestaurantListingScreen.routeName:
      //   return RestaurantListingScreen.route(
      //       restaurants: settings.arguments as List<Restaurant>);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Something went wrong!'),
        ),
      ),
    );
  }
}