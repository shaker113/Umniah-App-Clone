// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class vertecalButton extends StatelessWidget {
  final String thetext;
  final Color thetextColor;
  final Function() onTap;
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final IconData;
  const vertecalButton({
    super.key,
    // ignore: non_constant_identifier_names
    required this.IconData,
    required this.thetext,
    required this.thetextColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            IconData,
            color: thetextColor,
          ),
          Text(
            thetext,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: thetextColor,
            ),
          )
        ],
      ),
    );
  }
}
