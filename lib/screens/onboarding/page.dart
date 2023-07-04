import 'package:flutter/material.dart';
import 'package:pr/providers/utils.dart';
import 'package:pr/screens/onboarding/donut_list.dart';
import '/screens/onboarding/donutpager.dart';
import '/screens/sidebar/filterbar.dart';

class DonutMainPage extends StatelessWidget {
  const DonutMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const DonutPager(),
          const DonutFilterBar(),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: SizedBox(
              height: 300,
              child: DonutList(
                donuts: donuts,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
