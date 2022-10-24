import 'package:flutter/material.dart';
import 'package:umniah/data/data.dart';
import 'package:umniah/widgets/container.dart';

class UcoinInfo extends StatelessWidget {
  const UcoinInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: textColor,
                  ),
                ),
              ),
              Text(
                "مستويات اليو كوين",
                style: TextStyle(color: textColor, fontSize: 25),
              ),
              const SizedBox(
                height: 30,
              ),
              UcoinLevelPageContaienr(
                coins: levels[0].coins,
                description: levels[0].description,
                imagepath: levels[0].imagePath,
                title: levels[0].title,
              ),
              const SizedBox(
                height: 20,
              ),
              UcoinLevelPageContaienr(
                coins: levels[1].coins,
                description: levels[1].description,
                imagepath: levels[1].imagePath,
                title: levels[1].title,
              ),
              const SizedBox(
                height: 20,
              ),
              UcoinLevelPageContaienr(
                coins: levels[2].coins,
                description: levels[2].description,
                imagepath: levels[2].imagePath,
                title: levels[2].title,
              )
            ],
          ),
        ),
      ),
    );
  }
}
