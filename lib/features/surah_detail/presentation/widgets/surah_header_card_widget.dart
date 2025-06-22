import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SurahHeaderCardWidget extends StatelessWidget {
  final String surahName;
  final String surahNameArabic;
  final int totalVerse;
  final String type;

  const SurahHeaderCardWidget({
    super.key,
    required this.surahName,
    required this.surahNameArabic,
    required this.totalVerse,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Color(0xFF9055FF),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade200.withOpacity(0.5),
            blurRadius: 10.r,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              right: -50.r,
              bottom: -100.r,
              child: Opacity(
                opacity: 0.2,
                child: SvgPicture.asset(
                  'lib/assets/images/logo_svg.svg',
                  height: 180.h,
                  width: 324.w,
                  placeholderBuilder: (BuildContext context) =>
                      const CircularProgressIndicator(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    surahName,
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    surahNameArabic,
                    style: GoogleFonts.poppins(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 0.5.w,
                    indent: 40.w,
                    endIndent: 40.w,
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    '${totalVerse} Ayat • ${type}',
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
