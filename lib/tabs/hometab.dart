import 'package:flutter/material.dart';
import 'package:umniah/widgets/imageSlider.dart';

import '../data/data.dart';
import '../widgets/widgets.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  bool isPressed = false;
  double containerHeight = 520;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.decelerate,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            alignment: Alignment.topCenter,
            width: double.infinity,
            height: containerHeight,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
              color: foreGroundColor,
            ),
            child: SafeArea(
              child: Column(
                children: [
                  WelcomeRow(ontap: () {}, theText: ",أهلا\nمستخدم امنية"),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BalanceContainer(
                          balance: 1.29,
                          onTap: () {
                            setState(() {
                              isPressed = !isPressed;
                              setState(() {
                                isPressed
                                    ? containerHeight = 750
                                    : containerHeight = 520;
                              });
                            });
                          },
                          balanceType: "رصيد البيانات"),
                      BalanceContainer(
                          onTap: () {
                            isPressed = !isPressed;
                            setState(() {
                              isPressed
                                  ? containerHeight = 750
                                  : containerHeight = 520;
                            });
                          },
                          balance: 1.0,
                          balanceType: "رصيد")
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                          buttonWidth: 100,
                          anotherTextColor: Colors.white,
                          buttonColor: umniahColor,
                          iconColor: foreGroundColor,
                          textColor: foreGroundColor,
                          onTap: () {},
                          wantAnotherText: false,
                          theAnotherText: "",
                          theIcon: Icons.payment,
                          theText: "اشحن",
                          wantBorder: false),
                      CustomButton(
                          buttonWidth: 240,
                          anotherTextColor: umniahColor,
                          buttonColor: foreGroundColor,
                          iconColor: Colors.grey.shade400,
                          textColor: Colors.grey.shade400,
                          onTap: () {},
                          wantAnotherText: true,
                          theAnotherText: "فعال لتارخ 08-11-2022",
                          theIcon: Icons.settings,
                          theText: "5 Smart Line",
                          wantBorder: true)
                    ],
                  ),
                  isPressed
                      ? MyTabbar(tab1: "بيانات", tab2: "رسائل", tab3: "مكالمات")
                      : const SizedBox(
                          height: 25,
                        ),
                  vertecalButton(
                      IconData: isPressed
                          ? Icons.vertical_align_top
                          : Icons.vertical_align_bottom,
                      thetext: isPressed ? "اخفاء الحزم" : "اظهار الحزم",
                      thetextColor: Colors.white,
                      onTap: () {
                        isPressed = !isPressed;
                        setState(() {
                          isPressed
                              ? containerHeight = 750
                              : containerHeight = 520;
                        });
                      })
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(17),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemsContainer(
                          iconData: Icons.shopping_bag_outlined,
                          theText: "404\nوالحزم"),
                      ItemsContainer(
                        iconData: Icons.star_border_outlined,
                        theText: "البطاقة\nالالكترونية",
                      )
                    ]),
                const SizedBox(
                  height: 8.7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      ItemsContainer(
                          iconData: Icons.auto_awesome_outlined,
                          theText: "خدمات\nاضافية"),
                      const SizedBox(
                        height: 8.7,
                      ),
                      ItemsContainer(
                        iconData: Icons.credit_card,
                        theText: "Uwallet",
                      )
                    ]),
                    const UcoinContainer(),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const ImageSlider(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
