import 'dart:ffi';

import 'package:flutter/material.dart';
import '../data/data.dart';

// ignore: camel_case_types
class BalanceContainer extends StatelessWidget {
  final double balance;
  final String balanceType;
  final Function() onTap;
  BalanceContainer({
    super.key,
    required this.onTap,
    required this.balance,
    required this.balanceType,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10),
        height: 165,
        width: 175,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${balance.floor()}.",
                  style: const TextStyle(color: Colors.white, fontSize: 45),
                ),
                Text(
                  ((balance - balance.floor()) * 100).toInt().toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      height: 2.8,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "دينار",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  balanceType,
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ContainerWithProgressBar extends StatelessWidget {
  ContainerWithProgressBar({
    required this.originalData,
    required this.usedData,
    required this.dataType,
    required this.dataTypeUnit,
  });
  double originalData;
  double usedData;
  String dataType;
  String dataTypeUnit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      height: 165,
      width: 175,
      decoration: BoxDecoration(
        color: textBackGroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "${originalData.toInt()}/",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 20,
                    height: 1.0,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                usedData <= 100
                    ? usedData.toString()
                    : usedData.toInt().toString(),
                style: const TextStyle(
                    color: Colors.white, height: 0.9, fontSize: 25),
              )
            ],
          ),
          LinearProgressIndicator(
            value: usedData / originalData,
            color: umniahColor,
            backgroundColor: const Color.fromARGB(255, 112, 118, 84),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                dataTypeUnit,
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 18,
                ),
              ),
              Text(
                dataType,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class AddContaner extends StatelessWidget {
  const AddContaner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 165,
      width: 36,
      decoration: BoxDecoration(
        color: umniahColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Icon(
        Icons.add,
        color: textColor,
      ),
    );
  }
}

class MobileNumberContainer extends StatelessWidget {
  const MobileNumberContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      height: 165,
      width: 175,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.phone,
                color: Colors.grey.shade400,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 1),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: umniahColor),
                child: Text(
                  "الحالي",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "MOBILE",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "962787016214",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemsContainer extends StatelessWidget {
  ItemsContainer({
    super.key,
    required this.iconData,
    required this.theText,
    this.containerColor,
    this.thistextColor,
    this.shortHeight,
  });
  IconData iconData;
  String theText;
  Color? containerColor;
  Color? thistextColor;
  bool? shortHeight;

  @override
  Widget build(BuildContext context) {
    double containerHeight;

    shortHeight == null || shortHeight == false
        ? containerHeight = 165
        : containerHeight = 135;
    containerColor == null
        ? containerColor = Colors.white
        : containerColor = containerColor;
    thistextColor == null
        ? thistextColor = textColor
        : thistextColor = thistextColor;
    return Container(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
        height: containerHeight,
        width: 175,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  iconData,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),
            Text(
              theText,
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: thistextColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
            )
          ],
        ));
  }
}

class UcoinContainer extends StatelessWidget {
  const UcoinContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 175,
      height: 338,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: RadialGradient(
            colors: [const Color.fromARGB(255, 254, 254, 205), umniahColor],
            center: Alignment.centerLeft,
            radius: 1.2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "UCOIN",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            "5,238",
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w500, fontSize: 25),
          ),
          Text(
            "اجمالي الرصيد",
            style: TextStyle(
                color: Colors.grey.withOpacity(0.9),
                fontWeight: FontWeight.w500,
                fontSize: 13),
          ),
          Container(
            padding: const EdgeInsets.only(right: 15),
            alignment: Alignment.topRight,
            width: double.infinity,
            height: 30,
            decoration: BoxDecoration(
                color: const Color.fromARGB(230, 182, 186, 112),
                borderRadius: BorderRadius.circular(22)),
            child: const Text(
              "ذهبي",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 75,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(7)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "خطوة",
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.9),
                      ),
                    ),
                    Text(
                      "2122",
                      style: TextStyle(
                        color: textColor,
                      ),
                    ),
                    Icon(
                      Icons.directions_walk,
                      color: textColor,
                    )
                  ],
                ),
                Text(
                  "امشي&واجمع",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.withOpacity(0.9),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LongItemsContainer extends StatelessWidget {
  LongItemsContainer(
      {super.key,
      required this.theText,
      required this.imagePath,
      required this.colors,
      required this.textColor});
  String theText;
  String imagePath;
  List<Color> colors;
  Color textColor;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.all(20),
        width: 175,
        height: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: RadialGradient(
              colors: colors, center: Alignment.centerLeft, radius: 1.2),
        ),
        child: Text(
          theText,
          textAlign: TextAlign.right,
          style: TextStyle(
              color: textColor, fontSize: 22, fontWeight: FontWeight.w600),
        ),
      ),
      Positioned(
        top: 20,
        child: Image(
          image: AssetImage(
            imagePath,
          ),
          fit: BoxFit.fitWidth,
          height: 150,
        ),
      ),
    ]);
  }
}

class VerticalyLongItemContainer extends StatelessWidget {
  VerticalyLongItemContainer(
      {super.key,
      required this.height,
      required this.theText,
      required this.imagePath});
  String theText;
  String imagePath;
  double height;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.bottomRight,
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
            color: textBackGroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            theText,
            textAlign: TextAlign.right,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        Positioned(
          left: 15,
          bottom: 0,
          child: Image(
            image: AssetImage(imagePath),
            height: 115,
            fit: BoxFit.fitHeight,
          ),
        )
      ],
    );
  }
}

class SmallContainer extends StatelessWidget {
  IconData iconData;
  String theText;
  SmallContainer({super.key, required this.iconData, required this.theText});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
        height: 112,
        width: 112,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  iconData,
                  color: Colors.grey,
                  size: 25,
                ),
              ],
            ),
            Text(
              theText,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  height: 1.1,
                  fontWeight: FontWeight.w500),
            )
          ],
        ));
  }
}
