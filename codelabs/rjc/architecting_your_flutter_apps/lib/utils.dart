import 'package:flutter/material.dart';

import 'models/donut.dart';

class Utils {
  static GlobalKey<NavigatorState> mainListNav = GlobalKey();
  static GlobalKey<NavigatorState> mainAppNav = GlobalKey();

  static const Color mainColor = Color(0xFFFF0F7E);
  static const Color mainDark = Color(0xFF980346);
  static const String donutLogoWhiteNoText =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_shop_logowhite_notext.png';
  static const String donutLogoWhiteText =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_shop_text_reversed.png';
  static const String donutLogoRedText =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_shop_text.png';
  static const String donutTitleFavorites =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_favorites_title.png';
  static const String donutTitleMyDonuts =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_mydonuts_title.png';
  static const String donutPromo1 =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_promo1.png';
  static const String donutPromo2 =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_promo2.png';
  static const String donutPromo3 =
      'https://romanejaquez.github.io/flutter-codelab4/assets/donut_promo3.png';

  static List<DonutModel> donuts = [
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutclassic/donut_classic1.png',
      name: 'Strawberry Sprinkled Glazed',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 1.99,
      type: 'classic',
    ),
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutclassic/donut_classic2.png',
      name: 'Chocolate Glazed Doughnut',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 2.99,
      type: 'classic',
    ),
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutclassic/donut_classic3.png',
      name: 'Chocolate Dipped Doughnut',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 2.99,
      type: 'classic',
    ),
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutclassic/donut_classic4.png',
      name: 'Cinamon Glazed Glazed',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 2.99,
      type: 'classic',
    ),
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutclassic/donut_classic5.png',
      name: 'Sugar Glazed Doughnut',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 1.99,
      type: 'classic',
    ),
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutsprinkled/donut_sprinkled1.png',
      name: 'Halloween Chocolate Glazed',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 2.99,
      type: 'sprinkled',
    ),
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutsprinkled/donut_sprinkled2.png',
      name: 'Party Sprinkled Cream',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 1.99,
      type: 'sprinkled',
    ),
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutsprinkled/donut_sprinkled3.png',
      name: 'Chocolate Glazed Sprinkled',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 1.99,
      type: 'sprinkled',
    ),
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutsprinkled/donut_sprinkled4.png',
      name: 'Strawbery Glazed Sprinkled',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 2.99,
      type: 'sprinkled',
    ),
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutsprinkled/donut_sprinkled5.png',
      name: 'Reese\'s Sprinkled',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 3.99,
      type: 'sprinkled',
    ),
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutstuffed/donut_stuffed1.png',
      name: 'Brownie Cream Doughnut',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 1.99,
      type: 'stuffed',
    ),
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutstuffed/donut_stuffed2.png',
      name: 'Jelly Stuffed Doughnut',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 2.99,
      type: 'stuffed',
    ),
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutstuffed/donut_stuffed3.png',
      name: 'Caramel Stuffed Doughnut',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 2.59,
      type: 'stuffed',
    ),
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutstuffed/donut_stuffed4.png',
      name: 'Maple Stuffed Doughnut',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 1.99,
      type: 'stuffed',
    ),
    DonutModel(
      imgUrl:
          'https://romanejaquez.github.io/flutter-codelab4/assets/donutstuffed/donut_stuffed5.png',
      name: 'Glazed Jelly Stuffed Doughnut',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce blandit, tellus condimentum cursus gravida, lorem augue venenatis elit, sit amet bibendum quam neque id sapien.',
      price: 1.59,
      type: 'stuffed',
    ),
  ];
}
