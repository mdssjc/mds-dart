import 'package:flutter/material.dart';

import '../utils.dart';
import '../widgets/donut_bottom_bar_widget.dart';
import '../widgets/donut_side_menu.dart';
import 'donut_main_page_screen.dart';

class DonutShopMain extends StatelessWidget {
  const DonutShopMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: DonutSideMenu()),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Utils.mainDark),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Image.network(Utils.donutLogoRedText, width: 120),
      ),
      body: Column(
        children: [
          Expanded(
            child: Navigator(
              key: Utils.mainListNav,
              initialRoute: '/main',
              onGenerateRoute: (RouteSettings settings) {
                Widget page;
                switch (settings.name) {
                  case '/main':
                    page = const DonutMainPage();
                    break;
                  case '/favorites':
                    page = const Center(child: Text('favorites'));
                    break;
                  case '/shoppingcart':
                    page = const Center(child: Text('shopping cart'));
                    break;
                  default:
                    page = const Center(child: Text('main'));
                    break;
                }

                return PageRouteBuilder(
                  pageBuilder: (_, __, ___) => page,
                  transitionDuration: const Duration(seconds: 0),
                );
              },
            ),
          ),
          const DonutBottomBar(),
        ],
      ),
    );
  }
}
