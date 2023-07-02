
import 'package:flutter/material.dart';

import '../../providers/utils.dart';
import '../dashboard/dashboard.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Utils.mainAppNav.currentState!.pushReplacementNamed('/main');
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const DonutShopMain()));
    });
    return Scaffold(
      backgroundColor: Utils.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              Utils.donutLogoWhiteNoText,
              width: 100,
              height: 100,
            ),
            Image.network(
              Utils.donutLogoWhiteText,
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
