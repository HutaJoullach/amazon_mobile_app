import 'package:amazon_mobile_app/common/widgets/bottom_bar.dart';
import 'package:amazon_mobile_app/features/address/screens/address_screen.dart';
import 'package:amazon_mobile_app/features/admin/screens/add_product_screen.dart';
import 'package:amazon_mobile_app/features/auth/screens/auth_screen.dart';
import 'package:amazon_mobile_app/features/home/screens/category_deals_screen.dart';
import 'package:amazon_mobile_app/features/home/screens/home_screen.dart';
import 'package:amazon_mobile_app/features/order_details/screens/order_details.dart';
import 'package:amazon_mobile_app/features/product_details/screens/product_details_screen.dart';
import 'package:amazon_mobile_app/features/search/screens/search_screen.dart';
import 'package:amazon_mobile_app/models/order.dart';
import 'package:amazon_mobile_app/models/product.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
