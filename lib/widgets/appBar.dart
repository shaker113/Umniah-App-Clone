import 'package:flutter/material.dart';

import '../data/data.dart';
import 'widgets.dart';

class MyAppBar extends StatefulWidget with PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: foreGroundColor,
      centerTitle: true,
      leading:
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
      actions: const [
        Image(
          image: AssetImage(
            "assets/images/logo.png",
          ),
          width: 30,
        )
      ],
      title: GestureDetector(
        onTap: () {
          showGeneralDialog(
            context: context,
            barrierLabel: "Label",
            barrierDismissible: true,
            barrierColor: Colors.black.withOpacity(0.5),
            pageBuilder: (context, animation, secondaryAnimation) => Scaffold(
              appBar: myAppBar2(),
              backgroundColor: Colors.black54,
              body: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                alignment: Alignment.topCenter,
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  color: foreGroundColor,
                ),
                child: SafeArea(
                  child: Column(
                    children: [
                      WelcomeRow(ontap: () {}, theText: "\nالاشتراكات المضافة"),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          AddContaner(),
                          SizedBox(
                            width: 20,
                          ),
                          MobileNumberContainer(),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          vertecalButton(
                            IconData: Icons.arrow_upward,
                            thetext: "أخفاء",
                            thetextColor: Colors.white,
                            onTap: () {
                              Navigator.pop(context, null);
                            },
                          ),
                          const SizedBox(
                            width: 55,
                          ),
                          CustomButton(
                              buttonWidth: 120,
                              anotherTextColor: Colors.white,
                              buttonColor: foreGroundColor,
                              iconColor: Colors.grey.shade400,
                              textColor: Colors.white,
                              onTap: () {},
                              wantAnotherText: false,
                              theAnotherText: "",
                              theIcon: Icons.settings,
                              theText: "الاعدادات",
                              wantBorder: true),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        child: Container(
          width: 180,
          height: 35,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 84, 89, 95),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.arrow_downward),
              Text(
                "962 787 016 214",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }

  myAppBar2() {
    return AppBar(
      elevation: 0,
      backgroundColor: foreGroundColor,
      centerTitle: true,
      leading:
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
      actions: const [
        Image(
          image: AssetImage(
            "assets/images/logo.png",
          ),
          width: 30,
        )
      ],
    );
  }
}
