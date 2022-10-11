import 'dart:async';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:umniah/data/data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final controller = CarouselController();
  int activeIndex = 0;
  final List<String> imagesUrl = [
    "https://www.umniah.com/media/gnxdaphk/website_desktop-view.jpg",
    "https://www.umniah.com/media/tyxblnvs/website-banner-100.jpg",
    "https://www.umniah.com/media/e54pzdjk/website-desktop-view.png",
    "https://www.umniah.com/media/bhfhd10f/ugaming-cards-no-kiosk-website-desktop.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Center(
          child: CarouselSlider.builder(
            carouselController: controller,
            itemCount: imagesUrl.length,
            itemBuilder: (context, index, realIndex) {
              return Container(
                decoration: BoxDecoration(
                  color: backGroundColor,
                  borderRadius: BorderRadius.circular(7),
                  image: DecorationImage(
                    image: NetworkImage(imagesUrl[index]),
                    fit: BoxFit.cover,
                  ),
                ),

                // margin: EdgeInsets.symmetric(horizontal: 5),
              );
            },
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
              viewportFraction: 1,
              height: 160,
              autoPlay: true,
            ),
          ),
        ),
        AnimatedSmoothIndicator(
            onDotClicked: (index) => controller.animateToPage(index),
            effect: const ExpandingDotsEffect(
                activeDotColor: Colors.black, dotWidth: 30, dotHeight: 7),
            activeIndex: activeIndex,
            count: imagesUrl.length),
      ],
    );
  }
}
//   Widget buildImage(String imagesUrl, int index) {
//     return 
// }
