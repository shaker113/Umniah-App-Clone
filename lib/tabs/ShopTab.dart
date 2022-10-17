import 'package:flutter/material.dart';
import 'package:umniah/data/data.dart';
import 'package:umniah/widgets/widgets.dart';

class ShopTab extends StatefulWidget {
  const ShopTab({super.key});

  @override
  State<ShopTab> createState() => _ShopTabState();
}

class _ShopTabState extends State<ShopTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 17, right: 17, left: 17),
            width: double.infinity,
            height: 200,
            color: foreGroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "الشراء",
                  // textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 17,
                ),
                VerticalyLongItemContainer(
                  imagePath: "assets/images/phone.png",
                  theText: "المتجر\nالالكتروني",
                  height: 125,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    LongItemsContainer(
                        textColor: textColor,
                        colors: [
                          const Color.fromARGB(255, 254, 254, 205),
                          umniahColor,
                        ],
                        theText: "خدمات\nاضافية",
                        imagePath: "assets/images/BlueDart.png"),
                    const SizedBox(
                      height: 8.7,
                    ),
                    ItemsContainer(
                      shortHeight: true,
                      iconData: Icons.card_giftcard,
                      theText: "البطاقات\nالالكترونية",
                    )
                  ],
                ),
                Column(
                  children: [
                    ItemsContainer(
                        shortHeight: true,
                        iconData: Icons.airplane_ticket,
                        theText: "التجوال\nالدولي"),
                    const SizedBox(
                      height: 8.7,
                    ),
                    LongItemsContainer(
                      textColor: Colors.white,
                      colors: [Colors.blue.shade100, Colors.lightBlue],
                      imagePath: "assets/images/sandClock.png",
                      theText: "404\nوالحزم",
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
