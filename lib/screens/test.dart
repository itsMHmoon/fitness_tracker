import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../widgets/app_bar.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TestPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TestPage> {
  int _currentIndex = 0; // Tracks the active image in the slider
  final List<String> _imagePaths = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Carousel Slider
          CarouselSlider(
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: _imagePaths.map((path) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  path,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            }).toList(),
          ),

          // Smooth Page Indicator
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedSmoothIndicator(
              activeIndex: _currentIndex,
              count: _imagePaths.length,
              effect: WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: Colors.redAccent,
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Swipe Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
            child: SwipeButton.expand(
              duration: const Duration(milliseconds: 200),
              thumb: const Icon(
                Symbols.arrow_circle_right_rounded,
                color: Colors.white,
              ),
              activeThumbColor: Colors.red,
              activeTrackColor: Colors.grey.shade300,
              onSwipe: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Swiped"),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              child: const Text(
                "Swipe to Continue",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
