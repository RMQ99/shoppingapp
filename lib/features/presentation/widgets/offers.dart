import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'image_card.dart';

class Offers extends StatefulWidget {

   const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
        boxShadow:  [BoxShadow(color: Colors.white.withOpacity(0.3),),],
        borderRadius: BorderRadius.circular(10),
        ),
          child: PageView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            children: [
              imageCard("assets/images/imagetwo.avif"),
              imageCard("assets/images/imageone.avif"),
              imageCard("assets/images/imagethree.avif"),
            ],
          ),
        ),
        Positioned(
          top: 120,
          left: 0,
          right: 0,
          bottom: 0,
          child: Center(
            child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
              effect: const WormEffect(
                dotColor: Colors.grey,
                activeDotColor: Colors.black,
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
