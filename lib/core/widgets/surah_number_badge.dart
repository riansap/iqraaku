import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iqraaku/core/utils/formatter.dart';

class SurahNumberBadge extends StatelessWidget {
  final int surahNumber;

  const SurahNumberBadge({
    Key? key,
    required this.surahNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: 44.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: Theme.of(context).colorScheme.onSurface,
            width: 1.w,
          ),
        ),
        child: Center(
          child: Text(
            ArabicUtils.convertToArabicNumbers(surahNumber.toString()),
            style: GoogleFonts.amiri(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
    );
  }
}
