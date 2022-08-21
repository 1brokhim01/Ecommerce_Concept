import 'package:ecommerce/views/home/view/home_view.dart';
import 'package:ecommerce/views/cart/view/cart_view.dart';
import 'package:ecommerce/views/product_details/view/product_details_view.dart';
import 'package:ecommerce/views/splash_screen/view/splash_screen_view.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static final MyRoutes _instance = MyRoutes.init();
  static MyRoutes get instance => MyRoutes._instance;
  MyRoutes.init();
  Route? onGenerate(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/splash_screen':
        return MaterialPageRoute(builder: (_) => const SplashScreensView());
      case '/home':
        return MaterialPageRoute(builder: (_) => const MyHomeView());
      case '/product_details':
        return MaterialPageRoute(builder: (_) => const ProductDetailsView());
      case '/cart':
        return MaterialPageRoute(builder: (_) => const MyCartView());
    }
  }
}
