import 'package:flutter/material.dart';

import '../data/data.dart';
import 'widgets.dart';

class MyAppBar extends StatefulWidget with PreferredSizeWidget {
  int activeTab;
  MyAppBar({super.key, required this.activeTab});

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
      leadingWidth: widget.activeTab == 2 ? 95 : 40,
      leading: widget.activeTab == 2
          ? appBarButton()
          : IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: widget.activeTab == 2
              ? const Icon(Icons.info_outline_rounded)
              : const Image(
                  image: AssetImage(
                    "assets/images/logo.png",
                  ),
                  width: 30,
                ),
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

  appBarButton() {
    return Container(
      width: 20,
      margin: EdgeInsets.only(top: 13, bottom: 13, left: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
          backgroundColor: umniahColor,
          fixedSize: Size(20, 20),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "السجل",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: textColor,
                fontSize: 13,
              ),
            ),
            Icon(
              Icons.timelapse_outlined,
              color: textColor,
              size: 14,
            )
          ],
        ),
      ),
    );
  }
}
