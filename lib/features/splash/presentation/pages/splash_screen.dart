import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = Get.find<SplashController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              SvgPicture.asset(
                'lib/assets/images/logo_svg.svg',
                height: 150.h,
                width: 150.w,
                placeholderBuilder: (BuildContext context) =>
                    const CircularProgressIndicator(),
              ),
              SizedBox(height: 40.h),
              CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
                strokeWidth: 5.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
