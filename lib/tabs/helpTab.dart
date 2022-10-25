import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/widgets.dart';

class HelpTab extends StatelessWidget {
  const HelpTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 17, right: 17, left: 17),
            width: double.infinity,
            height: 360,
            decoration: BoxDecoration(
              color: foreGroundColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "المساعدة",
                  // textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: ItemsContainer(
                        containerColor: containerColor,
                        thistextColor: Colors.white,
                        shortHeight: true,
                        iconData: Icons.airplane_ticket_outlined,
                        theText: "ارسال\nاقتراح ",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 5,
                      child: ItemsContainer(
                        shortHeight: true,
                        thistextColor: Colors.white,
                        containerColor: containerColor,
                        iconData: Icons.mail_outlined,
                        theText: "المحادثة\nالفورية",
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: ItemsContainer(
                        containerColor: containerColor,
                        thistextColor: Colors.white,
                        shortHeight: true,
                        iconData: Icons.location_on_outlined,
                        theText: "المعارض\nوالخدمات الذاتية",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 4,
                      child: ItemsContainer(
                        shortHeight: true,
                        thistextColor: Colors.white,
                        containerColor: containerColor,
                        iconData: Icons.apps_outlined,
                        theText: "التطبيقات\nو مواقع التواصل",
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 17),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_downward_outlined,
                      color: containerColor,
                    ),
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: VerticalDivider(
                        thickness: 1.5,
                        width: 10,
                        color: foreGroundColor,
                      ),
                    )
                  ],
                ),
                Text(
                  "بما يمكننا مساعدتك؟",
                  style: TextStyle(
                      fontSize: 17,
                      color: containerColor,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
