import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/donut_bottom_bar_selection_service.dart';
import '../utils.dart';

class DonutBottomBar extends StatelessWidget {
  const DonutBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Consumer<DonutBottomBarSelectionService>(
        builder: (context, bottomBarSelectionService, child) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.trip_origin,
                  color: bottomBarSelectionService.tabSelection == 'main'
                      ? Utils.mainDark
                      : Utils.mainColor,
                ),
                onPressed: () {
                  bottomBarSelectionService.setTabSelection('main');
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: bottomBarSelectionService.tabSelection == 'favorites'
                      ? Utils.mainDark
                      : Utils.mainColor,
                ),
                onPressed: () {
                  bottomBarSelectionService.setTabSelection('favorites');
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color:
                      bottomBarSelectionService.tabSelection == 'shoppingcart'
                          ? Utils.mainDark
                          : Utils.mainColor,
                ),
                onPressed: () {
                  bottomBarSelectionService.setTabSelection('shoppingcart');
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
