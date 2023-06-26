import 'package:flutter/material.dart';
import 'package:pr/bottombar.dart';
import 'package:pr/sidebar.dart';
import 'package:pr/utils.dart';

class DonutShopMain extends StatelessWidget {
  const DonutShopMain({super.key});

  @override
  Widget build(BuildContext context) {
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
      drawer: Drawer(
        child: DonutSideMenuBar(),
      ),
      body: Column(
        children: [
          Expanded(
              child: Navigator(
            key: Utils.mainListNav,
            initialRoute: '/main',
            onGenerateRoute: (settings) {
              Widget page;
              switch (settings.name) {
                case '/main':
                  page = Center(
                    child: Text('main'),
                  );
                  break;

                case '/favorites':
                  page = Center(
                    child: Text('favorites'),
                  );
                  break;
 
                  case '/cartshopping':
                  page = Center(child: Text('cartshopping'),);
                  break;
                  default: 
                  page = Center(child: Text('main',),);
                  break;
              }
              
              return PageRouteBuilder(pageBuilder: ( (context, animation, secondaryAnimation) => page ), transitionDuration: const Duration(seconds: 0) );
            },
          )),
          const DonutBottomBar(),
        ],
      ),
    );
  }
}
