import 'package:flutter/material.dart';
import 'package:pr/screens/onboarding/pageviewindcat.dart';

import '../../providers/utils.dart';

class DonutPager extends StatefulWidget {
  const DonutPager({super.key});

  @override
  State<DonutPager> createState() => _DonutPagerState();
}

class _DonutPagerState extends State<DonutPager> {
  List<DonutPage> pages = [
    DonutPage(
        imgLogoUrl: Utils.donutLogoWhiteNoText, imgUrl: Utils.donutPromo1),
    DonutPage(imgLogoUrl: Utils.donutLogoRedText, imgUrl: Utils.donutPromo2),
    DonutPage(imgLogoUrl: Utils.donutLogoWhiteNoText, imgUrl: Utils.donutPromo3)
  ];
  int currentPage = 0;
  PageController? controller;

  @override
  initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Column(
        children: [
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              controller: controller,
              children: List.generate(pages.length, (index) {
                DonutPage currentPage = pages[index];
                
                return Container(
                  alignment: Alignment.bottomLeft,
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset:const Offset(0.0, 5.0),
                        blurRadius: 10,
                      ),
                    ],
                    image: DecorationImage(
                      image: NetworkImage(
                        currentPage.imgUrl!,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // child: Image.network(
                  //   currentPage.imgLogoUrl!,
                  //   width: 120,
                  // ),
                );
              }),
            ),
          ),
          PageViewIndicator(controller: controller, numberOfPages: pages.length, cuurentPage: currentPage)
        ],
      ),
    );
  }
}
