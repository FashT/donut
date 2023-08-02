// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:pr/providers/utils.dart';

class DonutCard extends StatelessWidget {
  final DonutModel? donutInfo;

  const DonutCard({
    Key? key,
    this.donutInfo,
  }) : super(key: key);

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
                offset: const Offset(00, 4.0),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 3),
                child: Text(
                  donutInfo!.name!,
                  maxLines: 2,
                  // softWrap: true,
                  // overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: Utils.mainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Utils.mainColor,
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   padding:
              //       const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Utils.mainColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, bottom: 5, top: 5),
                  child: Text('\$${donutInfo!.price!.toStringAsFixed(2)}'),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Image.network(
            donutInfo!.imgUrl!,
            width: 150,
            height: 150,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
