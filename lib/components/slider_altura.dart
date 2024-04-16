import '../constants.dart';
import 'package:flutter/material.dart';

class SliderAltura extends StatelessWidget {
  final void Function(double) onChanged;
  int height = 120;
  SliderAltura({super.key, required this.onChanged, required this.height});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'ALTURA',
          style: labelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              height.toString(),
              style: numberTextStyle,
            ),
            Text(
              'cm',
              style: labelTextStyle,
            ),
          ],
        ),
        Slider(
          min: 120,
          max: 220,
          value: height.toDouble() ,
          onChanged: (double value) {
            onChanged (value);
          },
        )
      ],
    );
  }
}
