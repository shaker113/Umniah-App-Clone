import 'package:flutter/material.dart';

import '../data/data.dart';

class WelcomeRow extends StatelessWidget {
  WelcomeRow({super.key, required this.theText, required this.ontap});
  String theText;
  Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: backGroundColor,
            child: const Icon(
              Icons.person,
              color: Colors.grey,
              size: 30,
            ),
          ),
          Text(
            theText,
            maxLines: 2,
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 27,
            ),
          ),
        ],
      ),
    );
  }
}
