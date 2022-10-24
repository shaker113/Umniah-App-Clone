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
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: foreGroundColor,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "UCOIN",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                const UcoinLevelContainer(),
                const SizedBox(
                  height: 10,
                ),
                const UCoinAmontContainer(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "يمكن استبدالها من الشركاء",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: const Icon(
                        Icons.local_fire_department_sharp,
                        color: Colors.white,
                        size: 10,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          UcoinTabBar(tab1: "استبدل", tab2: "اجمع")
        ],
      ),
    );
  }
}
