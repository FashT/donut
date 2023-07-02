

import 'package:flutter/material.dart';
import 'package:pr/screens/onboarding/page.dart';
import 'package:pr/screens/sidebar/sidebar.dart';
import 'package:provider/provider.dart';

import '../../providers/utils.dart';

class DonutShopMain extends StatefulWidget {
  const DonutShopMain({super.key});

  @override
  State<DonutShopMain> createState() => _DonutShopMainState();
}

class _DonutShopMainState extends State<DonutShopMain> {
  var currentPage = [
   const  DonutMainPage(),
    const Text("Profile"),
    const Text("Settings")
  ];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<DonutBottomBarSelectionService>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.network(
          Utils.donutLogoRedText,
          width: 150,
          height: 150,
        ),
      ),
      drawer: const Drawer(
        child: DonutSideMenuBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Center(child: currentPage[provider.currentIndex1]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Utils.mainColor,
        unselectedItemColor: Utils.mainDark,
        currentIndex: provider.currentIndex1,
        onTap: (value) {
          provider.currentIndex = value;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
