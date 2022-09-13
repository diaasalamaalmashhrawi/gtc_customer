import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/constants/images_app.dart';
import '../../core/constants/sizes_app.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          PositionedDirectional(
            top: -40,
            end: -40,
            child: Image.asset(ImagesApp.pizzaPath),
          ),
          PositionedDirectional(
            bottom: 0,
            start: 0,
            child: Image.asset(ImagesApp.burgerPath),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(ImagesApp.logoPath),
              SizedBox(
                height: SizesApp.r38,
              ),
              Image.asset(ImagesApp.vegetablesPath)
            ],
          ),
        ],
      ),
    );
  }
}
