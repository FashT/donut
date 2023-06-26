import 'package:flutter/material.dart';
import 'utils.dart';

class DonutSideMenuBar extends StatefulWidget {
  const DonutSideMenuBar({super.key});

  @override
  State<DonutSideMenuBar> createState() => _DonutSideMenuBarState();
}

class _DonutSideMenuBarState extends State<DonutSideMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
       padding:const  EdgeInsets.all(40),
        color: Utils.mainDark,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(Utils.donutLogoWhiteNoText, width: 100,),
            Image.network(Utils.donutLogoWhiteText, width: 150,),
          ],
        ),
      );
  }
}