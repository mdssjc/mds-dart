import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/donut_service.dart';
import '../widgets/donut_filter_bar_widget.dart';
import '../widgets/donut_list_widget.dart';
import '../widgets/donut_pager_widget.dart';

class DonutMainPage extends StatelessWidget {
  const DonutMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DonutPager(),
        const DonutFilterBar(),
        Expanded(
          child: Consumer<DonutService>(
            builder: (context, donutService, child) {
              return DonutList(donuts: donutService.filteredDonuts);
            },
          ),
        ),
      ],
    );
  }
}
