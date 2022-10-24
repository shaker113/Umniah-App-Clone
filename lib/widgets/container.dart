import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:umniah/screens/uconInfo.dart';
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
          SizedBox(
            height: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: usedData / originalData,
                color: umniahColor,
                backgroundColor: const Color.fromARGB(255, 112, 118, 84),
              ),
            ),
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
          Stack(children: [
            Container(
              height: 40,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.only(right: 15),
                alignment: Alignment.topRight,
                width: 135,
                height: 30,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(230, 182, 186, 112),
                    borderRadius: BorderRadius.circular(22)),
                child: const Text(
                  "ذهبي",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Container(
              height: 40,
            ),
            const Positioned(
              bottom: 0,
              left: 10,
              child: Image(
                image: AssetImage("assets/images/gold2.png"),
                height: 40,
              ),
            ),
          ]),
          Container(
            padding: const EdgeInsets.all(10),
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
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4122",
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
      required this.top,
      required this.left,
      required this.theText,
      required this.imagePath,
      required this.colors,
      required this.textColor,
      required this.imageHeight});
  String theText;
  String imagePath;
  List<Color> colors;
  Color textColor;
  double top, left, imageHeight;

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
        top: top,
        left: left,
        child: Image(
          image: AssetImage(
            imagePath,
          ),
          fit: BoxFit.fitWidth,
          height: imageHeight,
        ),
      ),
    ]);
  }
}

class horizontallyLongItemContainer extends StatelessWidget {
  horizontallyLongItemContainer(
      {super.key,
      required this.height,
      required this.theText,
      required this.imagePath,
      required this.bottom,
      required this.left,
      required this.containerColors,
      required this.titleColor});
  String theText;
  String imagePath;
  double height;
  double left;
  double bottom;
  List<Color> containerColors;
  Color titleColor;
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
            gradient: RadialGradient(
                radius: 1.3,
                colors: containerColors,
                center: Alignment.topCenter),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            theText,
            textAlign: TextAlign.right,
            style: TextStyle(
                color: titleColor, fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        Positioned(
          left: left,
          bottom: bottom,
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

class UcoinLevelContainer extends StatelessWidget {
  const UcoinLevelContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.passthrough, children: [
      Container(
        width: double.infinity,
        height: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: containerColor),
        padding: const EdgeInsets.all(15),
      ),
      Positioned(
          right: 15,
          top: 20,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: const [
              CircleAvatar(
                radius: 25,
                backgroundColor: Color.fromARGB(255, 109, 118, 124),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
              ),
              Positioned(
                left: 4,
                child: Image(
                  image: AssetImage("assets/images/gold1.png"),
                  height: 53,
                ),
              ),
            ],
          )),
      const Positioned(
          right: 85,
          bottom: 50,
          child: Text(
            "ذهبي",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700),
          )),
      Positioned(
          left: 30,
          bottom: 15,
          child: Text(
            "انت في اعلى مستوى",
            style: TextStyle(color: umniahColor, fontWeight: FontWeight.w600),
          )),
      Positioned(
          left: 30,
          bottom: 40,
          child: SizedBox(
            width: 260,
            height: 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation(umniahColor),
                value: 1,
                color: umniahColor,
                backgroundColor: const Color.fromARGB(255, 112, 118, 84),
              ),
            ),
          )),
      Positioned(
        child: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const UcoinInfo();
              },
            ));
          },
          icon: const Icon(
            Icons.arrow_upward,
            color: Colors.white,
          ),
        ),
      ),
    ]);
  }
}

class UCoinAmontContainer extends StatelessWidget {
  const UCoinAmontContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: foreGroundColor),
          padding: const EdgeInsets.all(15),
        ),
        Positioned(
          right: 0,
          child: ClipPath(
            clipper: CustomClipPath2(),
            child: Container(
              width: 240,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  color: containerColor),
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Text(
                            "U",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ))),
                  const Text(
                    "5,238",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                  Text(
                    "اجمالي الرصيد",
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.9),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          child: ClipPath(
            clipper: CustomClipPath1(),
            child: Container(
              width: 175,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12)),
                  color: containerColor),
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "مع شركائنا",
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.9),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 138, 143, 87),
                          ),
                        ),
                        child: Icon(
                          Icons.local_fire_department_sharp,
                          color: umniahColor,
                          size: 13,
                        ),
                      ),
                      const Text(
                        "1,200",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomClipPath1 extends CustomClipper<Path> {
  @override
  Path getClip(size) {
    Path path = Path();
    path.moveTo(size.width, size.height);
    path.lineTo(size.width * 0.72, size.height * 0);
    path.lineTo(size.width * 0, size.height * 0);
    path.lineTo(size.width * 0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomClipPath2 extends CustomClipper<Path> {
  @override
  Path getClip(size) {
    Path path = Path();
    path.moveTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0);
    path.lineTo(size.width * 0, size.height * 0);
    path.lineTo(size.width * 0.2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class UcoinLevelPageContaienr extends StatelessWidget {
  String imagepath;
  String title;
  String coins;
  String description;

  UcoinLevelPageContaienr(
      {super.key,
      required this.coins,
      required this.description,
      required this.imagepath,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 180,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(7)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
            ),
            Chip(
              backgroundColor: darkumniahColor,
              label: FittedBox(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: textColor,
                      radius: 7,
                      child: const Text(
                        "u",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            height: 1,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      coins,
                      style: TextStyle(color: textColor),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              description,
              textAlign: TextAlign.end,
              style: TextStyle(color: Colors.grey.shade700, fontSize: 14),
            )
          ],
        ),
      ),
      Positioned(
          top: 5,
          left: 25,
          child: Image(
            image: AssetImage(imagepath),
            height: 50,
          ))
    ]);
  }
}

Widget uchips(String theText, bool wantIcon) {
  return FittedBox(
    child: Chip(
      backgroundColor: transparentumniahColor,
      label: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 7,
            backgroundColor: textColor,
            child: wantIcon
                ? const Icon(
                    Icons.local_fire_department_sharp,
                    color: Colors.white,
                    size: 13,
                  )
                : const Text(
                    "u",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  ),
          ),
          const SizedBox(
            width: 3,
          ),
          Text(
            theText,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget StepsContainer() {
  return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      height: 190,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.all(2.5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: [umniahColor, containerColor],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft),
                      backgroundBlendMode: BlendMode.overlay),
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: containerColor),
                    child: const Icon(
                      Icons.directions_walk,
                      size: 18,
                      color: Colors.white,
                    ),
                  )),
              uchips("+50", true)
            ],
          ),
          RichText(
            textDirection: TextDirection.rtl,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "10000/",
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 15,
                  ),
                ),
                const TextSpan(
                  text: "4122",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: "خطوة",
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "الخطوات",
            textAlign: TextAlign.right,
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
          )
        ],
      ));
}
