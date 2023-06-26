import 'package:flutter/material.dart';
import 'package:pr/page.dart';
import 'package:pr/utils.dart';
import 'package:pr/widget.dart';
import 'package:provider/provider.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DonutBottomBarSelectionService(),
          builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        navigatorKey: Utils.mainAppNav,
        routes: {
          '/':(context) => SplashPage(),
          '/main': (context) => DonutShopMain()
        },
      ),
        ),
      ],
      //child:
    );
  }
}
