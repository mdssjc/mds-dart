import 'package:flutter/material.dart';
import 'package:flutter_complete_guide_4/helpers/custom_route.dart';
import 'package:flutter_complete_guide_4/providers/auth.dart';
import 'package:flutter_complete_guide_4/providers/cart.dart';
import 'package:flutter_complete_guide_4/providers/orders.dart';
import 'package:flutter_complete_guide_4/providers/products.dart';
import 'package:flutter_complete_guide_4/screens/auth_screen.dart';
import 'package:flutter_complete_guide_4/screens/cart_screen.dart';
import 'package:flutter_complete_guide_4/screens/edit_product_screen.dart';
import 'package:flutter_complete_guide_4/screens/orders_screen.dart';
import 'package:flutter_complete_guide_4/screens/product_detail_screen.dart';
import 'package:flutter_complete_guide_4/screens/products_overview_screen.dart';
import 'package:flutter_complete_guide_4/screens/splash_screen.dart';
import 'package:flutter_complete_guide_4/screens/user_products_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Auth()),
        ChangeNotifierProxyProvider<Auth, Products>(
          builder: (ctx, auth, previousProducts) => Products(
            auth.token,
            auth.userId,
            previousProducts == null ? [] : previousProducts.items,
          ),
        ),
        ChangeNotifierProvider.value(value: Cart()),
        ChangeNotifierProxyProvider<Auth, Orders>(
          builder: (ctx, auth, previousOrders) => Orders(
            auth.token,
            auth.userId,
            previousOrders == null ? [] : previousOrders.orders,
          ),
        ),
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          title: 'MyShop',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato',
            pageTransitionsTheme: PageTransitionsTheme(
              builders: {
                TargetPlatform.android: CustomPageTransitionBuilder(),
                TargetPlatform.iOS: CustomPageTransitionBuilder(),
              },
            ),
          ),
          home: auth.isAuth
              ? ProductsOverviewScreen()
              : FutureBuilder(
                  future: auth.tryAutoLogin(),
                  builder: (ctx, authResultSnapshot) =>
                      authResultSnapshot.connectionState ==
                              ConnectionState.waiting
                          ? SplashScreen()
                          : AuthScreen()),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
            OrdersScreen.routeName: (ctx) => OrdersScreen(),
            UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
            EditProductScreen.routeName: (ctx) => EditProductScreen(),
          },
        ),
      ),
    );
  }
}
