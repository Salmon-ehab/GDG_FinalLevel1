import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:level1finalproject/core/widgets/bottom_nav_bar_widget.dart';
import 'package:level1finalproject/features/home/presentation/views/category_list_screen.dart';
import 'package:level1finalproject/features/home/presentation/views/product_details_screen.dart';
import 'package:level1finalproject/features/more/presentation/views/cart_screen.dart';
import 'package:level1finalproject/features/more/presentation/views/notification_screen.dart';
import 'package:level1finalproject/features/more/presentation/views/profile_screen.dart';
import 'package:level1finalproject/features/splash/presentation/views/splash_screen.dart';

abstract class AppRouter {
  static const bottomNavbarScreen = '/BottomNavBarWidget';
  static const categoryListScreen = '/CategoryListScreen';
  static const productDetailsScreen = '/ProductDetailsScreen';
  static const profileScreen = '/ProfileScreen';
  static const notificationScreen = '/NotificationScreen';
  static const cartScreen = '/CartScreen';

  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) {
        return SplashScreen();
      },
    ),
    GoRoute(
        path: bottomNavbarScreen,
        builder: (BuildContext context, GoRouterState state) {
          return BottomNavBarWidget();
        }),
    GoRoute(
        path: categoryListScreen,
        builder: (BuildContext context, GoRouterState state) {
          return CategoryListScreen();
        }),
    GoRoute(
        path: productDetailsScreen,
        builder: (BuildContext context, GoRouterState state) {
          return ProductDetailsScreen();
        }),
    GoRoute(
        path: profileScreen,
        builder: (BuildContext context, GoRouterState state) {
          return ProfileScreen();
        }),
    GoRoute(
        path: notificationScreen,
        builder: (BuildContext context, GoRouterState state) {
          return NotificationScreen();
        }),
    GoRoute(
        path: cartScreen,
        builder: (BuildContext context, GoRouterState state) {
          return CartScreen();
        }),
  ]);



}
