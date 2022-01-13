import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/donut_shop_details_screen.dart';
import 'screens/donut_shop_main_screen.dart';
import 'screens/splash_page_screen.dart';
import 'services/donut_bottom_bar_selection_service.dart';
import 'services/donut_service.dart';
import 'utils.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DonutBottomBarSelectionService(),
        ),
        ChangeNotifierProvider(
          create: (_) => DonutService(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        navigatorKey: Utils.mainAppNav,
        routes: {
          '/': (context) => const SplashPage(),
          '/main': (context) => const DonutShopMain(),
          '/details': (context) => const DonutShopDetails(),
        },
      ),
    ),
  );
}
