import 'package:architecting_your_flutter_apps/models/donut.dart';
import 'package:flutter/material.dart';

import 'donut_card_widget.dart';

// ignore: must_be_immutable
class DonutList extends StatefulWidget {
  List<DonutModel>? donuts;

  DonutList({Key? key, this.donuts}) : super(key: key);

  @override
  State<DonutList> createState() => _DonutListState();
}

class _DonutListState extends State<DonutList> {
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  List<DonutModel> insertedItems = [];

  @override
  void initState() {
    super.initState();

    var future = Future(() {});
    for (var i = 0; i < widget.donuts!.length; i++) {
      future = future.then((_) {
        return Future.delayed(const Duration(milliseconds: 125), () {
          insertedItems.add(widget.donuts![i]);
          _key.currentState!.insertItem(i);
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
        key: _key,
        scrollDirection: Axis.horizontal,
        initialItemCount: insertedItems.length,
        itemBuilder: (context, index, animation) {
          DonutModel currentDonut = widget.donuts![index];

          return SlideTransition(
              position: Tween(
                begin: const Offset(0.2, 0.0),
                end: const Offset(0.0, 0.0),
              ).animate(CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOut,
              )),
              child: FadeTransition(
                opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeInOut,
                )),
                child: DonutCard(donutInfo: currentDonut),
              ));
        });
  }
}
