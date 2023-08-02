import 'package:flutter/material.dart';
import 'package:pr/providers/utils.dart';
import 'package:provider/provider.dart';

class DonutFilterBar extends StatelessWidget {
  const DonutFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    Alignment alignmentBasedOnTap(filteredBarId) {
      switch (filteredBarId) {
        case 'classic':
          return Alignment.centerLeft;

        case 'sprinkled':
          return Alignment.center;
        case 'stuffed':
          return Alignment.centerRight;

        default:
          return Alignment.centerLeft;
      }
    }

    return Container(
      padding: const EdgeInsets.all(20),
      child: Consumer<DonutService>(
        builder: (context, donutService, child) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  donutService.filterBarItems.length,
                  (index) {
                    DonutFilterBarItem item =
                        donutService.filterBarItems[index];

                    return GestureDetector(
                      onTap: () {
                        donutService.filteredDonutsByType(item.id!);
                      },
                      child: Container(
                        child: Text(
                          item.label!,
                          style: TextStyle(
                              color: donutService.selectDonutType == item.id
                                  ? Utils.mainColor
                                  : Utils.mainDark),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  AnimatedAlign(
                    alignment:
                        alignmentBasedOnTap(donutService.selectDonutType),
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3 - 20,
                          height: 5,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Utils.mainColor),
                        ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
