import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/app_bottom_bar.dart';
import '../widgets/app_category_list.dart';
import '../widgets/app_header.dart';
import '../widgets/app_mount_list_view.dart';
import '../widgets/app_search.dart';

class MountsAppScreen extends StatelessWidget {
  const MountsAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Icon(Icons.terrain, color: mainColor, size: 40),
        ),
        actions: const [SizedBox(width: 40, height: 40)],
        iconTheme: const IconThemeData(color: mainColor),
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(30),
          color: mainColor,
          alignment: Alignment.bottomLeft,
          child: const Icon(Icons.terrain, color: Colors.white, size: 80),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AppHeader(),
          AppSearch(),
          Expanded(child: AppMountListView()),
          AppCategoryList(),
          AppBottomBar(),
        ],
      ),
    );
  }
}
