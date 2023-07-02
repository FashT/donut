// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pr/providers/utils.dart';

class PageViewIndicator extends StatelessWidget {
  final PageController? controller;
  final int? numberOfPages;
  final int? cuurentPage;

  const PageViewIndicator({
    Key? key,
    required this.controller,
    required this.numberOfPages,
    required this.cuurentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        numberOfPages!,
        (index) {
          return Container(
            width: 15,
            height: 15,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: cuurentPage == index
                  ? Utils.mainColor
                  : Colors.grey.withOpacity(0.2),
            ),
          );
        },
      ),
    );
  }
}
