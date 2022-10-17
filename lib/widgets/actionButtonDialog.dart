import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../data/data.dart';
import 'widgets.dart';

class actionTab extends StatefulWidget {
  const actionTab({super.key});

  @override
  State<actionTab> createState() => _actionTabState();
}

class _actionTabState extends State<actionTab> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: foreGroundColor,
      onPressed: () {},
      child: vertecalButton(
        IconData: Icons.star_border_outlined,
        thetext: "خطك",
        thetextColor: Colors.white70,
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: foreGroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
            ),
            builder: (context) {
              return DraggableScrollableSheet(
                expand: false,
                minChildSize: 0.43,
                initialChildSize: 0.46,
                maxChildSize: 0.7,
                builder: (context, scrollController) {
                  return SingleChildScrollView(
                    controller: scrollController,
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Material(
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    buttonWidth: 125,
                                    anotherTextColor: Colors.white,
                                    buttonColor: umniahColor,
                                    iconColor: textColor,
                                    textColor: textColor,
                                    onTap: () {},
                                    wantAnotherText: false,
                                    theAnotherText: "",
                                    theIcon: Icons.tv_sharp,
                                    theText: "بث مبارشر",
                                    wantBorder: false),
                                vertecalButton(
                                  IconData: Icons.arrow_downward,
                                  thetext: "أخفاء",
                                  thetextColor: Colors.white,
                                  onTap: () {
                                    Navigator.pop(context, null);
                                  },
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
                                    theText: "21 °C",
                                    wantBorder: true),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "الاحتصارات",
                              style: TextStyle(
                                  color: Colors.grey.withOpacity(0.9),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                            Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: [
                                SmallContainer(
                                    iconData: Icons.edit_outlined,
                                    theText: "تغيير\nالتعرفة"),
                                SmallContainer(
                                    iconData: Icons.timelapse,
                                    theText: "تجديد\nمبكر"),
                                SmallContainer(
                                    iconData: Icons.shopping_bag_outlined,
                                    theText: "تحولي\nالرصيد"),
                                SmallContainer(
                                    iconData: Icons.credit_card,
                                    theText: "اشحن"),
                                SmallContainer(
                                    iconData: Icons.airplane_ticket_sharp,
                                    theText: "التجول\nالدولي"),
                                SmallContainer(
                                    iconData: Icons.phone,
                                    theText: "معلومات\nالخط\nالاقتطاعات"),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "لمزيد",
                              style: TextStyle(
                                  color: Colors.grey.withOpacity(0.9),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ItemsContainer(
                                    containerColor: containerColor,
                                    thistextColor: Colors.white,
                                    shortHeight: true,
                                    iconData: Icons.auto_awesome_outlined,
                                    theText: "404\nوالحزم"),
                                ItemsContainer(
                                    containerColor: umniahColor,
                                    shortHeight: true,
                                    iconData: Icons.auto_awesome_outlined,
                                    theText: "404\nوالحزم")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
