import 'package:flutter/material.dart';

import '../utils.dart';

// ignore: must_be_immutable
class PageViewIndicator extends StatelessWidget {
  PageController? controller;
  int? numberOfPages;
  int? currentPage;

  PageViewIndicator(
      {Key? key, this.controller, this.numberOfPages, this.currentPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(numberOfPages!, (index) {
        return GestureDetector(
          onTap: () {
            controller!.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            width: 15,
            height: 15,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: currentPage == index
                  ? Utils.mainColor
                  : Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      }),
    );
  }
}
