import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final bool wantBorder;
  double buttonWidth;
  final bool wantAnotherText;
  final IconData theIcon;
  final Color iconColor;
  final Color buttonColor;
  final Color textColor;
  final Color anotherTextColor;
  final String theText;
  final String theAnotherText;
  final Function() onTap;
  CustomButton({
    required this.buttonWidth,
    required this.anotherTextColor,
    required this.buttonColor,
    required this.iconColor,
    required this.textColor,
    required this.onTap,
    required this.wantAnotherText,
    required this.theAnotherText,
    required this.theIcon,
    required this.theText,
    required this.wantBorder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: buttonWidth,
        height: 50,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(25),
            border:
                wantBorder ? Border.all(color: Colors.grey, width: 1.2) : null),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              theIcon,
              color: iconColor,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  theText,
                  style: TextStyle(
                      color: textColor,
                      height: 1.2,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
                wantAnotherText
                    ? Text(
                        theAnotherText,
                        style: TextStyle(
                            color: anotherTextColor,
                            height: 1,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      )
                    : const SizedBox()
              ],
            )
          ],
        ),
      ),
    );
  }
}
