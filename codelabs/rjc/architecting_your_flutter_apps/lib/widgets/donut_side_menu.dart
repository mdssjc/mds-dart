import 'package:flutter/material.dart';

import '../utils.dart';

class DonutSideMenu extends StatelessWidget {
  const DonutSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Utils.mainDark,
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: Image.network(
              Utils.donutLogoWhiteNoText,
              width: 100,
            ),
          ),
          Image.network(Utils.donutLogoWhiteText, width: 150),
        ],
      ),
    );
  }
}
