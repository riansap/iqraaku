import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqraaku/core/widgets/custom_button.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardingController>();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                Spacer(flex: 1),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Iqraaku',
                      style: GoogleFonts.philosopher(
                        fontSize: 38.sp,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'Learn Quran and\nRecite once everyday',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 18.sp,
                        color: const Color(0xFF8789A3),
                      ),
                    ),
                    SizedBox(height: 24.h),
                  ],
                ),

                // stack untuk gambar dan tombol get started
                SizedBox(
                  height: 450.h,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'lib/assets/images/onboarding_image.png',
                        width: 314.w,
                        height: 450.h,
                        fit: BoxFit.contain,
                      ),
                      // tombol
                      Positioned(
                        bottom: -30.h,
                        child: CustomButton(
                          onPressed: () => {
                            controller.goToHome(),
                          },
                          borderRadius: BorderRadius.circular(30.r),
                          width: 185.w,
                          height: 60.h,
                          backgroundColor: const Color(0xFF9055FF),
                          child: Text(
                            'Get Started',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
