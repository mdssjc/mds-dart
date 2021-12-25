import 'package:flutter/material.dart';

import '../constants.dart';
import 'landing_page_screen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LandingPage()));
    });

    return Stack(
      children: [
        Container(
          color: mainYellow,
        ),
        const Align(
          alignment: Alignment.center,
          child: Icon(Icons.airplanemode_on, color: Colors.black, size: 80),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 160,
            height: 160,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.black.withOpacity(0.2),
              ),
              strokeWidth: 10,
            ),
          ),
        ),
      ],
    );
  }
}
