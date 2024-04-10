import 'package:flutter/material.dart';

import '../constants.dart';

class GenderCard extends StatelessWidget {

  final IconData icon;
  final String gendertext;

  const GenderCard({super.key,required this.icon,required this.gendertext});

  @override
  Widget build(BuildContext context) {
    return Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                  Icon(icon,
                  size: 90,),
                  Text(gendertext,style: labelTextStyle,),
                ]);
  }
}