// ignore: file_names
import 'package:flutter/material.dart';

import 'widgets.dart';

// ignore: must_be_immutable
class MyTabbar extends StatefulWidget {
  MyTabbar(
      {super.key, required this.tab1, required this.tab2, required this.tab3});
  String tab1;
  String tab2;
  String tab3;

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this, initialIndex: 2);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 25),
          alignment: Alignment.topRight,
          height: 30,
          child: TabBar(
            indicatorColor: Colors.transparent,
            indicator: null,
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: const TextStyle(fontSize: 20),
            controller: _controller,
            tabs: [Text(widget.tab3), Text(widget.tab2), Text(widget.tab1)],
            labelStyle: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.w700, height: 0.9),
            labelColor: Colors.white,
            isScrollable: true,
          ),
        ),
        Container(
            margin: const EdgeInsets.only(bottom: 25),
            height: 180,
            width: double.infinity,
            child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                children: [callsRow(), massegesRow(), datarow()]))
      ],
    );
  }

  callsRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const AddContaner(),
          const SizedBox(
            width: 10,
          ),
          ContainerWithProgressBar(
              dataTypeUnit: "",
              originalData: 1000,
              usedData: 498,
              dataType: "شبكات اخرى"),
          const SizedBox(
            width: 10,
          ),
          ContainerWithProgressBar(
              dataTypeUnit: "",
              originalData: 30000,
              usedData: 10000,
              dataType: "دقائق امنية"),
        ],
      ),
    );
  }

  massegesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const AddContaner(),
        const SizedBox(
          width: 10,
        ),
        ContainerWithProgressBar(
            dataTypeUnit: "",
            originalData: 1000,
            usedData: 278,
            dataType: "رسائل محلية"),
      ],
    );
  }

  datarow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const AddContaner(),
          const SizedBox(
            width: 10,
          ),
          ContainerWithProgressBar(
              dataTypeUnit: "GB/",
              originalData: 4,
              usedData: 0.9,
              dataType: "حزمة فيسبوك"),
          const SizedBox(
            width: 10,
          ),
          ContainerWithProgressBar(
              dataTypeUnit: "GB/",
              originalData: 16,
              usedData: 14.3,
              dataType: "حزمة بيانات"),
        ],
      ),
    );
  }
}
