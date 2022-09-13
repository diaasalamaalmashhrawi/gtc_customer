import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/images_app.dart';
import 'package:gtc_customer/core/constants/sizes_app.dart';
import 'package:gtc_customer/core/constants/styles_app.dart';

class SuccessfullyAdded extends StatelessWidget {
  const SuccessfullyAdded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: SizesApp.h162,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              gradient: LinearGradient(
                colors: [
                  ColorsApp.appbar1,
                  ColorsApp.appbar2,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              )),
          child: Padding(
            padding: const EdgeInsets.only(top: 38, bottom: 23),
            child: SvgPicture.asset(
              ImagesApp.appbarLogoPath,
              width: SizesApp.w224,
              height: 101,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 114,
              ),
              child: SvgPicture.asset(ImagesApp.bodyLogoPath),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Successfully added',
                style: StylesApp.text1,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'You can continue your purchase',
                style: TextStyle(
                    color: Color.fromARGB(255, 95, 88, 88), fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
