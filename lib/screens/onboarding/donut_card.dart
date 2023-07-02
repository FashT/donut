import 'package:flutter/material.dart';
import 'package:pr/providers/utils.dart';

class DonutCard extends StatelessWidget {
  DonutModel? donutInfo;

  DonutCard({required this.donutInfo});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 150,
          alignment: Alignment.bottomLeft,
          margin: const EdgeInsets.fromLTRB(10, 80, 10, 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10,
                offset: Offset(00, 4.0),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                donutInfo!.name!,
                style: const TextStyle(
                    color: Utils.mainColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Utils.mainColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                   const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Utils.mainColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5 ),
                child: Text('\$${donutInfo!.price!.toStringAsFixed(2)}'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
