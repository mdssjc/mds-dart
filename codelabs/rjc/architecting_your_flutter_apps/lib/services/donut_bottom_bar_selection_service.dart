import 'package:flutter/foundation.dart';

import '../utils.dart';

class DonutBottomBarSelectionService extends ChangeNotifier {
  String? tabSelection = 'main';

  void setTabSelection(String selection) {
    Utils.mainListNav.currentState!.pushReplacementNamed('/' + selection);
    tabSelection = selection;
    notifyListeners();
  }
}
