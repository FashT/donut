import 'package:flutter/material.dart';
import 'package:pr/providers/utils.dart';
import 'package:pr/screens/onboarding/donut_list.dart';
import '/screens/onboarding/donutpager.dart';
import '/screens/sidebar/filterbar.dart';

class DonutMainPage extends StatelessWidget {
  const DonutMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
     
      children: [
        DonutPager(),
        DonutFilterBar(),
        Expanded(child: DonutList(donuts: donuts)), 
      ],
    );
  }
}
