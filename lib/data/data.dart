import 'package:flutter/material.dart';

Color foreGroundColor = const Color.fromARGB(255, 70, 75, 81);
Color backGroundColor = const Color.fromARGB(255, 221, 221, 221);
Color umniahColor = const Color.fromARGB(255, 224, 230, 34);
Color textColor = const Color.fromARGB(255, 49, 71, 85);
Color textBackGroundColor = const Color.fromARGB(255, 84, 89, 95);
Color containerColor = const Color.fromARGB(255, 99, 104, 108);
Color darkumniahColor = const Color.fromARGB(255, 248, 249, 205);
Color transparentumniahColor = const Color.fromARGB(100, 224, 230, 34);

class UCoinLevel {
  String title;
  String description;
  String imagePath;
  String coins;

  UCoinLevel(
      {required this.description,
      required this.imagePath,
      required this.title,
      required this.coins});
}

final List<UCoinLevel> levels = [
  UCoinLevel(
      description:
          "يمكن للمستوى البرونزي استبدال النقاط من الغديد من خدمات امنية كالحزم, والشحن,دفع الفواتير و العيديد من الخدمات الاخرى",
      imagePath: "assets/images/bronze2.png",
      title: "برونز",
      coins: "اقل من 10,000"),
  UCoinLevel(
      description:
          "يمكن للمستوى الفضي استبدال النقاط بخدمات امنية وخدمات العديد من الشركاء",
      imagePath: "assets/images/silver2.png",
      title: "فضي",
      coins: "24,999-10,000"),
  UCoinLevel(
      description:
          "المرحلة الذهبية تتيح لك استبدال نقاطك بخدمات امنية او خدمات الشركاء و خصوماتهم الحصرية",
      imagePath: "assets/images/gold2.png",
      title: "ذهبي",
      coins: "اكثر من 25,000")
];
