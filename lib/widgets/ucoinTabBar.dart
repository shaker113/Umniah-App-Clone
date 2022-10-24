// ignore: file_names
import 'package:flutter/material.dart';
import 'package:umniah/data/data.dart';

import 'widgets.dart';

// ignore: must_be_immutable
class UcoinTabBar extends StatefulWidget {
  UcoinTabBar({super.key, required this.tab1, required this.tab2});
  String tab1;
  String tab2;

  @override
  State<UcoinTabBar> createState() => _UcoinTabBarState();
}

class _UcoinTabBarState extends State<UcoinTabBar>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this, initialIndex: 1);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 25),
          alignment: Alignment.topRight,
          height: 35,
          child: TabBar(
            indicatorColor: const Color.fromARGB(255, 223, 224, 60),
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.grey.shade600,
            unselectedLabelStyle: const TextStyle(fontSize: 22),
            controller: _controller,
            tabs: [Text(widget.tab1), Text(widget.tab2)],
            labelStyle: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.w600, height: 1),
            labelColor: Colors.grey.shade800,
            isScrollable: true,
          ),
        ),
        Container(
            margin: const EdgeInsets.only(bottom: 25),
            padding: const EdgeInsets.symmetric(horizontal: 18),
            height: 750,
            width: double.infinity,
            child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                children: [
                  exchange(),
                  collectTab(),
                ]))
      ],
    );
  }

  collectTab() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            horizontallyLongItemContainer(
              titleColor: textColor,
              containerColors: [umniahColor, Colors.white],
              bottom: -35,
              left: 60,
              imagePath: "assets/images/giftBox.png",
              theText: "المكافأة اليومية",
              height: 90,
            ),
            Positioned(top: 5, left: 10, child: uchips("+5", false))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    LongItemsContainer(
                        imageHeight: 150,
                        left: -30,
                        top: 30,
                        textColor: textColor,
                        colors: [Colors.blue.shade100, Colors.lightBlue],
                        theText: "العب و اجمع",
                        imagePath: "assets/images/pacMan.png"),
                    Positioned(top: 5, right: 10, child: uchips("+50", false)),
                  ],
                ),
                const SizedBox(
                  height: 8.7,
                ),
                Stack(
                  children: [
                    ItemsContainer(
                      shortHeight: false,
                      iconData: Icons.card_giftcard,
                      theText: "تفاعل",
                    ),
                    Positioned(top: 5, right: 10, child: uchips("+10", true)),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Stack(
                  children: [
                    ItemsContainer(
                        shortHeight: true,
                        iconData: Icons.airplane_ticket,
                        theText: "ادع صديق"),
                    Positioned(top: 5, right: 10, child: uchips("+500", false)),
                  ],
                ),
                const SizedBox(
                  height: 8.7,
                ),
                Stack(
                  children: [
                    LongItemsContainer(
                      imageHeight: 150,
                      top: 50,
                      left: -40,
                      textColor: textColor,
                      colors: [darkumniahColor, umniahColor],
                      imagePath: "assets/images/earth.png",
                      theText: "كن\nصديق للبيئة",
                    ),
                    Positioned(top: 5, right: 10, child: uchips("+100", true)),
                  ],
                ),
                const SizedBox(
                  height: 8.7,
                ),
                StepsContainer()
              ],
            )
          ],
        )
      ],
    );
  }

  exchange() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                LongItemsContainer(
                    imageHeight: 150,
                    left: -30,
                    top: 30,
                    textColor: textColor,
                    colors: [darkumniahColor, umniahColor],
                    theText: "خدمات\nامنية",
                    imagePath: "assets/images/sandClock.png"),
                const SizedBox(
                  height: 8.7,
                ),
                ItemsContainer(
                  shortHeight: false,
                  iconData: Icons.tablet_android,
                  theText: "خدمات",
                  containerColor: containerColor,
                  thistextColor: Colors.white,
                ),
                const SizedBox(
                  height: 8.7,
                ),
                LongItemsContainer(
                  imageHeight: 100,
                  top: 50,
                  left: 20,
                  textColor: textColor,
                  colors: [Colors.blue.shade100, Colors.lightBlue],
                  imagePath: "assets/images/gamePad.png",
                  theText: "ترفيه",
                )
              ],
            ),
            Column(
              children: [
                ItemsContainer(
                    shortHeight: true,
                    iconData: Icons.person,
                    theText: "ازياء"),
                const SizedBox(
                  height: 8.7,
                ),
                LongItemsContainer(
                  imageHeight: 100,
                  top: 50,
                  left: 20,
                  textColor: textColor,
                  colors: [Colors.blue.shade100, Colors.lightBlue],
                  imagePath: "assets/images/hart.png",
                  theText: "كن\nصديق للبيئة",
                ),
                const SizedBox(
                  height: 8.7,
                ),
                ItemsContainer(
                  shortHeight: false,
                  iconData: Icons.discount_outlined,
                  theText: "الخصومات",
                  containerColor: containerColor,
                  thistextColor: Colors.white,
                ),
                const SizedBox(
                  height: 8.7,
                ),
                ItemsContainer(
                    shortHeight: true,
                    iconData: Icons.food_bank_outlined,
                    theText: "طعام و\nشراب")
              ],
            )
          ],
        )
      ],
    );
  }
}
