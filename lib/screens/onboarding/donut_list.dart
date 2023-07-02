import 'package:flutter/material.dart';
import 'package:pr/screens/onboarding/donut_card.dart';
import '/providers/utils.dart';

class DonutList extends StatefulWidget {
  List<DonutModel>? donuts;
  DonutList({required this.donuts});

  @override
  State<DonutList> createState() => _DonutListState();
}

class _DonutListState extends State<DonutList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.donuts!.length,
      itemBuilder: (ctx, index){
DonutModel currentDonut = widget.donuts![index];

return DonutCard(donutInfo: currentDonut);
    },);
  }
}