import 'package:flutter/material.dart';
import 'package:inherited_notifier/slider_data.dart';
import 'package:inherited_notifier/slider_inherited_notifier.dart';

import 'expand_equally.dart';

final sliderData = SliderData();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SliderInheritedNotifier(
        sliderData: sliderData,
        child: Builder(
          builder: (context) => Column(
            children: [
              Slider(
                value: SliderInheritedNotifier.of(context),
                onChanged: (value) {
                  sliderData.value = value;
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: SliderInheritedNotifier.of(context),
                    child: Container(
                      color: Colors.yellow,
                      height: 100,
                    ),
                  ),
                  Opacity(
                    opacity: SliderInheritedNotifier.of(context),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                    ),
                  ),
                ].expandEqually().toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
