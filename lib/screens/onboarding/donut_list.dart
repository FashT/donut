
import 'package:flutter/material.dart';
import 'package:pr/screens/onboarding/donut_card.dart';

import '/providers/utils.dart';

class DonutList extends StatefulWidget {
  final List<DonutModel>? donuts;
  const DonutList({
    Key? key,
    this.donuts,
  }) : super(key: key);

  @override
  State<DonutList> createState() => _DonutListState();
}

class _DonutListState extends State<DonutList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: widget.donuts!.length,
      itemBuilder: (ctx, index) {
        DonutModel currentDonut = widget.donuts![index];

        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: DonutCard(donutInfo: currentDonut),
        );
      },
    );
  }
}
