import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/widgets.dart';

class UconTab extends StatefulWidget {
  const UconTab({super.key});

  @override
  State<UconTab> createState() => _UconTabState();
}

class _UconTabState extends State<UconTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: ListView(children: [
        Container(
          height: 500,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: foreGroundColor,
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "UCOIN",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              UcoinLevelContainer(),
              SizedBox(
                height: 10,
              ),
              UCoinAmontContainer(),
            ],
          ),
        )
      ]),
    );
  }
}
