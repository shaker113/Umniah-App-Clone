import 'package:flutter/material.dart';
import 'package:umniah/data/data.dart';

import 'package:umniah/widgets/widgets.dart';

import '../tabs/tabs.dart';

// ignore: camel_case_types

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  int activeTab = 0;

  List<Widget> activeTabWidget = [
    const HomeTab(),
    const ShopTab(),
    const UconTab(),
    const HelpTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: MyAppBar(
        activeTab: activeTab,
      ),
      extendBodyBehindAppBar: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const actionTab(),
      bottomNavigationBar: myBottomAppBar(),
      body: activeTabWidget[activeTab],
    );
  }

  myBottomAppBar() {
    return BottomAppBar(
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                vertecalButton(
                  IconData: Icons.question_answer_outlined,
                  thetext: "مساعدة",
                  thetextColor: activeTab == 3 ? textColor : Colors.grey,
                  onTap: () {
                    setState(() {
                      activeTab = 3;
                    });
                  },
                ),
                activeTab == 3
                    ? CircleAvatar(
                        backgroundColor: umniahColor,
                        radius: 4,
                      )
                    : const SizedBox(
                        height: 4,
                      ),
              ],
            ),
            Column(
              children: [
                vertecalButton(
                  IconData: Icons.money_outlined,
                  thetext: "UCOIN",
                  thetextColor: activeTab == 2 ? textColor : Colors.grey,
                  onTap: () {
                    setState(() {
                      activeTab = 2;
                    });
                  },
                ),
                activeTab == 2
                    ? CircleAvatar(
                        backgroundColor: umniahColor,
                        radius: 4,
                      )
                    : const SizedBox(
                        height: 4,
                      ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
            Column(
              children: [
                vertecalButton(
                  IconData: Icons.shopping_bag_outlined,
                  thetext: "الشراء",
                  thetextColor: activeTab == 1 ? textColor : Colors.grey,
                  onTap: () {
                    setState(() {
                      activeTab = 1;
                    });
                  },
                ),
                activeTab == 1
                    ? CircleAvatar(
                        backgroundColor: umniahColor,
                        radius: 4,
                      )
                    : const SizedBox(
                        height: 4,
                      ),
              ],
            ),
            Column(
              children: [
                vertecalButton(
                  IconData: Icons.home_outlined,
                  thetext: "الرئيسية",
                  thetextColor: activeTab == 0 ? textColor : Colors.grey,
                  onTap: () {
                    setState(() {
                      activeTab = 0;
                    });
                  },
                ),
                activeTab == 0
                    ? CircleAvatar(
                        backgroundColor: umniahColor,
                        radius: 4,
                      )
                    : const SizedBox(
                        height: 4,
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
