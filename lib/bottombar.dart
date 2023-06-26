import 'package:flutter/material.dart';
import 'package:pr/utils.dart';
import 'package:provider/provider.dart';

class DonutBottomBar extends StatelessWidget {
  const DonutBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Consumer<DonutBottomBarSelectionService>(
        builder: (context, bottomSelectionService, child) => Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                DonutBottomBarSelectionService dbs =
                    DonutBottomBarSelectionService();
                dbs.setTabSelection('main');
              },
              icon: Icon(Icons.trip_origin),
              color: bottomSelectionService.tabSelection == 'main'
                  ? Utils.mainDark
                  : Utils.mainColor,
            ),
            IconButton(
              onPressed: () {
                DonutBottomBarSelectionService dbs =
                    DonutBottomBarSelectionService();
                dbs.setTabSelection('favorites');
              },
              icon: Icon(Icons.favorite), color: bottomSelectionService.tabSelection == 'favorites'
                  ? Utils.mainDark
                  : Utils.mainColor,
            ),
            IconButton(
              onPressed: () {
                DonutBottomBarSelectionService dbs =
                    DonutBottomBarSelectionService();
                dbs.setTabSelection('cartshopping');
                
              },
              icon: Icon(Icons.shopping_cart),
              color: bottomSelectionService.tabSelection == 'cartshopping'
                  ? Utils.mainDark
                  : Utils.mainColor,
            ),
          ],
        ),
      ),
    );
  }
}
